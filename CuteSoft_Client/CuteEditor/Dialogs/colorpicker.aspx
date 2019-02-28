<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<script runat="server">
string GetDialogQueryString;
override protected void OnInit(EventArgs args)
{
	if(Context.Request.QueryString["Dialog"]=="Standard")
	{	
		if(Context.Request.QueryString["IsFrame"]==null)
		{
			string FrameSrc="colorpicker.aspx?IsFrame=1&"+Request.ServerVariables["QUERY_STRING"];
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
		<title>[[WebPalette]] </title>
		<meta http-equiv="Page-Enter" content="blendTrans(Duration=0.1)" />
		<meta http-equiv="Page-Exit" content="blendTrans(Duration=0.1)" />
		<script type="text/javascript" src="Load.ashx?type=dialogscript&file=DialogHead.js"></script>
		<script type="text/javascript" src="Load.ashx?type=dialogscript&file=Dialog_ColorPicker.js"></script>
		<link href='Load.ashx?type=themecss&file=dialog.css&theme=[[_Theme_]]' type="text/css"	rel="stylesheet" />
		<style type="text/css">
			.colorcell
			{
				width:22px;
				height:11px;
				cursor:hand;
			}
			.colordiv
			{
				border:solid 1px #808080;
				width:22px;
				height:11px;
				font-size:1px;
			}
		</style>
		<script>
var OxO42a3=["0","#","length","\x3Ctr\x3E","\x3Ctd class=\x27colorcell\x27\x3E\x3Cdiv class=\x27colordiv\x27 style=\x27background-color:","\x27 cvalue=\x27","\x27 title=\x27","\x27\x3E\x26nbsp;\x3C/div\x3E\x3C/td\x3E","\x3C/tr\x3E"];function DoubleHex(Ox8){if(Ox8<16){return OxO42a3[0]+Ox8.toString(16);} ;return Ox8.toString(16);} ;function ToHexString(Oxa,Oxb,b){return (OxO42a3[1]+DoubleHex(Oxa*51)+DoubleHex(Oxb*51)+DoubleHex(b*51)).toUpperCase();} ;function MakeHex(z,x,y){var Ox11=z%2;var Ox12=(z-Ox11)/2;z=Ox11*3+Ox12;if(z<3){x=5-x;} ;if(z==1||z==4){y=5-y;} ;return ToHexString(5-y,5-x,5-z);} ;var colors= new Array(216);for(var z=0;z<6;z++){for(var x=0;x<6;x++){for(var y=0;y<6;y++){var hex=MakeHex(z,x,y);var xx=(z%2)*6+x;var yy=Math.floor(z/2)*6+y;colors[yy*12+xx]=hex;} ;} ;} ;var arr=[];for(var i=0;i<colors[OxO42a3[2]];i++){if(i%12==0){arr.push(OxO42a3[3]);} ;arr.push(OxO42a3[4]);arr.push(colors[i]);arr.push(OxO42a3[5]);arr.push(colors[i]);arr.push(OxO42a3[6]);arr.push(colors[i]);arr.push(OxO42a3[7]);if(i%12==11){arr.push(OxO42a3[8]);} ;} ;
		</script>
	</head>
	<body>
	<div id="container">
			<div class="tab-pane-control tab-pane" id="tabPane1">
				<div class="tab-row">
					<h2 class="tab selected">
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
					<h2 class="tab">
							<a tabindex="-1" href='colorpicker_more.aspx?<%=GetDialogQueryString%>'>
								<span style="white-space:nowrap;">
									[[CustomColor]]
								</span>
							</a>
					</h2>
				</div>
				<div class="tab-page">
					<table cellSpacing='2' cellPadding="1" align="center">
						<script>
							var OxO27b0=[""];document.write(arr.join(OxO27b0[0]));
						</script>
						<tr>
							<td colspan="12" height="12"><p align="left"></p>
							</td>
						</tr>
						<tr>
							<td colspan="12" valign="middle" height="24">								
<span style="height:24px;width:50px;vertical-align:middle;">[[Color]]: </span>&nbsp;
<input type="text" id="divpreview" size="7" maxlength="7" style="width:180px;height:24px;border:#a0a0a0 1px solid; Padding:4;"/>
							</td>
						</tr>
					</table>
				</div>
			</div>
		<div id="container-bottom">
			<input type="button" id="buttonok" value="[[OK]]" class="formbutton" style="width:70px"	onclick="do_insert();" /> 
			&nbsp;&nbsp;&nbsp;&nbsp; 
			<input type="button" id="buttoncancel" value="[[Cancel]]" class="formbutton" style="width:70px"	onclick="do_Close();" />
		</div>
	</div>
	</body>
</html>