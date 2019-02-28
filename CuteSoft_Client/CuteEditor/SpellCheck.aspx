<%@ Page Language="C#" ClassName="PopUpSpell" ValidateRequest="False" %>
<%@ import Namespace="System.IO" %>
<%@ import Namespace="NetSpell.SpellChecker" %>
<%@ import Namespace="NetSpell.SpellChecker.Dictionary" %>
<script runat="server">

    NetSpell.SpellChecker.Spelling SpellChecker;
    NetSpell.SpellChecker.Dictionary.WordDictionary WordDictionary;
    
    string culture = "en-US";
   
    void Page_Load(object sender, EventArgs e)
    {
         // if modal frame, quit
         if (this.ModalFrame.Visible)
             return;

         // add client side events
         this.Suggestions.Attributes.Add("onChange", "javascript: changeWord(this);");
         this.SpellingBody.Attributes.Add("onLoad", "javascript: initialize();");

         // load spell checker settings
         this.LoadValues();
         switch (this.SpellMode.Value)
         {
             case "start" :
                 this.EnableButtons();
                 this.SpellChecker.SpellCheck();
                 break;

             case "suggest" :
                 this.EnableButtons();
                 break;

             case "load" :
             case "end" :
             default :
                 this.DisableButtons();
                 break;
         }
         
    }

    void Page_Init(object sender, EventArgs e)
    {
         // show iframe for modal support
         if (Request.Params["Modal"] != null)
         {
             this.ModalFrame.Visible = true;
             this.SuggestionForm.Visible = false;
             return;
         }         
         
         if (Request.Params["Culture"] != null)
		 {
			culture = Request.Params["Culture"];
		 }

         // get dictionary from cache
         this.WordDictionary = (WordDictionary)HttpContext.Current.Cache["WordDictionary-" + culture];
         if (this.WordDictionary == null)
         {
             // if not in cache, create new
             this.WordDictionary = new NetSpell.SpellChecker.Dictionary.WordDictionary();
             this.WordDictionary.EnableUserFile = false;

             //getting folder for dictionaries
             string folderName="";
             
             if(ConfigurationSettings.AppSettings["DictionaryFolder"]== null)
				folderName = this.MapPath("~/bin");
			 else
			 {
				folderName = ConfigurationSettings.AppSettings["DictionaryFolder"];
				folderName = this.MapPath(Path.Combine(Request.ApplicationPath, folderName));
			 }
             
             this.WordDictionary.DictionaryFolder = folderName;
             
             // check if a dictionary exists for the culture, if so load it
             string cultureDictionary = String.Concat (culture, ".dic");
			 if (File.Exists (folderName +"\\"+ cultureDictionary))
			 {    
				this.WordDictionary.DictionaryFile = cultureDictionary;
			 }
			 else
			 {
			 	this.WordDictionary.DictionaryFile = "en-US.dic";
			 }
				
             //load and initialize the dictionary
             this.WordDictionary.Initialize();
             
             // Store the Dictionary in cache
             HttpContext.Current.Cache.Insert("WordDictionary-" + culture, this.WordDictionary, new CacheDependency(Path.Combine(folderName, this.WordDictionary.DictionaryFile)));
         }

         // create spell checker
         this.SpellChecker = new NetSpell.SpellChecker.Spelling();
         this.SpellChecker.ShowDialog = false;
         this.SpellChecker.Dictionary = this.WordDictionary;

         // adding events
         this.SpellChecker.MisspelledWord += new NetSpell.SpellChecker.Spelling.MisspelledWordEventHandler(this.SpellChecker_MisspelledWord);
         this.SpellChecker.EndOfText += new NetSpell.SpellChecker.Spelling.EndOfTextEventHandler(this.SpellChecker_EndOfText);
         this.SpellChecker.DoubledWord += new NetSpell.SpellChecker.Spelling.DoubledWordEventHandler(this.SpellChecker_DoubledWord);
    }

    void SpellChecker_DoubledWord(object sender, NetSpell.SpellChecker.SpellingEventArgs e)
    {
         this.SaveValues();
         this.CurrentWord.Text = this.SpellChecker.CurrentWord;
         this.Suggestions.Items.Clear();
         this.ReplacementWord.Text = string.Empty;
         this.SpellMode.Value = "suggest";
         this.StatusText.Text = string.Format("Word: {0} of {1}", this.SpellChecker.WordIndex + 1, this.SpellChecker.WordCount);
    }

    void SpellChecker_EndOfText(object sender, System.EventArgs e)
    {
         this.SaveValues();
         this.SpellMode.Value = "end";
         this.DisableButtons();
         this.StatusText.Text = string.Format("Word: {0} of {1}", this.SpellChecker.WordIndex + 1, this.SpellChecker.WordCount);
    }

    void SpellChecker_MisspelledWord(object sender, NetSpell.SpellChecker.SpellingEventArgs e)
    {
         this.SaveValues();
         this.CurrentWord.Text = this.SpellChecker.CurrentWord;
         this.SpellChecker.Suggest();
         this.Suggestions.DataSource = this.SpellChecker.Suggestions;
         this.Suggestions.DataBind();
         string ua = HttpContext.Current.Request.UserAgent;
		 if(ua==null)ua="";
		 else ua=ua.ToLower();
         bool _isSafari3=false;
         if(ua.IndexOf("safari")!=-1)
		{
			string minorversion = ua.Substring(ua.IndexOf("safari/") + 7, 3);
			if(Convert.ToInt32(minorversion)>=522)
				_isSafari3=true;
		}			
		if(!_isSafari3)
			this.ReplacementWord.Text = string.Empty;
         this.SpellMode.Value = "suggest";
         this.StatusText.Text = string.Format("Word: {0} of {1}", this.SpellChecker.WordIndex + 1, this.SpellChecker.WordCount);
    }

    void EnableButtons()
    {
         this.IgnoreButton.Enabled = true;
         this.IgnoreAllButton.Enabled = true;
         this.AddButton.Enabled = true;
         this.ReplaceButton.Enabled = true;
         this.ReplaceAllButton.Enabled = true;
         this.ReplacementWord.Enabled = true;
         this.Suggestions.Enabled = true;
    }

    void DisableButtons()
    {
         this.IgnoreButton.Enabled = false;
         this.IgnoreAllButton.Enabled = false;
         this.AddButton.Enabled = false;
         this.ReplaceButton.Enabled = false;
         this.ReplaceAllButton.Enabled = false;
         this.ReplacementWord.Enabled = false;
         this.Suggestions.Enabled = false;
    }

    void SaveValues()
    {
         this.CurrentText.Value = this.SpellChecker.Text;
         this.WordIndex.Value = this.SpellChecker.WordIndex.ToString();

         // save ignore words
         string[] ignore = (string[])this.SpellChecker.IgnoreList.ToArray(typeof(string));

         this.IgnoreList.Value = String.Join("|", ignore);

         // save replace words
         ArrayList tempArray = new ArrayList(this.SpellChecker.ReplaceList.Keys);
         string[] replaceKey = (string[])tempArray.ToArray(typeof(string));

         this.ReplaceKeyList.Value = String.Join("|", replaceKey);
         tempArray = new ArrayList(this.SpellChecker.ReplaceList.Values);

         string[] replaceValue = (string[])tempArray.ToArray(typeof(string));

         this.ReplaceValueList.Value = String.Join("|", replaceValue);

         // saving user words
         tempArray = new ArrayList(this.SpellChecker.Dictionary.UserWords.Keys);

         string[] userWords = (string[])tempArray.ToArray(typeof(string));

         Response.Cookies["UserWords"].Value = String.Join("|", userWords);;
         Response.Cookies["UserWords"].Path = "/";
         Response.Cookies["UserWords"].Expires = DateTime.Now.AddMonths(1);
    }

    void LoadValues()
    {
         if (this.CurrentText.Value.Length > 0)
             this.SpellChecker.Text = this.CurrentText.Value;

         if (this.WordIndex.Value.Length > 0)
             this.SpellChecker.WordIndex = int.Parse(this.WordIndex.Value);

         // restore ignore list
         if (this.IgnoreList.Value.Length > 0)
         {
             this.SpellChecker.IgnoreList.Clear();
             this.SpellChecker.IgnoreList.AddRange(this.IgnoreList.Value.Split('|'));
         }

         // restore replace list
         if (this.ReplaceKeyList.Value.Length > 0 && this.ReplaceValueList.Value.Length > 0)
         {
             string[] replaceKeys = this.ReplaceKeyList.Value.Split('|');
             string[] replaceValues = this.ReplaceValueList.Value.Split('|');

             this.SpellChecker.ReplaceList.Clear();
             if (replaceKeys.Length == replaceValues.Length)
             {
                 for (int i = 0; i < replaceKeys.Length; i++)
                 {
                     if (replaceKeys[i].Length > 0)
                         this.SpellChecker.ReplaceList.Add(replaceKeys[i], replaceValues[i]);
                 }
             }
         }

         // restore user words
         this.SpellChecker.Dictionary.UserWords.Clear();
         if (Request.Cookies["UserWords"] != null)
         {
             string[] userWords = Request.Cookies["UserWords"].Value.Split('|');

             for (int i = 0; i < userWords.Length; i++)
             {
                 if (userWords[i].Length > 0)
                     this.SpellChecker.Dictionary.UserWords.Add(userWords[i], userWords[i]);
             }
         }
    }

    void IgnoreButton_Click(object sender, EventArgs e)
    {
         this.SpellChecker.IgnoreWord();
         this.SpellChecker.SpellCheck();
    }

    void IgnoreAllButton_Click(object sender, EventArgs e)
    {
         this.SpellChecker.IgnoreAllWord();
         this.SpellChecker.SpellCheck();
    }

    void AddButton_Click(object sender, EventArgs e)
    {
		try
		{
			 this.SpellChecker.Dictionary.Add(this.SpellChecker.CurrentWord);
		}
		catch(Exception)
		{
		}
         this.SpellChecker.SpellCheck();
    }

    void ReplaceButton_Click(object sender, EventArgs e)
    {
         this.SpellChecker.ReplaceWord(this.ReplacementWord.Text);
         this.CurrentText.Value = this.SpellChecker.Text;
         this.SpellChecker.SpellCheck();
    }

    void ReplaceAllButton_Click(object sender, EventArgs e)
    {
         this.SpellChecker.ReplaceAllWord(this.ReplacementWord.Text);
         this.CurrentText.Value = this.SpellChecker.Text;
         this.SpellChecker.SpellCheck();
    }

</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server" id="Head1">
    <title>Spell Check	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		</title>
    <link href="Load.ashx?type=style&file=spell.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript">
		var OxOa73b=[];window.focus();
    </script>
    <script language="JavaScript" src="Load.ashx?type=script&file=spell.js" type="text/javascript"></script>
</head>
<body id="SpellingBody" style="MARGIN: 0px" runat="server">
    <form id="SpellingForm" name="SpellingForm" method="post" runat="server">
        <input id="WordIndex" type="hidden" value="0" name="WordIndex" runat="server" />
        <input id="CurrentText" type="hidden" name="CurrentText" runat="server" />
        <input id="IgnoreList" type="hidden" name="IgnoreList" runat="server" />
        <input id="ReplaceKeyList" type="hidden" name="ReplaceKeyList" runat="server" />
        <input id="ReplaceValueList" type="hidden" name="ReplaceValueList" runat="server" />
        <input id="ElementIndex" type="hidden" value="-1" name="ElementIndex" runat="server" />
        <input id="SpellMode" type="hidden" value="load" name="SpellMode" runat="server" />
        <asp:panel id="ModalFrame" runat="server" visible="False" enableviewstate="False">
            <iframe id="SpellCheckFrame" hidefocus="hidefocus" name="SpellCheckFrame" src="SpellCheck.aspx?Culture=<%=Request.Params["Culture"]%>" frameborder="0" width="400" scrolling="no" height="300" style="width:400;height:300"></iframe>
        </asp:panel>
        <asp:panel id="SuggestionForm" runat="server" visible="true" enableviewstate="False">
            <table cellspacing="0" cellpadding="5" width="100%">
                <tbody>
                    <tr>
                        <td valign="center" align="middle">
                            <table cellspacing="0" cellpadding="2">
                                <tbody>
                                    <tr>
                                        <td style="WIDTH: 250px">
                                            <em>Word Not in Dictionary:</em>
                                        </td>
                                        <td>
                                            <asp:button id="IgnoreButton" onclick="IgnoreButton_Click" runat="server" enableviewstate="False" enabled="False" cssclass="button" text="Ignore"></asp:button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label id="CurrentWord" runat="server" font-bold="True" forecolor="Red"></asp:Label></td>
                                        <td>
                                            <asp:button id="IgnoreAllButton" onclick="IgnoreAllButton_Click" runat="server" enableviewstate="False" enabled="False" cssclass="button" text="Ignore All"></asp:button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <em>Change To:</em>
                                        </td>
                                        <td>
                                            <p>&nbsp;</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:textbox id="ReplacementWord" runat="server" enableviewstate="False" enabled="False" cssclass="suggestion" columns="30" width="230px"></asp:textbox>
                                        </td>
                                        <td>
                                            <asp:button id="AddButton" onclick="AddButton_Click" runat="server" enableviewstate="False" enabled="False" cssclass="button" text="Add"></asp:button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <em>Suggestions:</em>
                                        </td>
                                        <td>
                                            <p>&nbsp;</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td rowspan="5">
                                            <asp:listbox id="Suggestions" runat="server" enableviewstate="False" enabled="False" cssclass="suggestion" width="230px" rows="8"></asp:listbox>
                                        </td>
                                        <td>
                                            <asp:button id="ReplaceButton" onclick="ReplaceButton_Click" runat="server" enableviewstate="False" enabled="False" cssclass="button" text="Replace"></asp:button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:button id="ReplaceAllButton" onclick="ReplaceAllButton_Click" runat="server" enableviewstate="False" enabled="False" cssclass="button" text="Replace All"></asp:button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>&nbsp;</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p>&nbsp;</p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <input class="button" id="btnCancel" onclick="closeWindow()" type="button" value="Cancel" name="btnCancel" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label id="StatusText" runat="Server" forecolor="DimGray" font-size="8pt">Loading
                                            ...</asp:Label></td>
                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                </tbody>
            </table>
        </asp:panel>
    </form>
</body>
</html>







































<script type="text/javascript">
var OxO2f0f=["ua","userAgent","isOpera","opera","isSafari","safari","isGecko","gecko","isWinIE","msie","isMac","Mac","availWidth","dialogWidth","availHeight","dialogHeight"];var _Browser_TypeInfo=null;function Browser__InitType(){if(_Browser_TypeInfo!=null){return ;} ;var Ox4={};Ox4[OxO2f0f[0]]=navigator[OxO2f0f[1]].toLowerCase();Ox4[OxO2f0f[2]]=(Ox4[OxO2f0f[0]].indexOf(OxO2f0f[3])>-1);Ox4[OxO2f0f[4]]=(Ox4[OxO2f0f[0]].indexOf(OxO2f0f[5])>-1);Ox4[OxO2f0f[6]]=(!Ox4[OxO2f0f[2]]&&!Ox4[OxO2f0f[4]]&&Ox4[OxO2f0f[0]].indexOf(OxO2f0f[7])>-1);Ox4[OxO2f0f[8]]=(!Ox4[OxO2f0f[2]]&&Ox4[OxO2f0f[0]].indexOf(OxO2f0f[9])>-1);Ox4[OxO2f0f[10]]=navigator[OxO2f0f[1]].indexOf(OxO2f0f[11])!=-1;_Browser_TypeInfo=Ox4;} ;Browser__InitType();function Browser_IsWinIE(){return _Browser_TypeInfo[OxO2f0f[8]];} ;try{if(Browser_IsWinIE()){top.moveTo((screen[OxO2f0f[12]]-self[OxO2f0f[13]])/2,(screen[OxO2f0f[14]]-self[OxO2f0f[15]])/2);} else {} ;} catch(x){} ;
</script>
