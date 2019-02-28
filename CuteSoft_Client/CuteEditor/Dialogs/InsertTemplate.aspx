<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.TemplateBrowserPage" %>
<%@ Register TagPrefix="CE" Assembly="CuteEditor" Namespace="CuteEditor" %>
<script runat="server">
override protected void OnInit(EventArgs args)
{
	if(Context.Request.QueryString["Dialog"]=="Standard")
	{
	if(Context.Request.QueryString["IsFrame"]==null)
	{
		string FrameSrc="InsertTemplate.Aspx?IsFrame=1&"+Request.ServerVariables["QUERY_STRING"];
		CuteEditor.CEU.WriteDialogOuterFrame(Context,"[[InsertTemplate]]",FrameSrc);
		Context.Response.End();
	}
	}
	base.OnInit(args);
}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)" />
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)" />
		<link href='Load.ashx?type=themecss&file=dialog.css&theme=[[_Theme_]]' type="text/css"
			rel="stylesheet" />
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
		<title>[[InsertTemplate]]</title>
		<style type="text/css">
		.row { HEIGHT: 22px }
		.cb { VERTICAL-ALIGN: middle }
		.itemimg { VERTICAL-ALIGN: middle }
		.editimg { VERTICAL-ALIGN: middle }
		.cell1 { VERTICAL-ALIGN: middle }
		.cell2 { VERTICAL-ALIGN: middle }
		.cell3 { PADDING-RIGHT: 4px; VERTICAL-ALIGN: middle; TEXT-ALIGN: right }
		.cb { }
		#framepreview {
			width: 100%;
			height: 100%;
			overflow:hidden;
			text-align: left;
			vertical-align: top;
			padding: 0px;
			margin: 0px;
			zoom: 50%;
			background-color: white;
		}	
		</style>
	</head>
	<body>
		<form runat="server" enctype="multipart/form-data" id="Form1"><div runat=server id="ajaxdiv" style="padding:10px; width:100%">
			<!-- start hidden -->
			<input type="hidden" runat="server" id="hiddenDirectory" name="hiddenDirectory" />
			<input type="hidden" runat="server" id="hiddenHTML" name="hiddenDirectory" /> <input type="hidden" runat="server" id="hiddenFile" name="hiddenFile" />
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" name="hiddenAlert" />
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange"
				name="hiddenAction" /> <input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData" name="hiddenActionData" />
			<!-- end hidden -->
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td style="width:20">
						<asp:Image id="Image1" Runat="server" ImageUrl="../Load.ashx?type=image&file=openfolder.gif"></asp:Image>
					</td>
					<td style="width:240" class="normal">
						<asp:Label Runat="server" id="FolderDescription"></asp:Label>
					</td>
					<td>
						<asp:ImageButton id="CreateDir" BorderWidth="1" Runat="server" AlternateText="[[Createdirectory]]"
							ImageUrl="../Load.ashx?type=image&file=newfolder.gif" OnClick="CreateDir_Click" />
						<asp:ImageButton id="Copy" BorderWidth="1" Runat="server" AlternateText="[[Copyfiles]]" ImageUrl="../Load.ashx?type=image&file=Copy.gif"
							OnClick="Copy_Click" />
						<asp:ImageButton id="Move" BorderWidth="1" Runat="server" AlternateText="[[Movefiles]]" ImageUrl="../Load.ashx?type=image&file=move.gif"
							OnClick="Move_Click" />
						<img id="btn_zoom_in" src="../Load.ashx?type=image&file=zoom_in.gif" onclick="Zoom_In();"
							title="[[ZoomIn]]" class="dialogButton" /> <img id="btn_zoom_out" src="../Load.ashx?type=image&file=zoom_out.gif" onclick="Zoom_Out();"
							title="[[ZoomOut]]" class="dialogButton" /> <img id="btn_Actualsize" src="../Load.ashx?type=image&file=Actualsize.gif" onclick="Actualsize();"
							title="[[ActualSize]]" class="dialogButton" />
						<asp:ImageButton id="NewTemplate" BorderWidth="1" Runat="server" AlternateText="[[NewTemplate]]"
							ImageUrl="../Load.ashx?type=image&file=newtemplate.gif" OnClick="NewTemplate_Click" />
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="2" width="100%">
				<tr>
					<td valign="top" style="white-space:nowrap;width:250">
						<div style="BORDER: 1.5pt inset;  VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 250px; HEIGHT: 240px; Padding:0; BACKGROUND-COLOR: white">
							<asp:Table id="FoldersAndFiles" Runat="server" CellSpacing="1" CellPadding="1" Width="100%"
								CssClass="sortable">
								<asp:TableRow BackColor="#f0f0f0">
									<asp:TableHeaderCell Width="16px">
										<asp:ImageButton id="Delete" Runat="server" AlternateText="[[Deletefiles]]" ImageUrl="../Load.ashx?type=image&file=s_cut.gif"
											OnClick="Delete_Click" />
									</asp:TableHeaderCell>
									<asp:TableHeaderCell Width="16px">
										<asp:ImageButton id="DoRefresh" Runat="server" AlternateText="[[Refresh]]" ImageUrl="../Load.ashx?type=image&file=s_refresh.gif"
											OnClick="DoRefresh_Click" />
									</asp:TableHeaderCell>
									<asp:TableHeaderCell id="name_Cell" Width="136px" CssClass="filelistHeadCol" Font-Bold="False">[[Name]]</asp:TableHeaderCell>
									<asp:TableHeaderCell id="size_Cell" Width="72px" CssClass="filelistHeadCol" Wrap="False" Font-Bold="False">[[Size]]</asp:TableHeaderCell>
									<asp:TableHeaderCell id="op_Cell" Width="16px">&nbsp;</asp:TableHeaderCell>
									<asp:TableHeaderCell id="op_Cell2" Width="16px">&nbsp;</asp:TableHeaderCell>
								</asp:TableRow>
							</asp:Table>
						</div>
					</td>
					<td valign="top">
						<div style="BORDER: 1.5pt inset; VERTICAL-ALIGN: top; OVERFLOW: auto;WIDTH: 380px; HEIGHT: 240px; BACKGROUND-COLOR: white;">
							<iframe id="framepreview" src="../template.aspx"></iframe>
						</div>
					</td>
				</tr>
			</table>
			<br />
			<table border="0" cellspacing="2" cellpadding="0" width="98%">
				<tr>
					<td valign="top">
					</td>
					<td style="width:10">
					</td>
					<td valign="top">
						<input type="hidden" id="TargetUrl" size="40" name="TargetUrl" runat="server" />
						<fieldset id="fieldsetUpload">
							<legend>
								[[Upload]] ([[MaxFileSizeAllowed]]
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxTemplateSize * 1024)%>
								)</legend>
							<table border="0" cellspacing="2" cellpadding="0" width="98%" class="normal">
								<tr>
									<td valign="top" id="uploader">
<CE:Uploader id="InputFile" runat="server"></CE:Uploader>
									</td>
								</tr>
								<tr>
									<td style="width:5">
									</td>
								</tr>
								<tr>
									<td style="white-space:nowrap">
										[[MaxFolderSizeAllowed]]:
										<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxTemplateFolderSize * 1024)%>
										. [[Used]]:
										<%= CuteEditor.Impl.FileStorage.FormatSize(fs.GetDirectorySize(fs.VirtualRoot)) %>
										<span style="background-color:green;height:3px;width:40px;font-size:3px">
											<span style="background-color:red;height:3px;width:<%= GetUsedSpaceBarWidth() %>px;font-size:3px">
											</span>
										</span>
									</td>
								</tr>
							</table>
						</fieldset>
						<br />
						<div style="padding-top:10px;" align="center">
<input class="formbutton" type="button" value="   [[Insert]]   " onclick="do_insert()" id="Button1" /> 
&nbsp;&nbsp;&nbsp; 
<input class="formbutton" type="button" value="   [[Cancel]]   " onclick="do_Close()"	id="Button2" />
						</div>
					</td>
				</tr>
			</table>
		</div></form>
		<script runat="server">
	protected override void InitOfType()
	{
		fs.VirtualRoot=CuteEditor.EditorUtility.ProcessWebPath(Context,null,secset.TemplateGalleryPath).TrimEnd('/')+"/";
	}
    protected override void GetFiles(ArrayList files)
    {		
		foreach (string ext in secset.TemplateFilters)
		{
			if (ext == null || ext.Length == 0) continue;
			
			if ( ext.Length > 4 )
			{
				if ( !secset.TemplateFilters.Contains( ext.Substring( 0, 4 ) ) )
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
		foreach (string ext in secset.TemplateFilters)
		{
			if (ext == null || ext.Length == 0) continue;
			if(filename.EndsWith(ext.ToLower()))
				return true;
		}
		return false;
    }
    protected override string CheckUploadData(ref byte[] data)
    {
		if (fs.GetDirectorySize(fs.VirtualRoot) >= secset.MaxTemplateFolderSize * 1024)
           return "Template folder size exceeds the limit: "+ CuteEditor.Impl.FileStorage.FormatSize(secset.MaxTemplateFolderSize * 1024);

		if (data.Length >= secset.MaxTemplateSize * 1024)
            return "Template size exceeds "+CuteEditor.Impl.FileStorage.FormatSize(secset.MaxTemplateSize * 1024)+" limit: "+ CuteEditor.Impl.FileStorage.FormatSize(data.Length);
        return null;
    }
    
    protected int GetUsedSpaceBarWidth()
    {
      int w = Convert.ToInt32(40*fs.GetDirectorySize(fs.VirtualRoot)/(secset.MaxTemplateFolderSize * 1024));
      if(w<1)
		w=1;
		
	  if(w>40)
		w=40;
		
      return w;      
    }
		</script>
	</body>
	<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogFoot.js"></script>
	<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_InsertTemplate.js"></script>
</html>
