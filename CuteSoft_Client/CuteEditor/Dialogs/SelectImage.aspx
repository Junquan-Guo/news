<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.FileBrowserPage" %>
<%@ Register TagPrefix="CE" Assembly="CuteEditor" Namespace="CuteEditor" %>
<script runat="server">
override protected void OnInit(EventArgs args)
{
	if(Context.Request.QueryString["Dialog"]=="Standard")
	{
	if(Context.Request.QueryString["IsFrame"]==null)
	{
		string FrameSrc="SelectImage.Aspx?IsFrame=1&"+Request.ServerVariables["QUERY_STRING"];
		CuteEditor.CEU.WriteDialogOuterFrame(Context,"[[Browse]]",FrameSrc);
		Context.Response.End();
	}
	}
	base.OnInit(args);
	
	InputFile.ValidateOption.MaxSizeKB=secset.MaxImageSize;
	InputFile.ValidateOption.AllowedFileExtensions=string.Join(",",(string[])secset.ImageFilters.ToArray(typeof(string)));
}
</script>
<%
string QUERY_STRING=Request.ServerVariables["QUERY_STRING"];
%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>[[Browse]]</title>
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)" />
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)" />
		<link href='Load.ashx?type=themecss&file=dialog.css&theme=[[_Theme_]]' type="text/css" rel="stylesheet" />
		<!--[if IE]>
			<link href="Load.ashx?type=style&file=IE.css" type="text/css" rel="stylesheet" />
		<![endif]-->
		<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogHead.js"></script>
		<script type="text/javascript">
		function PostBackAction()
		{
			<%=Page.ClientScript.GetPostBackEventReference(hiddenAction,"")%>
		}
		</script>
		<style type="text/css">
		.row { HEIGHT: 22px }
		.cb { VERTICAL-ALIGN: middle }
		.itemimg { VERTICAL-ALIGN: middle }
		.editimg { VERTICAL-ALIGN: middle }
		.cell1 { VERTICAL-ALIGN: middle }
		.cell2 { VERTICAL-ALIGN: middle }
		.cell3 { PADDING-RIGHT: 4px; VERTICAL-ALIGN: middle; TEXT-ALIGN: right }
		.cb { }
		</style>
	</head>
	<body>
		<form runat="server" enctype="multipart/form-data" id="Form1">
		<div id="container">
			<!-- start hidden -->
			<input type="hidden" runat="server" id="hiddenDirectory" name="hiddenDirectory" />
			<input type="hidden" runat="server" id="hiddenFile" name="hiddenFile" /> 
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" name="hiddenAlert" />
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange" name="hiddenAction" /> 
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData" name="hiddenActionData" />
			<!-- end hidden -->
			<table border="0" cellspacing="2" cellpadding="0" width="100%">
				<tr>
					<td style="white-space:nowrap; width:20" >
						<asp:Image id="Image1" Runat="server" ImageUrl="Load.ashx?type=image&file=openfolder.gif"></asp:Image>
					</td>
					<td class="normal" style="white-space:nowrap;width:200" >
						<asp:Label Runat="server" id="FolderDescription"></asp:Label>
					</td>
					<td style="text-align:center">
<asp:ImageButton id="CreateDir" BorderWidth="1" Runat="server" AlternateText="[[Createdirectory]]" ImageUrl="Load.ashx?type=image&file=newfolder.gif" OnClick="CreateDir_Click" />
<asp:ImageButton id="Copy" BorderWidth="1" Runat="server" AlternateText="[[Copyfiles]]" ImageUrl="Load.ashx?type=image&file=Copy.gif" Visible="true" OnClick="Copy_Click" />
<asp:ImageButton id="Move" BorderWidth="1" Runat="server" AlternateText="[[Movefiles]]" ImageUrl="Load.ashx?type=image&file=move.gif" Visible="true" OnClick="Move_Click" />
<img id="btn_zoom_in" src="Load.ashx?type=image&file=zoom_in.gif" onclick="Zoom_In();" title="[[ZoomIn]]" class="dialogButton"	 /> 
<img id="btn_zoom_out" src="Load.ashx?type=image&file=zoom_out.gif" onclick="Zoom_Out();" title="[[ZoomOut]]" class="dialogButton" /> 
<img id="btn_bestfit" src="Load.ashx?type=image&file=bestfit.gif" onclick="BestFit();" title="[[BestFit]]" class="dialogButton" /> 
<img id="btn_Actualsize" src="Load.ashx?type=image&file=Actualsize.gif" onclick="Actualsize();" title="[[ActualSize]]" class="dialogButton" /> 
<img id="img_AutoThumbnail" src="Load.ashx?type=image&file=resize.gif" onclick="AutoThumbnail();" title="[[AutoThumbnail]]" class="dialogButton" /> 
<% if(secset.AllowModify) {%>
	<img id="img_ImageEditor" class="dialogButton" src="Load.ashx?type=image&file=imageeditor.gif" onclick="ImageEditor();" title="[[ImageEditor]]" />
<%
}
else
{
%>
	<img id="img_ImageEditor" class="CuteEditorButtonDisabled" src="Load.ashx?type=image&file=imageeditor.gif" title="[[ImageEditor]]" />
<%
}
%>
					</td>
				</tr>
			</table>
			
			<table border="0" cellspacing="0" cellpadding="2" width="100%">
				<tr>
					<td valign="top" style="white-space:nowrap; width:260">
						<div style="BORDER: 1.5pt inset;  VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 260; HEIGHT: 250px; Padding:0; BACKGROUND-COLOR: white">
							<asp:Table id="FoldersAndFiles" Runat="server" CellSpacing="1" CellPadding="0" Width="100%" CssClass="sortable">
								<asp:TableRow BackColor="#f0f0f0">
									<asp:TableHeaderCell Width="16px" >
<asp:ImageButton id="Delete" Runat="server" AlternateText="[[Deletefiles]]"	 ImageUrl="Load.ashx?type=image&file=s_cut.gif"	OnClick="Delete_Click" />
									</asp:TableHeaderCell>
									<asp:TableHeaderCell Width="16px" >
<asp:ImageButton id="DoRefresh" Runat="server" AlternateText="[[Refresh]]" ImageUrl="Load.ashx?type=image&file=s_refresh.gif" OnClick="DoRefresh_Click" />
									</asp:TableHeaderCell>
									<asp:TableHeaderCell id="name_Cell" Wrap="True" Width="125px" CssClass="filelistHeadCol" Font-Bold="False">[[Name]]</asp:TableHeaderCell>
									<asp:TableHeaderCell id="size_Cell" Width="62px" CssClass="filelistHeadCol" Wrap="False" Font-Bold="False">[[Size]]</asp:TableHeaderCell>
									<asp:TableHeaderCell id="op_Cell"  Width="16px">&nbsp;</asp:TableHeaderCell>
									<asp:TableHeaderCell id="op_space" Width="1px"></asp:TableHeaderCell>
								</asp:TableRow>
							</asp:Table>
						</div>
					</td>
					<td valign="top"  style="white-space:nowrap; width:320">
						<div style="border:1.5pt inset; Padding:0; vertical-align: top; overflow: auto; WIDTH: 280px; HEIGHT: 250px;  BACKGROUND-COLOR: white;">
							<div id="divpreview" style="BACKGROUND-COLOR: white; height:100%;width:100%">
<img id="img_demo" src="../Load.ashx?type=image&file=1x1.gif" title="" />
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="height:2">
					</td>
				</tr>
			</table>
			
			<table border="0" cellspacing="2" cellpadding="0" width="98%" style="text-align:center">
				<tr>
					<td valign="top">
						<fieldset style="width:98%;">
							<legend>
								[[Insert]]</legend>
							<table border="0" cellpadding="5" cellspacing="0">
								<tr>
									<td>
										<table id="Table8" cellspacing="0" cellpadding="2" border="0" class="normal">
											<tr>
												<td valign="middle">[[Url]]:</td>
												<td>												
<input type="text" id="TargetUrl" style="width:400" name="TargetUrl" runat="server" />												
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset style="width:98%;text-align:left">
							<legend>
								[[Upload]] ([[MaxFileSizeAllowed]]
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageSize * 1024)%>
								)</legend>
							    <table border="0" cellpadding="5" cellspacing="0">
				                    <tr>
									<td valign="top" id="uploader">
										    <CE:Uploader id="InputFile" runat="server"></CE:Uploader>
									    </td>
								    </tr>
								    <tr>
									    <td style="height:5">
									    </td>
								    </tr>
								    <tr>
									    <td>
									        <ul style="margin-top:0; margin-bottom:0;">
							                    <% if(secset.RestrictUploadedImageDimension) {%>
							                    <li>
								                    [[MaxImagedImension]]
								                    <%= secset.MaxImageWidth%>
								                    x
								                    <%= secset.MaxImageHeight%>
								                    [[pixels]].
							                    </li>
							                    <li>
								                    [[AutomaticImageResizeOnOff]]
								                    <%= secset.AutoResizeUploadedImages? "[[on]]":"[[off]]" %>.</li>
							                    <%}%>
							                    <li>
								                    <span style="white-space:nowrap">
								                    [[MaxFolderSizeAllowed]]: <%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageFolderSize * 1024)%>.
								                    [[Used]]: <%= CuteEditor.Impl.FileStorage.FormatSize(fs.GetDirectorySize(fs.VirtualRoot)) %>
								                    <span style="background-color:green;height:3px;width:40px;font-size:3px">
									                    <span style="background-color:red;height:3px;width:<%= GetUsedSpaceBarWidth() %>px;font-size:3px"></span>
								                    </span>
								                    </span>
							                    </li>
							                </ul>
									    </td>
								    </tr>	
						     </table>
						</fieldset>
						<p style="text-align:center">
							<input class="formbutton" type="button" value="  [[OK]]  " onclick="do_insert()" id="Button1" name="Button1" />
							&nbsp;&nbsp;&nbsp; 
							<input class="formbutton" type="button" value="  [[Cancel]]  " onclick="do_Close()"	id="Button2" name="Button2" />
						</p>
					</td>
				</tr>
			</table>
			</div>
		</form>
	</body>
	<script runat="server">
	protected override void InitOfType()
	{
		string folder=secset.ImageBrowserPath;
		if(folder==null||folder=="")folder=secset.ImageGalleryPath;
		fs.VirtualRoot=CuteEditor.EditorUtility.ProcessWebPath(Context,null,folder).TrimEnd('/')+"/";
	}
	
    protected override void GetFiles(ArrayList files)
    {
        foreach (string ext in secset.ImageFilters)
        {
            if (ext == null || ext.Length == 0) continue;

            files.AddRange(fs.GetFileItems(CurrentDirectory, secset.FileNamePrefix + "*" + ext));
        }
    }
    protected override bool AllowFileName(string filename)
    {
        filename = filename.ToLower();
        foreach (string ext in secset.ImageFilters)
        {
            if (ext == null || ext.Length == 0) continue;
            if(filename.EndsWith(ext.ToLower()))
                return true;
        }
        return false;
    }
    
    protected int GetUsedSpaceBarWidth()
    {
      int w = Convert.ToInt32(40*fs.GetDirectorySize(fs.VirtualRoot)/(secset.MaxImageFolderSize * 1024));
      if(w<1)
		w=1;
		
	  if(w>40)
		w=40;
		
      return w;      
    }
    
    protected override string CheckUploadData(ref byte[] data)
    {  
		if (fs.GetDirectorySize(fs.VirtualRoot) >= secset.MaxImageFolderSize * 1024)
           return "Image folder size exceeds the limit: "+ CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageFolderSize * 1024);
          
      
        System.Drawing.Image img;
        try
        {
            img = System.Drawing.Image.FromStream(new System.IO.MemoryStream(data));
        }
        catch
        {
            return "Image is in the wrong format.";
        }

        //let base class to implement
        /*
        
        if (data.Length >= secset.MaxImageSize * 1024)
           return "Image size exceeds "+CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageSize * 1024)+" limit: "+ CuteEditor.Impl.FileStorage.FormatSize(data.Length);


        if(secset.RestrictUploadedImageDimension)
        {
			if(secset.AutoResizeUploadedImages)
			{
				return null;//let base class implement the secset.AutoResizeUploadedImages
			}
			else
			{
				if ((img.Width > secset.MaxImageWidth) || ((img.Height > secset.MaxImageHeight)))
					return String.Format("Image dimension ({0} x {1} pixels) exceeding limits.", img.Width, img.Height);
			}	
		}
		*/
		
        return null;
    }
	</script>
	<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogFoot.js"></script>
	<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_SelectImage.js"></script>
</html>
