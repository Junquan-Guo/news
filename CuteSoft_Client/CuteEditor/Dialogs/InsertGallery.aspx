<%@ Page Language="C#" EnableViewState="true" Inherits="CuteEditor.Dialogs.InsertGalleryFrame" %>
<%@ Register TagPrefix="CE" Assembly="CuteEditor" Namespace="CuteEditor" %>
<%@ Register TagPrefix="CC1" TagName="ThumbList" Src="ThumbList.ascx" %>
<script runat="server">
override protected void OnInit(EventArgs args)
{
	if(Context.Request.QueryString["Dialog"]=="Standard")
	{
		if(Context.Request.QueryString["IsFrame"]==null)
		{
			string FrameSrc="InsertGallery.Aspx?IsFrame=1&"+Request.ServerVariables["QUERY_STRING"];
			CuteEditor.CEU.WriteDialogOuterFrame(Context,"[[ImageGalleryByBrowsing]]",FrameSrc);
			Context.Response.End();
		}
	}
		base.OnInit(args);
}
</script>
<html>
	<head runat="server">
		<title>[[ImageGalleryByBrowsing]]</title>
		<link href='Load.ashx?type=themecss&file=dialog.css&theme=[[_Theme_]]' type="text/css" rel="stylesheet" />
		<!--[if IE]>
			<link href="Load.ashx?type=style&file=IE.css" type="text/css" rel="stylesheet" />
		<![endif]-->
		<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogHead.js"></script>
			<script type="text/javascript" src="Load.ashx?type=dialogscript&amp;file=Dialog_gallery_spring.js"></script>
			<script type="text/javascript">		
			function Check(t,n)
			{	
			}	
			function showTooltip(menucontents, obj, e){
			}
			function insert(src) {
			}
			function delayhidetip()
			{
			}
			</script>
			<style type="text/css">	 
			A:link { COLOR: #000099 }	
			A:visited { COLOR: #000099 }	
			A:active { COLOR: #000099 }	
			A:hover { COLOR: darkred }
			#tooltipdiv { border: black 1px solid; padding: 2px; z-index: 100; font: menu; position: absolute }	
			#ThumbList1_MyList IMG { border:solid 2px #cccccc;}	
			IMG.spring_image { BEHAVIOR: url(htc.htc); CURSOR: pointer; -moz-binding: url("xbl.xml#MyComponent") }	
			IMG.spring_image_popup { border:solid 2px #ff0000; DISPLAY: none; Z-INDEX: 99999; LEFT: 0px; FLOAT: none; MARGIN: 0px; CURSOR: pointer; POSITION: absolute; TOP: 0px }	
			</style>
	</head>
	<body style="OVERFLOW:auto">
		<form runat="server" enctype="multipart/form-data" id="Form1">
			<input type="hidden" runat="server" enableviewstate="false" id="hiddenAlert" name="hiddenAlert">
			<table width="100%" cellspacing="2" cellpadding="0" border="0" align="center">
				<tr>
					<td height="80" valign="top" width="50%">
						<asp:Table runat="server" Width="100%" id="FoldersAndFiles">
							<asp:TableRow>
								<asp:TableCell Width="20" HorizontalAlign="right">
									<asp:Image runat="server" ImageUrl="../Load.ashx?type=image&file=openfolder.gif" id="Image1"></asp:Image>
								</asp:TableCell>
								<asp:TableCell HorizontalAlign="left" ColumnSpan="2">
									<asp:Label runat="server" id="FolderDescription"></asp:Label>
								</asp:TableCell>
							</asp:TableRow>
						</asp:Table>
					</td>
					<td width="50%" valign="top">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						[[Size]]:
						<asp:DropDownList id="cbThumbSize" runat="server" AutoPostBack="True"></asp:DropDownList>
						[[Columns]]:
						<asp:DropDownList id="cbColumns" runat="server" AutoPostBack="True"></asp:DropDownList>
						[[Rows]]:
						<asp:DropDownList id="cbRows" runat="server" AutoPostBack="True"></asp:DropDownList>
						[[Type]]:
						<asp:DropDownList id="cbTypes" runat="server" AutoPostBack="True"></asp:DropDownList>
						<asp:DropDownList id="cbSorts" Runat="server" AutoPostBack="True"></asp:DropDownList>
					</td>
				</tr>
				<tr>
					<td colspan="2" valign="top">
						<CC1:ThumbList id="ThumbList1" runat="server"></CC1:ThumbList>
						<br>
					</td>
				</tr>
				<tr>
					<td style="padding-left:20px;" id="uploader">
<CE:Uploader id="myuploadFile"  runat="server"></CE:Uploader>
					</td>
					<td align="left">
<input type="button" value="[[Cancel]]" class="formbutton" onclick="cancel();">
					</td>
				</tr>
			</table>
		</form>
		<script type="text/javascript" src="Load.ashx?type=dialogscript&amp;file=DialogFoot.js"></script>
		<script type="text/javascript" src="Load.ashx?type=dialogscript&amp;file=Dialog_InsertGallery.js"></script>
	</body>
</html>

