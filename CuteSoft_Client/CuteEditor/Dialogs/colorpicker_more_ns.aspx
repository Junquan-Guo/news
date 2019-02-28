<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<script runat="server">
string GetDialogQueryString;
override protected void OnInit(EventArgs args)
{
	if(Context.Request.QueryString["Dialog"]=="Standard")
	{	
	if(Context.Request.QueryString["IsFrame"]==null)
	{
		string FrameSrc="colorpicker_more_ns.aspx?IsFrame=1&"+Request.ServerVariables["QUERY_STRING"];
		CuteEditor.CEU.WriteDialogOuterFrame(Context,"[[MoreColors]]",FrameSrc);
		Context.Response.End();
	}
	}
	string s="";
	if(Context.Request.QueryString["Dialog"]=="Standard")	
		s="&Dialog=Standard";
	
	GetDialogQueryString="Theme="+Context.Request.QueryString["Theme"]+s;
	base.OnInit(args);
}
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server" ID="Head1">
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)" />
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)" />
		<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogHead.js"></script>
		<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_ColorPicker.js"></script>
		<link href='Load.ashx?type=themecss&file=dialog.css&theme=[[_Theme_]]' type="text/css"
			rel="stylesheet" />
		<style type="text/css">
			.colorcell
			{
				width:16px;
				height:17px;
				cursor:hand;
			}
			.colordiv,.customdiv
			{
				border:solid 1px #808080;
				width:16px;
				height:17px;
				font-size:1px;
			}
		</style>
		<title>[[CustomColor]]</title>
		<link rel="stylesheet" type="text/css" href="Load.ashx?type=style&amp;file=ColorPicker_NS.css" />
		<script type="text/javascript" src="Load.ashx?type=dialogscript&amp;file=Dialog_ColorPicker_NS.js"></script>
	</head>
	<body>
		<div id="container">
			<div class="tab-pane-control tab-pane" id="tabPane1">
				<div class="tab-row">
					<h2 class="tab">
						<a tabindex="-1" href='colorpicker.aspx?<%=GetDialogQueryString%>'>
							<span style="white-space:nowrap;">
								[[WebPalette]]
							</span>
						</a>
					</h2>
					<h2 class="tab">
						<a tabindex="-1" href='colorpicker_basic.aspx?<%=GetDialogQueryString%>'>
							<span style="white-space:nowrap;">
									[[NamedColors]]
								</span>
						</a>
					</h2>
					<h2 class="tab selected">
						<a tabindex="-1" href='colorpicker_more.aspx?<%=GetDialogQueryString%>'>
							<span style="white-space:nowrap;">
									[[CustomColor]]
								</span>
						</a>
					</h2>
				</div>
				<div class="tab-page">
					<div id="colorpickerpanel" style="position:relative;text-align:left;height:350px">
						<!--
-----------------------------------------------------
Author: Lewis E. Moten III
Date: May, 16, 2004
Homepage: http://www.lewismoten.com
Email: lewis@moten.com
-----------------------------------------------------
-->
						<div id="pnlGradient_Top"></div>
						<div id="pnlGradient_Background1"></div>
						<div id="pnlGradient_Background2"></div>
						<img id="imgGradient" src="ColorSpace1.png">
						<div id="pnlGradientRgb_Overlay1"></div>
						<div id="pnlGradientRgb_Overlay2"></div>
						<img id="pnlVerticalHsbSaturation_Hue" src="Vertical1.png">
						<div id="pnlVertical_Background2"></div>
						<div id="pnlVertical_Background1"></div>
						<div id="pnlVertical_Top"></div>
						<!-- HSB: Hue -->
						<DIV id="pnlGradientHsbHue_Hue"></DIV>
						<DIV id="pnlVerticalHsbHue_Background"></DIV>
						<div id="pnlOldColor"></div>
						<div id="pnlOldColorBorder"></div>
						<div id="pnlNewColor"></div>
						<div id="pnlNewColorBorder"></div>
						<div id="pnlWebSafeColor" title="Click to select web safe color"></div>
						<div id="pnlWebSafeColorBorder"></div>
						<div id="pnlVerticalPosition"></div>
						<div id="pnlGradientPosition"></div>
						<DIV id="lblSelectColorMessage">[[SelectColor]]:</DIV>
						<div id="lblRecent">[[Recent]]:</div>
						<div id="pnlRecentBorder">
							<div id="pnlRecentBorder1"></div>
							<div id="pnlRecentBorder2"></div>
							<div id="pnlRecentBorder3"></div>
							<div id="pnlRecentBorder4"></div>
							<div id="pnlRecentBorder5"></div>
							<div id="pnlRecentBorder6"></div>
							<div id="pnlRecentBorder7"></div>
							<div id="pnlRecentBorder8"></div>
							<div id="pnlRecentBorder9"></div>
							<div id="pnlRecentBorder10"></div>
							<div id="pnlRecentBorder11"></div>
							<div id="pnlRecentBorder12"></div>
							<div id="pnlRecentBorder13"></div>
							<div id="pnlRecentBorder14"></div>
							<div id="pnlRecentBorder15"></div>
							<div id="pnlRecentBorder16"></div>
							<div id="pnlRecentBorder17"></div>
							<div id="pnlRecentBorder18"></div>
							<div id="pnlRecentBorder19"></div>
							<div id="pnlRecentBorder20"></div>
							<div id="pnlRecentBorder21"></div>
							<div id="pnlRecentBorder22"></div>
							<div id="pnlRecentBorder23"></div>
							<div id="pnlRecentBorder24"></div>
							<div id="pnlRecentBorder25"></div>
							<div id="pnlRecentBorder26"></div>
							<div id="pnlRecentBorder27"></div>
							<div id="pnlRecentBorder28"></div>
							<div id="pnlRecentBorder29"></div>
							<div id="pnlRecentBorder30"></div>
							<div id="pnlRecentBorder31"></div>
							<div id="pnlRecentBorder32"></div>
						</div>
						<div id="pnlRecent">
							<div id="pnlRecent1"></div>
							<div id="pnlRecent2"></div>
							<div id="pnlRecent3"></div>
							<div id="pnlRecent4"></div>
							<div id="pnlRecent5"></div>
							<div id="pnlRecent6"></div>
							<div id="pnlRecent7"></div>
							<div id="pnlRecent8"></div>
							<div id="pnlRecent9"></div>
							<div id="pnlRecent10"></div>
							<div id="pnlRecent11"></div>
							<div id="pnlRecent12"></div>
							<div id="pnlRecent13"></div>
							<div id="pnlRecent14"></div>
							<div id="pnlRecent15"></div>
							<div id="pnlRecent16"></div>
							<div id="pnlRecent17"></div>
							<div id="pnlRecent18"></div>
							<div id="pnlRecent19"></div>
							<div id="pnlRecent20"></div>
							<div id="pnlRecent21"></div>
							<div id="pnlRecent22"></div>
							<div id="pnlRecent23"></div>
							<div id="pnlRecent24"></div>
							<div id="pnlRecent25"></div>
							<div id="pnlRecent26"></div>
							<div id="pnlRecent27"></div>
							<div id="pnlRecent28"></div>
							<div id="pnlRecent29"></div>
							<div id="pnlRecent30"></div>
							<div id="pnlRecent31"></div>
							<div id="pnlRecent32"></div>
						</div>
						<div id="lblHex">#</div>
						<form id="frmColorPicker">
							<div id="pnlHSB">
								<div id="pnlHSB_Hue" title="Hue">
									<INPUT type="radio" id="rdoHSB_Hue" name="ColorType" checked>
									<div id="lblHSB_Hue">H:</div>
									<INPUT type="text" id="txtHSB_Hue">
									<div id="lblUnitHSB_Hue"></div>
								</div>
								<div id="pnlHSB_Saturation" title="Saturation">
									<INPUT type="radio" id="rdoHSB_Saturation" name="ColorType">
									<div id="lblHSB_Saturation">S:</div>
									<INPUT type="text" id="txtHSB_Saturation">
									<div id="lblUnitHSB_Saturation">%</div>
								</div>
								<div id="pnlHSB_Brightness" title="Brightness">
									<INPUT type="radio" id="rdoHSB_Brightness" name="ColorType">
									<div id="lblHSB_Brightness">B:</div>
									<INPUT type="text" id="txtHSB_Brightness">
									<div id="lblUnitHSB_Brightness">%</div>
								</div>
							</div>
							<div id="pnlRGB">
								<div id="pnlRGB_Red" title="Red">
									<div id="lblRGB_Red">R:</div>
									<INPUT type="text" id="txtRGB_Red">
								</div>
								<div id="pnlRGB_Green" title="Green">
									<div id="lblRGB_Green">G:</div>
									<INPUT type="text" id="txtRGB_Green">
								</div>
								<div id="pnlRGB_Blue" title="Blue">
									<div id="lblRGB_Blue">B:</div>
									<INPUT type="text" id="txtRGB_Blue">
								</div>
							</div>
							<INPUT type="text" id="txtHex" maxlength="6"> <INPUT id="btnWebSafeColor" type="button" title="Warning: not a web safe color" class="Button">
							<INPUT id="btnOK" type="button" value="OK" class="Button"> <INPUT id="btnCancel" type="button" value="Cancel" class="Button">
							<INPUT id="btnAbout" type="button" value="About" class="Button" style="display:none">
						</form>
					</div>
				</div>
				<div id="container-bottom">
<input type="button" id="buttonok" value="[[OK]]" class="formbutton" onclick="do_insert();" /> 
&nbsp;&nbsp;&nbsp;&nbsp; 
<input type="button" id="buttoncancel" value="[[Cancel]]" class="formbutton" onclick="do_Close();" />
				</div>
			</div>
	</body>
</html>