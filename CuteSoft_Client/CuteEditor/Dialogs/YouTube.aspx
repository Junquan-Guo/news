<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>[[YouTube]] </title>		
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)" />
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)" />
		<link href='Load.ashx?type=themecss&file=dialog.css&theme=[[_Theme_]]' type="text/css" rel="stylesheet" />
		<!--[if IE]>
			<link href="Load.ashx?type=style&file=IE.css" type="text/css" rel="stylesheet" />
		<![endif]-->
		<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogHead.js"></script>
	</head>
	<body>
		<div id="container">
		<table border="0" cellspacing="0" cellpadding="2" width="100%">
				<tr>
					<td valign="top" style="white-space:nowrap;">
						[[PasteYouTube]]:<br />
						<textarea name="idSource" id="idSource" rows="8" cols="50" style="WIDTH: 500px; HEIGHT: 30px; BACKGROUND-COLOR: #ffff80;" onpaste="do_preview()" onkeyup="do_preview()" onchange="do_preview()"></textarea>
					</td>
				</tr>
				<tr>
					<td valign="top">
						<img alt="" id="BorderColor_Preview" src="../Load.ashx?type=image&file=youtube.gif" style='vertical-align:top;' /><br />
						<div style="BORDER: 1.5pt inset; VERTICAL-ALIGN: middle; OVERFLOW: auto; WIDTH: 500px; HEIGHT: 350px; BACKGROUND-COLOR: white; TEXT-ALIGN: center">
							<div id="divpreview" style="BACKGROUND-COLOR: white">&nbsp;</div>
						</div>
					</td>
				</tr>
				<tr>
					<td style="height:2">					
					</td>
				</tr>
			</table>
			<table border="0" cellspacing="0" cellpadding="0" align="left">
				<tr>
					<td valign="top">
						<fieldset>
							<legend>[[Properties]]</legend>
							<table border="0" cellpadding="4" cellspacing="0" width="180">
								<tr>
									<td>
										<table border="0" cellpadding="1" cellspacing="0">
											<tr>
												<td>[[Width]]:</td>
												<td>
													<input type="text" name="Width" id="Width" style="WIDTH : 80px" onchange="do_preview()"
														onkeypress="return CancelEventIfNotDigit()" value="425" />
												</td>
											</tr>
											<tr>
												<td>[[Height]]:</td>
												<td>
													<input type="text" name="Height" id="Height" style="WIDTH : 80px" onchange="do_preview()"
														onkeypress="return CancelEventIfNotDigit()" value="344" />
												</td>
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
							<legend>
								[[Insert]]</legend>
							<table border="0" cellpadding="4" cellspacing="0" width="300">
								<tr>
									<td>
										<table border="0" cellpadding="1" cellspacing="0">
											<tr>
												<td valign="middle">
													[[Url]]:  </td>
												<td>
													<input type="text" id="TargetUrl" size="50" name="TargetUrl" /></td>
											</tr>
											<tr>
												<td colspan="2">
											<!--		<input type="checkbox" id="chk_Loop" onchange="do_preview()" onpropertychange="do_preview()" />&nbsp;[[Loop]] -->
											<!--		<input type="checkbox" id="chk_Autoplay" onchange="do_preview()" onpropertychange="do_preview()" />&nbsp;[[Autoplay]]  -->
													<input type="checkbox" id="chk_Transparency" onchange="do_preview()" onpropertychange="do_preview()" />&nbsp;[[Transparency]]
											<!--		<input type="checkbox" id="chk_Rel" onchange="do_preview()" onpropertychange="do_preview()" />&nbsp;[[YouTubeRel]]  -->
											<!--		<input type="checkbox" id="chk_ShowBorder" onchange="do_preview()" onpropertychange="do_preview()" />&nbsp;[[ShowBorder]]<br />  -->
													<input type="checkbox" id="chk_AllowFullScreen" checked="checked" onchange="do_preview()" onpropertychange="do_preview()" />&nbsp;[[AllowFullScreen]]
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</fieldset>
						<div style="padding-top:10px;">
<input class="formbutton" type="button" value="   [[Insert]]   " onclick="do_insert()" />&nbsp;&nbsp;&nbsp;
<input class="formbutton" type="button" value="   [[Cancel]]   " onclick="do_Close()" />
						</div>
					</td>
				</tr>
			</table>				
		</div>
	</body>
	<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogFoot.js"></script>
	<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_YouTube.js"></script>
</html>