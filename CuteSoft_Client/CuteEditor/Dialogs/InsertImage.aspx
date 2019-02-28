<%@ Page Language="C#" Inherits="CuteEditor.Dialogs.FileBrowserPage" %>
<%@ Register TagPrefix="CE" Assembly="CuteEditor" Namespace="CuteEditor" %>
<script runat="server">
override protected void OnInit(EventArgs args)
{
	if(Context.Request.QueryString["Dialog"]=="Standard")
	{
		if(Context.Request.QueryString["IsFrame"]==null)
		{
			string FrameSrc="InsertImage.Aspx?IsFrame=1&"+Request.ServerVariables["QUERY_STRING"];
			CuteEditor.CEU.WriteDialogOuterFrame(Context,"[[InsertImage]]",FrameSrc);
			Context.Response.End();
		}
	}
	base.OnInit(args);
	
	InputFile.ValidateOption.MaxSizeKB=secset.MaxImageSize;
	InputFile.ValidateOption.AllowedFileExtensions=string.Join(",",(string[])secset.ImageFilters.ToArray(typeof(string)));
}
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server" ID="Head1">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)" />
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)" />
		<meta http-equiv="Cache-Control" content="no-cache" />
		<meta http-equiv="Pragma" content="no-cache" />
		<title>[[InsertImage]]</title>
		<meta http-equiv="EXPIRES" content="0" />
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
		<form runat="server" enctype="multipart/form-data" id="Form1"><div runat=server id="ajaxdiv" style="padding:10px; width:100%">
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
<img id="btn_zoom_in" src="../Load.ashx?type=image&file=zoom_in.gif" onclick="Zoom_In();" title="[[ZoomIn]]" class="dialogButton" /> 
<img id="btn_zoom_out" src="../Load.ashx?type=image&file=zoom_out.gif" onclick="Zoom_Out();" title="[[ZoomOut]]" class="dialogButton" /> 
<img id="btn_bestfit" src="../Load.ashx?type=image&file=bestfit.gif" onclick="BestFit();" title="[[BestFit]]" class="dialogButton" /> 
<img id="btn_Actualsize" src="../Load.ashx?type=image&file=Actualsize.gif" onclick="Actualsize();" title="[[ActualSize]]" class="dialogButton" /> 
<img id="img_AutoThumbnail" src="../Load.ashx?type=image&file=resize.gif" onclick="AutoThumbnail();" title="[[AutoThumbnail]]" class="dialogButton" />
						<% if(secset.AllowModify) {%>
<img class="dialogButton" id="img_ImageEditor" src="../Load.ashx?type=image&file=imageeditor.gif" onclick="ImageEditor();" title="[[ImageEditor]]" />
						<%
						}
						else
						{
						%>
<img class="CuteEditorButtonDisabled" id="img1" src="../Load.ashx?type=image&file=imageeditor.gif" title="[[ImageEditor]]" />
						<%
						}
						%>
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td valign="top" style="white-space:nowrap; width:280">
						<div style="BORDER: 1.5pt inset;  VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 280; HEIGHT: 250px; Padding:0; BACKGROUND-COLOR: white">
							<asp:Table id="FoldersAndFiles" Runat="server" CellSpacing="1" CellPadding="0" Width="100%"
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
									<asp:TableHeaderCell id="name_Cell" Wrap="True" Width="145px" CssClass="filelistHeadCol" Font-Bold="False">[[Name]]</asp:TableHeaderCell>
									<asp:TableHeaderCell id="size_Cell" Width="62px" CssClass="filelistHeadCol" Wrap="False" Font-Bold="False">[[Size]]</asp:TableHeaderCell>
									<asp:TableHeaderCell id="op_Cell" Width="16px">&nbsp;</asp:TableHeaderCell>
									<asp:TableHeaderCell id="op_space" Width="1px"></asp:TableHeaderCell>
								</asp:TableRow>
							</asp:Table>
						</div>
					</td>
					<td valign="top">
						<div style="BORDER: 1.5pt inset; VERTICAL-ALIGN: top; OVERFLOW: auto; WIDTH: 326px; HEIGHT: 250px; BACKGROUND-COLOR: white; TEXT-ALIGN: center">
							<div id="divpreview" style="BACKGROUND-COLOR: white"><img id="img_demo" alt="" src="../Load.ashx?type=image&file=1x1.gif" /></div>
						</div>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="height:2">
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tr>
					<td valign="top">
						<fieldset>
							<legend>[[Layout]]</legend>
							<table border="0" cellpadding="2" cellspacing="0" width="100%">
								<tr>
									<td style="width:72;white-space:nowrap">[[Alignment]]:</td>
									<td style="text-align:left">
<select name="ImgAlign" style="WIDTH : 80px" id="Align" onchange="do_preview()" onpropertychange="do_preview()">
	<option id="optNotSet" selected="selected" value="">[[Notset]]</option>
	<option id="optLeft" value="left">[[Left]]</option>
	<option id="optRight" value="right">[[Right]]</option>
	<option id="optTexttop" value="textTop">[[Texttop]]</option>
	<option id="optAbsMiddle" value="absMiddle">[[Absmiddle]]</option>
	<option id="optBaseline" value="baseline">[[Baseline]]</option>
	<option id="optAbsBottom" value="absBottom">[[Absbottom]]</option>
	<option id="optBottom" value="bottom">[[Bottom]]</option>
	<option id="optMiddle" value="middle">[[Middle]]</option>
	<option id="optTop" value="top">[[Top]]</option>
</select>
									</td>
								</tr>
								<tr>
									<td>[[Bordersize]]:</td>
									<td style="text-align:left">
<input type="text" size="2" name="Border" onchange="do_preview()" onpropertychange="do_preview()"
											onkeypress="return CancelEventIfNotDigit()" style="WIDTH : 80px" id="Border" />
									</td>
								</tr>
								<tr>
									<td>[[BorderColor]]:</td>
									<td style="text-align:left">
<input type="text" id="bordercolor" name="bordercolor" size="7" />
<img title="" src="../Load.ashx?type=image&file=colorpicker.gif" id="bordercolor_Preview" style='vertical-align:top;' />
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<table border="0" cellpadding="0" cellspacing="0" class="normal">
											<tr>
												<td style="width:100; white-space:nowrap">[[Width]]:</td>
												<td>
<input type="text" size="2" id="inp_width" onkeyup="checkConstrains('width');" onkeypress="return CancelEventIfNotDigit()" style="WIDTH:80px" />
												</td>
												<td rowspan="2" align="right" valign="middle">
<img src="../Load.ashx?type=image&file=locked.gif" id="imgLock" width="25" height="32" title="[[ConstrainProportions]]" />
												</td>
											</tr>
											<tr>
												<td>[[Height]]:</td>
												<td>
<input type="text" size="2" id="inp_height" onkeyup="checkConstrains('height');" onkeypress="return CancelEventIfNotDigit()" style="WIDTH : 80px" />
												</td>
											</tr>
											<tr>
												<td colspan="2">
<input type="checkbox" id="constrain_prop" checked="checked" onclick="javascript:toggleConstrains();" /> [[ConstrainProportions]]
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset>
							<legend>[[Spacing]]</legend>
							<table border="0" cellpadding="4" cellspacing="0" width="100%">
								<tr>
									<td>
										<table border="0" cellpadding="1" cellspacing="0" class="normal" width="100%">
											<tr>
												<td valign="middle" style="width:100; white-space:nowrap">[[Horizontal]]:</td>
												<td><input type="text" size="2" name="HSpace" onchange="do_preview()" onpropertychange="do_preview()"
														onkeypress="return CancelEventIfNotDigit()" style="WIDTH:80px" id="HSpace" />
												</td>
											</tr>
											<tr>
												<td valign="middle">[[Vertical]]:</td>
												<td><input type="text" size="2" name="VSpace" onchange="do_preview()" onpropertychange="do_preview()"
														onkeypress="return CancelEventIfNotDigit()" style="WIDTH:80px" id="VSpace" /></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
					</td>
					<td style="width:2"></td>
					<td valign="top">
						<fieldset>
							<legend>[[Insert]]</legend>
							<table border="0" cellpadding="4" cellspacing="0">
								<tr>
									<td>
										<table border="0" cellpadding="1" cellspacing="0" class="normal">
											<tr>
												<td valign="middle">
													[[Url]]:</td>
												<td colspan="3">
<input type="text" id="TargetUrl" onchange="do_preview()" onpropertychange="do_preview()" size="43" name="TargetUrl" runat="server" /></td>
												<td></td>
											</tr>
											<tr>
												<td valign="middle">[[Alternate]]:</td>
												<td valign="middle"><input type="text" id="AlternateText" size="22" name="AlternateText" /></td>
												<td valign="middle" style="white-space:nowrap">&nbsp;[[ID]]:</td>
												<td><input type="text" id="inp_id" size="12" /></td>
												<td></td>
											</tr>
											<tr>
												<td valign="middle" style="white-space:nowrap">[[longDesc]]:</td>
												<td valign="middle" colspan="3"><input type="text" id="longDesc" size="43" name="longDesc" /></td>
												<td><img alt="" src="../Load.ashx?type=image&file=Accessibility.gif" /></td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<fieldset id="fieldsetUpload">
							<legend>
								[[Upload]] ([[MaxFileSizeAllowed]]
								<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageSize * 1024)%>
								)</legend>
							<table border="0" cellspacing="2" cellpadding="0" width="100%" class="normal">
								<tr>
									<td style="width:8">
									</td>
								</tr>
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
												<%= secset.AutoResizeUploadedImages? "[[on]]":"[[off]]" %>
												.
											</li>
											<%}%>
											<li>
												<span style="white-space:nowrap">[[MaxFolderSizeAllowed]]:
												<%= CuteEditor.Impl.FileStorage.FormatSize(secset.MaxImageFolderSize * 1024)%>.
												[[Used]]: <%= CuteEditor.Impl.FileStorage.FormatSize(fs.GetDirectorySize(fs.VirtualRoot)) %>
												<span style="background-color:green;height:3px;width:40px;font-size:3px">
														<span style="background-color:red;height:3px;width:<%= GetUsedSpaceBarWidth() %>px;font-size:3px">
														</span>
													</span>
											</span>
											</li>
										</ul>
									</td>
								</tr>
							</table>
						</fieldset>
						<br />
						<div style="padding-top:10px;">
<input class="formbutton" type="button" value="   [[Insert]]   " onclick="do_insert()" id="Button1" /> 
&nbsp;&nbsp;&nbsp; 
<input class="formbutton" type="button" value="   [[Cancel]]  " onclick="do_Close()" id="Button2" />
						</div>
					</td>
				</tr>
			</table>
			</div>
		</form>
		<script runat="server">
			protected override void InitOfType()
			{
				this.Context.Response.Cache.SetCacheability(HttpCacheability.NoCache);
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
				return null;
			}
		</script>
	</body>
	<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogFoot.js"></script>
	<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_InsertImage.js"></script>
</html>