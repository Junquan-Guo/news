<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.FileBrowserPage" %>
<%@ Register TagPrefix="CE" Assembly="CuteEditor" Namespace="CuteEditor" %>
<script runat="server">
override protected void OnInit(EventArgs args)
{
	if(Context.Request.QueryString["Dialog"]=="Standard")
	{
		if(Context.Request.QueryString["IsFrame"]==null)
		{
			string FrameSrc="SelectFile.Aspx?IsFrame=1&"+Request.ServerVariables["QUERY_STRING"];
			CuteEditor.CEU.WriteDialogOuterFrame(Context,"[[Browse]]",FrameSrc);
			Context.Response.End();
		}
	}
	base.OnInit(args);
}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>[[Browse]]</title>
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)" />
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)" />
		<link href='Load.ashx?type=themecss&file=dialog.css&theme=[[_Theme_]]' type="text/css" rel="stylesheet" />
		<!--[if IE]>
			<link href="Load.ashx?type=style&file=IE.css" type="text/css" rel="stylesheet" />
		<![endif]-->
			<script type="text/javascript" src="Load.ashx?type=dialogscript&amp;file=DialogHead.js"></script>
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
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td style="width:20">
						<asp:Image id="Image1" Runat="server" ImageUrl="Load.ashx?type=image&amp;file=openfolder.gif"></asp:Image>
					</td>
					<td style="width:240px; white-space:nowrap" class="normal">
						<asp:Label Runat="server" id="FolderDescription"></asp:Label>
					</td>
					<td style="text-align:center; width:100%" >
<asp:ImageButton id="CreateDir" BorderWidth="1" Runat="server" AlternateText="[[Createdirectory]]"	ImageUrl="Load.ashx?type=image&amp;file=newfolder.gif" OnClick="CreateDir_Click" />
<asp:ImageButton id="Copy" BorderWidth="1" Runat="server" AlternateText="[[Copyfiles]]" ImageUrl="Load.ashx?type=image&amp;file=Copy.gif" OnClick="Copy_Click" />
<asp:ImageButton id="Move" BorderWidth="1" Runat="server" AlternateText="[[Movefiles]]" ImageUrl="Load.ashx?type=image&amp;file=move.gif" OnClick="Move_Click" />
<img id="btn_zoom_in" src="Load.ashx?type=image&amp;file=zoom_in.gif" onclick="Zoom_In();" title="[[ZoomIn]]" class="dialogButton"  />
<img id="btn_zoom_out" src="Load.ashx?type=image&amp;file=zoom_out.gif" onclick="Zoom_Out();" title="[[ZoomOut]]" class="dialogButton"  />
<img id="btn_Actualsize" src="../Load.ashx?type=image&file=Actualsize.gif" onclick="Actualsize();" title="[[ActualSize]]" class="dialogButton"  />
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="2" width="100%">
					<tr>
						<td valign="top" style="white-space:nowrap;width:270">
							<div style="BORDER: 1.5pt inset; VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 270; HEIGHT: 240px; BACKGROUND-COLOR: white">
								<asp:Table id="FoldersAndFiles" Runat="server" CellSpacing="1" CellPadding="1" Width="100%"
								CssClass="sortable">
								<asp:TableRow BackColor="#f0f0f0">
									<asp:TableHeaderCell Width="16px">
<asp:ImageButton id="Delete" Runat="server" AlternateText="[[Deletefiles]]" ImageUrl="Load.ashx?type=image&file=s_cut.gif" OnClick="Delete_Click" />
									</asp:TableHeaderCell>
									<asp:TableHeaderCell Width="16px">
<asp:ImageButton id="DoRefresh" Runat="server" AlternateText="[[Refresh]]" ImageUrl="Load.ashx?type=image&file=s_refresh.gif" OnClick="DoRefresh_Click" />									</asp:TableHeaderCell>
									<asp:TableHeaderCell id="name_Cell" Width="136px" CssClass="filelistHeadCol" Font-Bold="False">[[Name]]</asp:TableHeaderCell>
									<asp:TableHeaderCell id="size_Cell" Width="72px" CssClass="filelistHeadCol" Wrap="False" Font-Bold="False">[[Size]]</asp:TableHeaderCell>
									<asp:TableHeaderCell id="op_Cell" Width="16px">&nbsp;</asp:TableHeaderCell>
								</asp:TableRow>
							</asp:Table>
						</div>
					</td>
						<td valign="top">
							<div style="padding:0; BORDER: 1.5pt inset; VERTICAL-ALIGN: top; OVERFLOW: auto; WIDTH: 300px; BORDER-BOTTOM: 1.5pt inset; HEIGHT: 240px; BACKGROUND-COLOR: white; TEXT-ALIGN: left">
								<div id="divpreview" style="BACKGROUND-COLOR: white">&nbsp;</div>
							</div>
						</td>
					</tr>
				</table>
			<div style="text-align:center">
			<table border="0" cellspacing="2" cellpadding="0" width="98%">
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
												    <input type="text" id="TargetUrl" style="WIDTH:400px" name="TargetUrl" runat="server" />
											    </td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset style="width:98%;">
							<legend>
								[[Upload]] ([[MaxFileSizeAllowed]]
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxDocumentSize * 1024)%>
								)</legend>
							<table border="0" cellpadding="5" cellspacing="0">
					            <tr>
									<td valign="top" id="uploader">
										<CE:Uploader id="InputFile" runat="server"></CE:Uploader>
									</td>
								</tr>
								<tr>
									<td style="height:12">
									</td>
								</tr>
								<tr>
						            <td style="white-space:nowrap">
										[[MaxFolderSizeAllowed]]:
										<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxDocumentFolderSize * 1024)%>.
										[[Used]]:<%= CuteEditor.Impl.FileStorage.FormatSize(fs.GetDirectorySize(fs.VirtualRoot)) %>
										<span style="FONT-SIZE:3px;WIDTH:40px;HEIGHT:3px;BACKGROUND-COLOR:green">
											<span style="FONT-SIZE:3px;HEIGHT:3px;BACKGROUND-COLOR:red"></span>
										</span>
									</td>
								</tr>
							</table>
						</fieldset>
						<p style="text-align:center">
<input class="formbutton" type="button" value="  [[OK]]  " onclick="do_insert()" id="Button1" name="Button1" />
							&nbsp;&nbsp;&nbsp; 
<input class="formbutton" type="button" value="  [[Cancel]]  " onclick="do_Close()" id="Button2" name="Button2" />
						</p>
					</td>
				</tr>
			</table>
			</div>
		</div>
		</form>
		<script runat="server">
	protected override void InitOfType()
	{
		fs.VirtualRoot=CuteEditor.EditorUtility.ProcessWebPath(Context,null,secset.FilesGalleryPath).TrimEnd('/')+"/";
	}
    protected override void GetFiles(ArrayList files)
    {		
        foreach (string ext in secset.DocumentFilters)
        {
            if (ext == null || ext.Length == 0) continue;
            
			if ( ext.Length > 4 )
			{
				if ( !secset.DocumentFilters.Contains( ext.Substring( 0, 4 ) ) )
				{
					files.AddRange(fs.GetFileItems(CurrentDirectory, secset.FileNamePrefix + "*" + ext));				
				}
				
			}
			else
				files.AddRange(fs.GetFileItems(CurrentDirectory, secset.FileNamePrefix + "*" + ext));
        }        
        
    }
    protected override bool AllowFileName(string filename)
    {
        filename = filename.ToLower();
        if(filename.EndsWith(".swf"))return true;
        foreach (string ext in secset.DocumentFilters)
        {
            if (ext == null || ext.Length == 0) continue;
            if(filename.EndsWith(ext.ToLower()))
                return true;
        }
        return false;
    }
    protected override string CheckUploadData(ref byte[] data)
    {	
		if (fs.GetDirectorySize(fs.VirtualRoot) >= secset.MaxDocumentFolderSize * 1024)
           return "File folder size exceeds the limit: "+ CuteEditor.Impl.FileStorage.FormatSize(secset.MaxDocumentFolderSize * 1024);

        if (data.Length >= secset.MaxDocumentSize * 1024)
            return "File size exceeds "+CuteEditor.Impl.FileStorage.FormatSize(secset.MaxDocumentSize * 1024)+" limit: "+ CuteEditor.Impl.FileStorage.FormatSize(data.Length);
        return null;
        
    }
    protected int GetUsedSpaceBarWidth()
    {
      int w = Convert.ToInt32(40*fs.GetDirectorySize(fs.VirtualRoot)/(secset.MaxDocumentFolderSize * 1024));
      if(w<1)
		w=1;
		
	  if(w>40)
		w=40;
		
      return w;      
    }
		</script>
		<script type="text/javascript" src="Load.ashx?type=dialogscript&amp;file=DialogFoot.js"></script>
		<script type="text/javascript" src="Load.ashx?type=dialogscript&amp;file=Dialog_SelectFile.js"></script>
	</body>
</html>