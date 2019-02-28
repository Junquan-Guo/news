<%@ Page Language="C#" Inherits="CuteEditor.EditorUtilityPage" %>
<script runat="server">
string GetDialogQueryString;
override protected void OnInit(EventArgs args)
{
	if(Context.Request.QueryString["Dialog"]=="Standard")
	{	
	if(Context.Request.QueryString["IsFrame"]==null)
	{
		string FrameSrc="colorpicker_basic.aspx?IsFrame=1&"+Request.ServerVariables["QUERY_STRING"];
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
	<head runat="server">
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
		<title>[[NamedColors]]</title>
		<script>
								
		var OxO5fcd=["Green","#008000","Lime","#00FF00","Teal","#008080","Aqua","#00FFFF","Navy","#000080","Blue","#0000FF","Purple","#800080","Fuchsia","#FF00FF","Maroon","#800000","Red ","#FF0000","Olive","#808000","Yellow","#FFFF00","White","#FFFFFF","Silver","#C0C0C0","Gray","#808080","Black","#000000","DarkOliveGreen","#556B2F","DarkGreen","#006400","DarkSlateGray","#2F4F4F","SlateGray","#708090","DarkBlue","#00008B","MidnightBlue","#191970","Indigo","#4B0082","DarkMagenta","#8B008B","Brown","#A52A2A","DarkRed","#8B0000","Sienna","#A0522D","SaddleBrown","#8B4513","DarkGoldenrod","#B8860B","Beige","#F5F5DC","HoneyDew","#F0FFF0","DimGray","#696969","OliveDrab","#6B8E23","ForestGreen","#228B22","DarkCyan","#008B8B","LightSlateGray","#778899","MediumBlue","#0000CD","DarkSlateBlue","#483D8B","DarkViolet","#9400D3","MediumVioletRed","#C71585","IndianRed","#CD5C5C","Firebrick","#B22222","Chocolate","#D2691E","Peru","#CD853F","Goldenrod","#DAA520","LightGoldenrodYellow","#FAFAD2","MintCream","#F5FFFA","DarkGray","#A9A9A9","YellowGreen","#9ACD32","SeaGreen","#2E8B57","CadetBlue","#5F9EA0","SteelBlue","#4682B4","RoyalBlue","#4169E1","BlueViolet","#8A2BE2","DarkOrchid","#9932CC","DeepPink","#FF1493","RosyBrown","#BC8F8F","Crimson","#DC143C","DarkOrange","#FF8C00","BurlyWood","#DEB887","DarkKhaki","#BDB76B","LightYellow","#FFFFE0","Azure","#F0FFFF","LightGray","#D3D3D3","LawnGreen","#7CFC00","MediumSeaGreen","#3CB371","LightSeaGreen","#20B2AA","DeepSkyBlue","#00BFFF","DodgerBlue","#1E90FF","SlateBlue","#6A5ACD","MediumOrchid","#BA55D3","PaleVioletRed","#DB7093","Salmon","#FA8072","OrangeRed","#FF4500","SandyBrown","#F4A460","Tan","#D2B48C","Gold","#FFD700","Ivory","#FFFFF0","GhostWhite","#F8F8FF","Gainsboro","#DCDCDC","Chartreuse","#7FFF00","LimeGreen","#32CD32","MediumAquamarine","#66CDAA","DarkTurquoise","#00CED1","CornflowerBlue","#6495ED","MediumSlateBlue","#7B68EE","Orchid","#DA70D6","HotPink","#FF69B4","LightCoral","#F08080","Tomato","#FF6347","Orange","#FFA500","Bisque","#FFE4C4","Khaki","#F0E68C","Cornsilk","#FFF8DC","Linen","#FAF0E6","WhiteSmoke","#F5F5F5","GreenYellow","#ADFF2F","DarkSeaGreen","#8FBC8B","Turquoise","#40E0D0","MediumTurquoise","#48D1CC","SkyBlue","#87CEEB","MediumPurple","#9370DB","Violet","#EE82EE","LightPink","#FFB6C1","DarkSalmon","#E9967A","Coral","#FF7F50","NavajoWhite","#FFDEAD","BlanchedAlmond","#FFEBCD","PaleGoldenrod","#EEE8AA","Oldlace","#FDF5E6","Seashell","#FFF5EE","PaleGreen","#98FB98","SpringGreen","#00FF7F","Aquamarine","#7FFFD4","PowderBlue","#B0E0E6","LightSkyBlue","#87CEFA","LightSteelBlue","#B0C4DE","Plum","#DDA0DD","Pink","#FFC0CB","LightSalmon","#FFA07A","Wheat","#F5DEB3","Moccasin","#FFE4B5","AntiqueWhite","#FAEBD7","LemonChiffon","#FFFACD","FloralWhite","#FFFAF0","Snow","#FFFAFA","AliceBlue","#F0F8FF","LightGreen","#90EE90","MediumSpringGreen","#00FA9A","PaleTurquoise","#AFEEEE","LightCyan","#E0FFFF","LightBlue","#ADD8E6","Lavender","#E6E6FA","Thistle","#D8BFD8","MistyRose","#FFE4E1","Peachpuff","#FFDAB9","PapayaWhip","#FFEFD5"];var colorlist=[{n:OxO5fcd[0],h:OxO5fcd[1]},{n:OxO5fcd[2],h:OxO5fcd[3]},{n:OxO5fcd[4],h:OxO5fcd[5]},{n:OxO5fcd[6],h:OxO5fcd[7]},{n:OxO5fcd[8],h:OxO5fcd[9]},{n:OxO5fcd[10],h:OxO5fcd[11]},{n:OxO5fcd[12],h:OxO5fcd[13]},{n:OxO5fcd[14],h:OxO5fcd[15]},{n:OxO5fcd[16],h:OxO5fcd[17]},{n:OxO5fcd[18],h:OxO5fcd[19]},{n:OxO5fcd[20],h:OxO5fcd[21]},{n:OxO5fcd[22],h:OxO5fcd[23]},{n:OxO5fcd[24],h:OxO5fcd[25]},{n:OxO5fcd[26],h:OxO5fcd[27]},{n:OxO5fcd[28],h:OxO5fcd[29]},{n:OxO5fcd[30],h:OxO5fcd[31]}];var colormore=[{n:OxO5fcd[32],h:OxO5fcd[33]},{n:OxO5fcd[34],h:OxO5fcd[35]},{n:OxO5fcd[36],h:OxO5fcd[37]},{n:OxO5fcd[38],h:OxO5fcd[39]},{n:OxO5fcd[40],h:OxO5fcd[41]},{n:OxO5fcd[42],h:OxO5fcd[43]},{n:OxO5fcd[44],h:OxO5fcd[45]},{n:OxO5fcd[46],h:OxO5fcd[47]},{n:OxO5fcd[48],h:OxO5fcd[49]},{n:OxO5fcd[50],h:OxO5fcd[51]},{n:OxO5fcd[52],h:OxO5fcd[53]},{n:OxO5fcd[54],h:OxO5fcd[55]},{n:OxO5fcd[56],h:OxO5fcd[57]},{n:OxO5fcd[58],h:OxO5fcd[59]},{n:OxO5fcd[60],h:OxO5fcd[61]},{n:OxO5fcd[62],h:OxO5fcd[63]},{n:OxO5fcd[64],h:OxO5fcd[65]},{n:OxO5fcd[66],h:OxO5fcd[67]},{n:OxO5fcd[68],h:OxO5fcd[69]},{n:OxO5fcd[70],h:OxO5fcd[71]},{n:OxO5fcd[72],h:OxO5fcd[73]},{n:OxO5fcd[74],h:OxO5fcd[75]},{n:OxO5fcd[76],h:OxO5fcd[77]},{n:OxO5fcd[78],h:OxO5fcd[79]},{n:OxO5fcd[80],h:OxO5fcd[81]},{n:OxO5fcd[82],h:OxO5fcd[83]},{n:OxO5fcd[84],h:OxO5fcd[85]},{n:OxO5fcd[86],h:OxO5fcd[87]},{n:OxO5fcd[88],h:OxO5fcd[89]},{n:OxO5fcd[90],h:OxO5fcd[91]},{n:OxO5fcd[92],h:OxO5fcd[93]},{n:OxO5fcd[94],h:OxO5fcd[95]},{n:OxO5fcd[96],h:OxO5fcd[97]},{n:OxO5fcd[98],h:OxO5fcd[99]},{n:OxO5fcd[100],h:OxO5fcd[101]},{n:OxO5fcd[102],h:OxO5fcd[103]},{n:OxO5fcd[104],h:OxO5fcd[105]},{n:OxO5fcd[106],h:OxO5fcd[107]},{n:OxO5fcd[108],h:OxO5fcd[109]},{n:OxO5fcd[110],h:OxO5fcd[111]},{n:OxO5fcd[112],h:OxO5fcd[113]},{n:OxO5fcd[114],h:OxO5fcd[115]},{n:OxO5fcd[116],h:OxO5fcd[117]},{n:OxO5fcd[118],h:OxO5fcd[119]},{n:OxO5fcd[120],h:OxO5fcd[121]},{n:OxO5fcd[122],h:OxO5fcd[123]},{n:OxO5fcd[124],h:OxO5fcd[125]},{n:OxO5fcd[126],h:OxO5fcd[127]},{n:OxO5fcd[128],h:OxO5fcd[129]},{n:OxO5fcd[130],h:OxO5fcd[131]},{n:OxO5fcd[132],h:OxO5fcd[133]},{n:OxO5fcd[134],h:OxO5fcd[135]},{n:OxO5fcd[136],h:OxO5fcd[137]},{n:OxO5fcd[138],h:OxO5fcd[139]},{n:OxO5fcd[140],h:OxO5fcd[141]},{n:OxO5fcd[142],h:OxO5fcd[143]},{n:OxO5fcd[144],h:OxO5fcd[145]},{n:OxO5fcd[146],h:OxO5fcd[147]},{n:OxO5fcd[148],h:OxO5fcd[149]},{n:OxO5fcd[150],h:OxO5fcd[151]},{n:OxO5fcd[152],h:OxO5fcd[153]},{n:OxO5fcd[154],h:OxO5fcd[155]},{n:OxO5fcd[156],h:OxO5fcd[157]},{n:OxO5fcd[158],h:OxO5fcd[159]},{n:OxO5fcd[160],h:OxO5fcd[161]},{n:OxO5fcd[162],h:OxO5fcd[163]},{n:OxO5fcd[164],h:OxO5fcd[165]},{n:OxO5fcd[166],h:OxO5fcd[167]},{n:OxO5fcd[168],h:OxO5fcd[169]},{n:OxO5fcd[170],h:OxO5fcd[171]},{n:OxO5fcd[172],h:OxO5fcd[173]},{n:OxO5fcd[174],h:OxO5fcd[175]},{n:OxO5fcd[176],h:OxO5fcd[177]},{n:OxO5fcd[178],h:OxO5fcd[179]},{n:OxO5fcd[180],h:OxO5fcd[181]},{n:OxO5fcd[182],h:OxO5fcd[183]},{n:OxO5fcd[184],h:OxO5fcd[185]},{n:OxO5fcd[186],h:OxO5fcd[187]},{n:OxO5fcd[188],h:OxO5fcd[189]},{n:OxO5fcd[190],h:OxO5fcd[191]},{n:OxO5fcd[192],h:OxO5fcd[193]},{n:OxO5fcd[194],h:OxO5fcd[195]},{n:OxO5fcd[196],h:OxO5fcd[197]},{n:OxO5fcd[198],h:OxO5fcd[199]},{n:OxO5fcd[200],h:OxO5fcd[201]},{n:OxO5fcd[202],h:OxO5fcd[203]},{n:OxO5fcd[204],h:OxO5fcd[205]},{n:OxO5fcd[206],h:OxO5fcd[207]},{n:OxO5fcd[208],h:OxO5fcd[209]},{n:OxO5fcd[210],h:OxO5fcd[211]},{n:OxO5fcd[212],h:OxO5fcd[213]},{n:OxO5fcd[214],h:OxO5fcd[215]},{n:OxO5fcd[216],h:OxO5fcd[217]},{n:OxO5fcd[218],h:OxO5fcd[219]},{n:OxO5fcd[220],h:OxO5fcd[221]},{n:OxO5fcd[156],h:OxO5fcd[157]},{n:OxO5fcd[222],h:OxO5fcd[223]},{n:OxO5fcd[224],h:OxO5fcd[225]},{n:OxO5fcd[226],h:OxO5fcd[227]},{n:OxO5fcd[228],h:OxO5fcd[229]},{n:OxO5fcd[230],h:OxO5fcd[231]},{n:OxO5fcd[232],h:OxO5fcd[233]},{n:OxO5fcd[234],h:OxO5fcd[235]},{n:OxO5fcd[236],h:OxO5fcd[237]},{n:OxO5fcd[238],h:OxO5fcd[239]},{n:OxO5fcd[240],h:OxO5fcd[241]},{n:OxO5fcd[242],h:OxO5fcd[243]},{n:OxO5fcd[244],h:OxO5fcd[245]},{n:OxO5fcd[246],h:OxO5fcd[247]},{n:OxO5fcd[248],h:OxO5fcd[249]},{n:OxO5fcd[250],h:OxO5fcd[251]},{n:OxO5fcd[252],h:OxO5fcd[253]},{n:OxO5fcd[254],h:OxO5fcd[255]},{n:OxO5fcd[256],h:OxO5fcd[257]},{n:OxO5fcd[258],h:OxO5fcd[259]},{n:OxO5fcd[260],h:OxO5fcd[261]},{n:OxO5fcd[262],h:OxO5fcd[263]},{n:OxO5fcd[264],h:OxO5fcd[265]},{n:OxO5fcd[266],h:OxO5fcd[267]},{n:OxO5fcd[268],h:OxO5fcd[269]},{n:OxO5fcd[270],h:OxO5fcd[271]},{n:OxO5fcd[272],h:OxO5fcd[273]}];
		
		</script>
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
					<h2 class="tab selected">
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
					<table class="colortable" align="center">
						<tr>
							<td colspan="16" height="16"><p align="left">Basic:
								</p>
							</td>
						</tr>
						<tr>
							<script>
								var OxO9106=["length","\x3Ctd class=\x27colorcell\x27\x3E\x3Cdiv class=\x27colordiv\x27 style=\x27background-color:","\x27 title=\x27"," ","\x27 cname=\x27","\x27 cvalue=\x27","\x27\x3E\x3C/div\x3E\x3C/td\x3E",""];var arr=[];for(var i=0;i<colorlist[OxO9106[0]];i++){arr.push(OxO9106[1]);arr.push(colorlist[i].n);arr.push(OxO9106[2]);arr.push(colorlist[i].n);arr.push(OxO9106[3]);arr.push(colorlist[i].h);arr.push(OxO9106[4]);arr.push(colorlist[i].n);arr.push(OxO9106[5]);arr.push(colorlist[i].h);arr.push(OxO9106[6]);} ;document.write(arr.join(OxO9106[7]));
							</script>
						</tr>
						<tr>
							<td colspan="16" height="12"><p align="left"></p>
							</td>
						</tr>
						<tr>
							<td colspan="16"><p align="left">Additional:
								</p>
							</td>
						</tr>
						<script>
							var OxO91b9=["length","\x3Ctr\x3E","\x3Ctd class=\x27colorcell\x27\x3E\x3Cdiv class=\x27colordiv\x27 style=\x27background-color:","\x27 title=\x27"," ","\x27 cname=\x27","\x27 cvalue=\x27","\x27\x3E\x3C/div\x3E\x3C/td\x3E","\x3C/tr\x3E",""];var arr=[];for(var i=0;i<colormore[OxO91b9[0]];i++){if(i%16==0){arr.push(OxO91b9[1]);} ;arr.push(OxO91b9[2]);arr.push(colormore[i].n);arr.push(OxO91b9[3]);arr.push(colormore[i].n);arr.push(OxO91b9[4]);arr.push(colormore[i].h);arr.push(OxO91b9[5]);arr.push(colormore[i].n);arr.push(OxO91b9[6]);arr.push(colormore[i].h);arr.push(OxO91b9[7]);if(i%16==15){arr.push(OxO91b9[8]);} ;} ;if(colormore%16>0){arr.push(OxO91b9[8]);} ;document.write(arr.join(OxO91b9[9]));
						</script>
						<tr>
							<td colspan="16" height="8">
							</td>
						</tr>
						<tr>
							<td colspan="16" height="12">
								<input checked id="CheckboxColorNames" style="width: 16px; height: 20px" type="checkbox">
								<span style="width: 118px;">Use color names</span>
							</td>
						</tr>
						<tr>
							<td colspan="16" height="12">
							</td>
						</tr>
						<tr>
							<td colspan="16" valign="middle" height="24">
							<span style="height:24px;width:50px;vertical-align:middle;">Color : </span>&nbsp;
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

