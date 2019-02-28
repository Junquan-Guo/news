<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.FileBrowserPage" %>
<%@ Register TagPrefix="CE" Assembly="CuteEditor" Namespace="CuteEditor" %>
<script runat="server">
override protected void OnInit(EventArgs args)
{
	if(Context.Request.QueryString["Dialog"]=="Standard")
	{
		if(Context.Request.QueryString["IsFrame"]==null)
		{
			string FrameSrc="InsertMedia.Aspx?IsFrame=1&"+Request.ServerVariables["QUERY_STRING"];
			CuteEditor.CEU.WriteDialogOuterFrame(Context,"[[InsertMedia]]",FrameSrc);
			Context.Response.End();
		}
	}
	base.OnInit(args);
	
	InputFile.ValidateOption.MaxSizeKB=secset.MaxMediaSize;
	InputFile.ValidateOption.AllowedFileExtensions=string.Join(",",(string[])secset.MediaFilters.ToArray(typeof(string)));
}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>[[InsertMedia]]</title>
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
		<style type="text/css">
			.row
			{
				height:22px;
			}
			.cb
			{
				vertical-align:middle;
			}
			.itemimg
			{
				vertical-align:middle;
			}
			.editimg
			{
				vertical-align:middle;
			}
			.cell1
			{
				vertical-align:middle;
			}
			.cell2
			{
				vertical-align:middle;
			}
			.cell3
			{
				vertical-align:middle;
			    
				text-align:right;
				padding-right:4px;
			}
			.cb
			{
			}		
		</style>
	</head>
	<body>
		<form runat="server" enctype="multipart/form-data" id="Form1"><div runat=server id="ajaxdiv" style="padding:10px; width:100%">
			<!-- start hidden -->
			<input type="hidden" runat="server" id="hiddenDirectory" /> <input type="hidden" runat="server" id="hiddenFile" />
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" /> <input type="hidden" runat="server" enableviewstate="false" id="hiddenAction" onserverchange="hiddenAction_ServerChange" />
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenActionData" />
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
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="2" width="100%">
				<tr>
					<td valign="top" style="white-space:nowrap;width:250">
						<div style="border: 1.5pt inset; vertical-align: middle; overflow: auto; width: 250;background-color: white; height: 240px">
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
								</asp:TableRow>
							</asp:Table>
						</div>
					</td>
					<td valign="top">
						<div style="BORDER: 1.5pt inset; VERTICAL-ALIGN: top; OVERFLOW: auto; WIDTH: 300px; HEIGHT: 240px; BACKGROUND-COLOR: white; TEXT-ALIGN: center">
							<div id="divpreview" style="BACKGROUND-COLOR: white">&nbsp;</div>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="height:2">
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0" width="99%">
				<tr>
					<td valign="top">
						<fieldset>
							<legend>[[Properties]]</legend>
							<table border="0" cellpadding="4" cellspacing="0" class="normal">
								<tr>
									<td>
										<table border="0" cellpadding="1" cellspacing="0" class="normal">
											<tr>
												<td style="width:100">
													[[Width]]:</td>
												<td>
<input type="text" name="Width" id="Width" style="width: 80px;" onchange="do_preview()" onkeypress="return CancelEventIfNotDigit()" value="200" /></td>
											</tr>
											<tr>
												<td>
													[[Height]]:</td>
												<td>
<input type="text" name="Height" id="Height" style="width: 80px;" onchange="do_preview()" onkeypress="return CancelEventIfNotDigit()" value="200" /></td>
											</tr>
											<tr>
												<td>
													[[AutoStart]]:</td>
												<td>
<input type="checkbox" name="AutoStart" onchange="do_preview()" onpropertychange="do_preview()" id="AutoStart" checked="checked" value="AutoStart" /></td>
											</tr>
											<tr>
												<td style="height: 24px">
													[[ShowControls]]:</td>
												<td style="height: 24px">
<input type="checkbox" name="ShowControls" onchange="do_preview()" onpropertychange="do_preview()" id="ShowControls" checked="checked" value="ShowControls" /></td>
											</tr>
											<tr>
												<td>[[ShowStatusBar]]:</td>
												<td>
<input type="checkbox" name="ShowStatusBar" onchange="do_preview()" onpropertychange="do_preview()" id="ShowStatusBar" value="ShowStatusBar" /></td>
											</tr>
											<tr>
												<td>[[WindowlessVideo]]:</td>
												<td>
<input type="checkbox" name="WindowlessVideo" onchange="do_preview()" onpropertychange="do_preview()" id="WindowlessVideo" value="windowlessVideo" /></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
					</td>
					<td style="width:10">
					</td>
					<td valign="top">
						<fieldset style="margin-bottom:5px">
							<legend>[[Insert]]</legend>
							<table border="0" cellpadding="4" cellspacing="0">
								<tr>
									<td>
										<table border="0" cellpadding="1" cellspacing="0" class="normal">
											<tr>
												<td valign="middle">
													[[Url]]:</td>
												<td>
	<input type="text" id="TargetUrl" size="40" name="TargetUrl" runat="server" />
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset id="fieldsetUpload">
							<legend>
								[[Upload]] ([[MaxFileSizeAllowed]]
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxMediaSize * 1024)%>
								)</legend>
							<table border="0" cellspacing="1" cellpadding="0" width="98%" class="normal">
								<tr>
									<td style="height:10">
									</td>
								</tr>
								<tr>
									<td valign="top" id="uploader">
<CE:Uploader id="InputFile" InsertText="ffff" runat="server"></CE:Uploader>
									</td>
								</tr>
								<tr>
									<td style="width:8">
									</td>
								</tr>
								<tr>
									<td style="width:5">
									</td>
								</tr>
								<tr>
									<td>
										<span style="white-space:nowrap">
											[[MaxFolderSizeAllowed]]: <%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxMediaFolderSize * 1024)%>.
											[[Used]]: <%= CuteEditor.Impl.FileStorage.FormatSize(fs.GetDirectorySize(fs.VirtualRoot)) %>
											<span style="background-color:green;height:3px;width:40px;font-size:3px">
												<span style="background-color:red;height:3px;width:<%= GetUsedSpaceBarWidth() %>px;font-size:3px">
												</span>
											</span>
										</span>
									</td>
								</tr>
							</table>
						</fieldset>
						<br />
						<div style="padding-top:12px;">
<input class="formbutton" type="button" value="  [[Insert]]  " onclick="do_insert()" id="Button1" /> 
&nbsp;&nbsp;&nbsp; 
<input class="formbutton" type="button" value="  [[Cancel]]  " onclick="do_Close()"	id="Button2" />
						</div>
					</td>
				</tr>
			</table>
		</div></form>
	</body>
	<script runat="server">
	protected override void InitOfType()
	{
		fs.VirtualRoot=CuteEditor.EditorUtility.ProcessWebPath(Context,null,secset.MediaGalleryPath).TrimEnd('/')+"/";
	}
    protected override void GetFiles(ArrayList files)
    {
        foreach (string ext in secset.MediaFilters)
        {
            if (ext == null || ext.Length == 0) continue;

            files.AddRange(fs.GetFileItems(CurrentDirectory, secset.FileNamePrefix + "*" + ext));
        }
    }
    protected override bool AllowFileName(string filename)
    {
        filename = filename.ToLower();
        foreach (string ext in secset.MediaFilters)
        {
            if (ext == null || ext.Length == 0) continue;
            if(filename.EndsWith(ext.ToLower()))
                return true;
        }
        return false;
    }
    protected override string CheckUploadData(ref byte[] data)
    {
		 if (fs.GetDirectorySize(fs.VirtualRoot) >= secset.MaxMediaFolderSize * 1024)
           return "Media folder size exceeds the limit: "+ CuteEditor.Impl.FileStorage.FormatSize(secset.MaxMediaFolderSize * 1024);

        if (data.Length >= secset.MaxMediaSize * 1024)
            return "Media size exceeds "+CuteEditor.Impl.FileStorage.FormatSize(secset.MaxMediaSize * 1024)+" limit: "+ CuteEditor.Impl.FileStorage.FormatSize(data.Length);
        return null;
    }
    protected int GetUsedSpaceBarWidth()
    {
      int w = Convert.ToInt32(40*fs.GetDirectorySize(fs.VirtualRoot)/(secset.MaxMediaFolderSize * 1024));
      if(w<1)
		w=1;
		
	  if(w>40)
		w=40;
		
      return w;      
    }
	</script>
	<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogFoot.js"></script>
	<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_InsertMedia.js"></script>
</html>
