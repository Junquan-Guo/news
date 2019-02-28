var OxO900c=["onerror","onload","onclick","btnCancel","btnOK","onkeyup","txtHSB_Hue","onkeypress","txtHSB_Saturation","txtHSB_Brightness","txtRGB_Red","txtRGB_Green","txtRGB_Blue","txtHex","btnWebSafeColor","rdoHSB_Hue","rdoHSB_Saturation","rdoHSB_Brightness","rdoRGB_Red","rdoRGB_Green","rdoRGB_Blue","onmousemove","onmousedown","onmouseup","{format}","length","\x5C{","\x5C}","BadNumber","A number between {0} and {1} is required. Closest value inserted.","Title","Color Picker","SelectAColor","Select a color:","OKButton","OK","CancelButton","Cancel","AboutButton","About","Recent","WebSafeWarning","Warning: not a web safe color","WebSafeClick","Click to select web safe color","HsbHue","H:","HsbHueTooltip","Hue","HsbHueUnit","%","HsbSaturation","S:","HsbSaturationTooltip","Saturation","HsbSaturationUnit","HsbBrightness","B:","HsbBrightnessTooltip","Brightness","HsbBrightnessUnit","RgbRed","R:","RgbRedTooltip","Red","RgbGreen","G:","RgbGreenTooltip","Green","RgbBlue","RgbBlueTooltip","Blue","Hex","#","RecentTooltip","Recent:","\x0D\x0ALewies Color Pickerversion 1.1\x0D\x0A\x0D\x0AThis form was created by Lewis Moten in May of 2004.\x0D\x0AIt simulates the color picker in a popular graphics application.\x0D\x0AIt gives users a visual way to choose colors from a large and dynamic palette.\x0D\x0A\x0D\x0AVisit the authors web page?\x0D\x0Awww.lewismoten.com\x0D\x0A","UNDEFINED","FFFFFF","value","checked","ColorMode","ColorType","RecentColors","","pnlRecent","all","border","style","0px","backgroundColor","srcElement","display","none","title","innerHTML","backgroundPosition","px ","px","000000","zIndex","01234567879","keyCode","abcdef","01234567879ABCDEF","returnValue","0123456789ABCDEFabcdef","0","id","pnlGradient_Top","pnlVertical_Top","top","opacity","filters","backgroundImage","url(Load.ashx?type=image\x26file=cpie_GradientPositionDark.gif)","url(Load.ashx?type=image\x26file=cpie_GradientPositionLight.gif)","cancelBubble","clientX","clientY","className","GradientNormal","button","GradientFullScreen","=","; path=/;"," expires=",";","cookie","00336699CCFF","0x","do_select","frm","__cphex"];var POSITIONADJUSTX=21;var POSITIONADJUSTY=46;var POSITIONADJUSTZ=43;var msg= new Object();window[OxO900c[0]]=alert;var ColorMode=1;var GradientPositionDark= new Boolean(false);var frm= new Object();window[OxO900c[1]]=window_load;function initialize(){frm[OxO900c[3]][OxO900c[2]]=btnCancel_Click;frm[OxO900c[4]][OxO900c[2]]=btnOK_Click;frm[OxO900c[6]][OxO900c[5]]=Hsb_Changed;frm[OxO900c[6]][OxO900c[7]]=validateNumber;frm[OxO900c[8]][OxO900c[5]]=Hsb_Changed;frm[OxO900c[8]][OxO900c[7]]=validateNumber;frm[OxO900c[9]][OxO900c[5]]=Hsb_Changed;frm[OxO900c[9]][OxO900c[7]]=validateNumber;frm[OxO900c[10]][OxO900c[5]]=Rgb_Changed;frm[OxO900c[10]][OxO900c[7]]=validateNumber;frm[OxO900c[11]][OxO900c[5]]=Rgb_Changed;frm[OxO900c[11]][OxO900c[7]]=validateNumber;frm[OxO900c[12]][OxO900c[5]]=Rgb_Changed;frm[OxO900c[12]][OxO900c[7]]=validateNumber;frm[OxO900c[13]][OxO900c[5]]=Hex_Changed;frm[OxO900c[13]][OxO900c[7]]=validateHex;frm[OxO900c[14]][OxO900c[2]]=btnWebSafeColor_Click;frm[OxO900c[15]][OxO900c[2]]=rdoHsb_Hue_Click;frm[OxO900c[16]][OxO900c[2]]=rdoHsb_Saturation_Click;frm[OxO900c[17]][OxO900c[2]]=rdoHsb_Brightness_Click;frm[OxO900c[18]][OxO900c[2]]=rdoRgb_Red_Click;frm[OxO900c[19]][OxO900c[2]]=rdoRgb_Green_Click;frm[OxO900c[20]][OxO900c[2]]=rdoRgb_Blue_Click;pnlGradient_Top[OxO900c[2]]=pnlGradient_Top_Click;pnlGradient_Top[OxO900c[21]]=pnlGradient_Top_MouseMove;pnlGradient_Top[OxO900c[22]]=pnlGradient_Top_MouseDown;pnlGradient_Top[OxO900c[23]]=pnlGradient_Top_MouseUp;pnlVertical_Top[OxO900c[2]]=pnlVertical_Top_Click;pnlVertical_Top[OxO900c[21]]=pnlVertical_Top_MouseMove;pnlVertical_Top[OxO900c[22]]=pnlVertical_Top_MouseDown;pnlVertical_Top[OxO900c[23]]=pnlVertical_Top_MouseUp;pnlWebSafeColor[OxO900c[2]]=btnWebSafeColor_Click;pnlWebSafeColorBorder[OxO900c[2]]=btnWebSafeColor_Click;pnlOldColor[OxO900c[2]]=pnlOldClick_Click;lblHSB_Hue[OxO900c[2]]=rdoHsb_Hue_Click;lblHSB_Saturation[OxO900c[2]]=rdoHsb_Saturation_Click;lblHSB_Brightness[OxO900c[2]]=rdoHsb_Brightness_Click;lblRGB_Red[OxO900c[2]]=rdoRgb_Red_Click;lblRGB_Green[OxO900c[2]]=rdoRgb_Green_Click;lblRGB_Blue[OxO900c[2]]=rdoRgb_Blue_Click;pnlGradient_Top.focus();} ;function formatString(Ox2aa){if(!Ox2aa){return OxO900c[24];} ;for(var i=1;i<arguments[OxO900c[25]];i++){Ox2aa=Ox2aa.replace( new RegExp(OxO900c[26]+(i-1)+OxO900c[27]),arguments[i]);} ;return Ox2aa;} ;function AddValue(Ox113,Ox4e){Ox4e=Ox4e.toLowerCase();for(var i=0;i<Ox113[OxO900c[25]];i++){if(Ox113[i]==Ox4e){return ;} ;} ;Ox113[Ox113[OxO900c[25]]]=Ox4e;} ;function SniffLanguage(Ox11){} ;function LoadLanguage(){msg[OxO900c[28]]=OxO900c[29];msg[OxO900c[30]]=OxO900c[31];msg[OxO900c[32]]=OxO900c[33];msg[OxO900c[34]]=OxO900c[35];msg[OxO900c[36]]=OxO900c[37];msg[OxO900c[38]]=OxO900c[39];msg[OxO900c[40]]=OxO900c[40];msg[OxO900c[41]]=OxO900c[42];msg[OxO900c[43]]=OxO900c[44];msg[OxO900c[45]]=OxO900c[46];msg[OxO900c[47]]=OxO900c[48];msg[OxO900c[49]]=OxO900c[50];msg[OxO900c[51]]=OxO900c[52];msg[OxO900c[53]]=OxO900c[54];msg[OxO900c[55]]=OxO900c[50];msg[OxO900c[56]]=OxO900c[57];msg[OxO900c[58]]=OxO900c[59];msg[OxO900c[60]]=OxO900c[50];msg[OxO900c[61]]=OxO900c[62];msg[OxO900c[63]]=OxO900c[64];msg[OxO900c[65]]=OxO900c[66];msg[OxO900c[67]]=OxO900c[68];msg[OxO900c[69]]=OxO900c[57];msg[OxO900c[70]]=OxO900c[71];msg[OxO900c[72]]=OxO900c[73];msg[OxO900c[74]]=OxO900c[75];msg[OxO900c[39]]=OxO900c[76];} ;function localize(){} ;function window_load(){frm=frmColorPicker;LoadLanguage();localize();initialize();var hex=OxO900c[77];if(hex==OxO900c[77]){hex=OxO900c[78];} ;if(hex[OxO900c[25]]==7){hex=hex.substr(1,6);} ;frm[OxO900c[13]][OxO900c[79]]=hex;Hex_Changed();hex=Form_Get_Hex();SetBg(pnlOldColor,hex);frm[OxO900c[82]][ new Number(GetCookie(OxO900c[81])||0)][OxO900c[80]]=true;ColorMode_Changed();var Ox2a0=GetCookie(OxO900c[83])||OxO900c[84];var Ox2b0=msg[OxO900c[74]];for(var i=1;i<33;i++){if(Ox2a0[OxO900c[25]]/6>=i){hex=Ox2a0.substr((i-1)*6,6);var Ox2b1=HexToRgb(hex);var title=formatString(msg.RecentTooltip,hex,Ox2b1[0],Ox2b1[1],Ox2b1[2]);SetBg(document[OxO900c[86]][OxO900c[85]+i],hex);SetTitle(document[OxO900c[86]][OxO900c[85]+i],title);document[OxO900c[86]][OxO900c[85]+i][OxO900c[2]]=pnlRecent_Click;} else {document[OxO900c[86]][OxO900c[85]+i][OxO900c[88]][OxO900c[87]]=OxO900c[89];} ;} ;} ;function pnlRecent_Click(){frm[OxO900c[13]][OxO900c[79]]=event[OxO900c[91]][OxO900c[88]][OxO900c[90]].substr(1,6).toUpperCase();Hex_Changed();} ;function pnlOldClick_Click(){frm[OxO900c[13]][OxO900c[79]]=pnlOldColor[OxO900c[88]][OxO900c[90]].substr(1,6).toUpperCase();Hex_Changed();} ;function rdoHsb_Hue_Click(){frm[OxO900c[15]][OxO900c[80]]=true;ColorMode_Changed();} ;function rdoHsb_Saturation_Click(){frm[OxO900c[16]][OxO900c[80]]=true;ColorMode_Changed();} ;function rdoHsb_Brightness_Click(){frm[OxO900c[17]][OxO900c[80]]=true;ColorMode_Changed();} ;function rdoRgb_Red_Click(){frm[OxO900c[18]][OxO900c[80]]=true;ColorMode_Changed();} ;function rdoRgb_Green_Click(){frm[OxO900c[19]][OxO900c[80]]=true;ColorMode_Changed();} ;function rdoRgb_Blue_Click(){frm[OxO900c[20]][OxO900c[80]]=true;ColorMode_Changed();} ;function Hide(){for(var i=0;i<arguments[OxO900c[25]];i++){arguments[i][OxO900c[88]][OxO900c[92]]=OxO900c[93];} ;} ;function Show(){for(var i=0;i<arguments[OxO900c[25]];i++){arguments[i][OxO900c[88]][OxO900c[92]]=OxO900c[84];} ;} ;function SetValue(){for(var i=0;i<arguments[OxO900c[25]];i+=2){arguments[i][OxO900c[79]]=arguments[i+1];} ;} ;function SetTitle(){for(var i=0;i<arguments[OxO900c[25]];i+=2){arguments[i][OxO900c[94]]=arguments[i+1];} ;} ;function SetHTML(){for(var i=0;i<arguments[OxO900c[25]];i+=2){arguments[i][OxO900c[95]]=arguments[i+1];} ;} ;function SetBg(){for(var i=0;i<arguments[OxO900c[25]];i+=2){arguments[i][OxO900c[88]][OxO900c[90]]=OxO900c[73]+arguments[i+1];} ;} ;function SetBgPosition(){for(var i=0;i<arguments[OxO900c[25]];i+=3){arguments[i][OxO900c[88]][OxO900c[96]]=arguments[i+1]+OxO900c[97]+arguments[i+2]+OxO900c[98];} ;} ;function ColorMode_Changed(){for(var i=0;i<6;i++){if(frm[OxO900c[82]][i][OxO900c[80]]){ColorMode=i;} ;} ;SetCookie(OxO900c[81],ColorMode,60*60*24*365);Hide(pnlGradientHsbHue_Hue,pnlGradientHsbHue_Black,pnlGradientHsbHue_White,pnlVerticalHsbHue_Background,pnlVerticalHsbSaturation_Hue,pnlVerticalHsbSaturation_White,pnlVerticalHsbBrightness_Hue,pnlVerticalHsbBrightness_Black,pnlVerticalRgb_Start,pnlVerticalRgb_End,pnlGradientRgb_Base,pnlGradientRgb_Invert,pnlGradientRgb_Overlay1,pnlGradientRgb_Overlay2);switch(ColorMode){case 0:Show(pnlGradientHsbHue_Hue,pnlGradientHsbHue_Black,pnlGradientHsbHue_White,pnlVerticalHsbHue_Background);Hsb_Changed();break ;;case 1:Show(pnlVerticalHsbSaturation_Hue,pnlVerticalHsbSaturation_White,pnlGradientRgb_Base,pnlGradientRgb_Overlay1,pnlGradientRgb_Overlay2);SetBgPosition(pnlGradientRgb_Base,0,0);SetBg(pnlGradientRgb_Overlay1,OxO900c[78],pnlGradientRgb_Overlay2,OxO900c[99]);pnlGradientRgb_Overlay1[OxO900c[88]][OxO900c[100]]=5;pnlGradientRgb_Overlay2[OxO900c[88]][OxO900c[100]]=6;Hsb_Changed();break ;;case 2:Show(pnlVerticalHsbBrightness_Hue,pnlVerticalHsbBrightness_Black,pnlGradientRgb_Base,pnlGradientRgb_Overlay1,pnlGradientRgb_Overlay2);SetBgPosition(pnlGradientRgb_Base,0,0);SetBg(pnlGradientRgb_Overlay1,OxO900c[99],pnlGradientRgb_Overlay2,OxO900c[78]);pnlGradientRgb_Overlay1[OxO900c[88]][OxO900c[100]]=6;pnlGradientRgb_Overlay2[OxO900c[88]][OxO900c[100]]=5;Hsb_Changed();break ;;case 3:Show(pnlVerticalRgb_Start,pnlVerticalRgb_End,pnlGradientRgb_Base,pnlGradientRgb_Invert);SetBgPosition(pnlGradientRgb_Base,256,0,pnlGradientRgb_Invert,256,0);Rgb_Changed();break ;;case 4:Show(pnlVerticalRgb_Start,pnlVerticalRgb_End,pnlGradientRgb_Base,pnlGradientRgb_Invert);SetBgPosition(pnlGradientRgb_Base,0,256,pnlGradientRgb_Invert,0,256);Rgb_Changed();break ;;case 5:Show(pnlVerticalRgb_Start,pnlVerticalRgb_End,pnlGradientRgb_Base,pnlGradientRgb_Invert);SetBgPosition(pnlGradientRgb_Base,256,256,pnlGradientRgb_Invert,256,256);Rgb_Changed();break ;;default:break ;;} ;} ;function btnWebSafeColor_Click(){var Ox2b1=HexToRgb(frm[OxO900c[13]].value);Ox2b1=RgbToWebSafeRgb(Ox2b1);frm[OxO900c[13]][OxO900c[79]]=RgbToHex(Ox2b1);Hex_Changed();} ;function checkWebSafe(){var Ox2b1=Form_Get_Rgb();if(RgbIsWebSafe(Ox2b1)){Hide(frm.btnWebSafeColor,pnlWebSafeColor,pnlWebSafeColorBorder);} else {Ox2b1=RgbToWebSafeRgb(Ox2b1);SetBg(pnlWebSafeColor,RgbToHex(Ox2b1));Show(frm.btnWebSafeColor,pnlWebSafeColor,pnlWebSafeColorBorder);} ;} ;function validateNumber(){var Ox2c6=String.fromCharCode(event.keyCode);if(IgnoreKey()){return ;} ;if(OxO900c[101].indexOf(Ox2c6)!=-1){return ;} ;event[OxO900c[102]]=0;} ;function validateHex(){if(IgnoreKey()){return ;} ;var Ox2c6=String.fromCharCode(event.keyCode);if(OxO900c[103].indexOf(Ox2c6)!=-1){event[OxO900c[102]]=Ox2c6.toUpperCase().charCodeAt(0);return ;} ;if(OxO900c[104].indexOf(Ox2c6)!=-1){return ;} ;event[OxO900c[102]]=0;} ;function IgnoreKey(){var Ox2c6=String.fromCharCode(event.keyCode);var Ox2c9= new Array(0,8,9,13,27);if(Ox2c6==null){return true;} ;for(var i=0;i<5;i++){if(event[OxO900c[102]]==Ox2c9[i]){return true;} ;} ;return false;} ;function btnCancel_Click(){top.close();} ;function btnOK_Click(){var hex= new String(frm[OxO900c[13]].value);try{window[OxO900c[105]]=hex;} catch(e){} ;recent=GetCookie(OxO900c[83])||OxO900c[84];for(var i=0;i<recent[OxO900c[25]];i+=6){if(recent.substr(i,6)==hex){recent=recent.substr(0,i)+recent.substr(i+6);i-=6;} ;} ;if(recent[OxO900c[25]]>31*6){recent=recent.substr(0,31*6);} ;recent=frm[OxO900c[13]][OxO900c[79]]+recent;SetCookie(OxO900c[83],recent,60*60*24*365);top.close();} ;function SetGradientPosition(x,y){x=x-POSITIONADJUSTX+5;y=y-POSITIONADJUSTY+5;x-=7;y-=27;x=x<0?0:x>255?255:x;y=y<0?0:y>255?255:y;SetBgPosition(pnlGradientPosition,x-5,y-5);switch(ColorMode){case 0:var Ox2cd= new Array(0,0,0);Ox2cd[1]=x/255;Ox2cd[2]=1-(y/255);frm[OxO900c[8]][OxO900c[79]]=Math.round(Ox2cd[1]*100);frm[OxO900c[9]][OxO900c[79]]=Math.round(Ox2cd[2]*100);Hsb_Changed();break ;;case 1:var Ox2cd= new Array(0,0,0);Ox2cd[0]=x/255;Ox2cd[2]=1-(y/255);frm[OxO900c[6]][OxO900c[79]]=Ox2cd[0]==1?0:Math.round(Ox2cd[0]*360);frm[OxO900c[9]][OxO900c[79]]=Math.round(Ox2cd[2]*100);Hsb_Changed();break ;;case 2:var Ox2cd= new Array(0,0,0);Ox2cd[0]=x/255;Ox2cd[1]=1-(y/255);frm[OxO900c[6]][OxO900c[79]]=Ox2cd[0]==1?0:Math.round(Ox2cd[0]*360);frm[OxO900c[8]][OxO900c[79]]=Math.round(Ox2cd[1]*100);Hsb_Changed();break ;;case 3:var Ox2b1= new Array(0,0,0);Ox2b1[1]=255-y;Ox2b1[2]=x;frm[OxO900c[11]][OxO900c[79]]=Ox2b1[1];frm[OxO900c[12]][OxO900c[79]]=Ox2b1[2];Rgb_Changed();break ;;case 4:var Ox2b1= new Array(0,0,0);Ox2b1[0]=255-y;Ox2b1[2]=x;frm[OxO900c[10]][OxO900c[79]]=Ox2b1[0];frm[OxO900c[12]][OxO900c[79]]=Ox2b1[2];Rgb_Changed();break ;;case 5:var Ox2b1= new Array(0,0,0);Ox2b1[0]=x;Ox2b1[1]=255-y;frm[OxO900c[10]][OxO900c[79]]=Ox2b1[0];frm[OxO900c[11]][OxO900c[79]]=Ox2b1[1];Rgb_Changed();break ;;} ;} ;function Hex_Changed(){var hex=Form_Get_Hex();var Ox2b1=HexToRgb(hex);var Ox2cd=RgbToHsb(Ox2b1);Form_Set_Rgb(Ox2b1);Form_Set_Hsb(Ox2cd);SetBg(pnlNewColor,hex);SetupCursors();SetupGradients();checkWebSafe();} ;function Rgb_Changed(){var Ox2b1=Form_Get_Rgb();var Ox2cd=RgbToHsb(Ox2b1);var hex=RgbToHex(Ox2b1);Form_Set_Hsb(Ox2cd);Form_Set_Hex(hex);SetBg(pnlNewColor,hex);SetupCursors();SetupGradients();checkWebSafe();} ;function Hsb_Changed(){var Ox2cd=Form_Get_Hsb();var Ox2b1=HsbToRgb(Ox2cd);var hex=RgbToHex(Ox2b1);Form_Set_Rgb(Ox2b1);Form_Set_Hex(hex);SetBg(pnlNewColor,hex);SetupCursors();SetupGradients();checkWebSafe();} ;function Form_Set_Hex(hex){frm[OxO900c[13]][OxO900c[79]]=hex;} ;function Form_Get_Hex(){var hex= new String(frm[OxO900c[13]].value);for(var i=0;i<hex[OxO900c[25]];i++){if(OxO900c[106].indexOf(hex.substr(i,1))==-1){hex=OxO900c[99];frm[OxO900c[13]][OxO900c[79]]=hex;alert(formatString(msg.BadNumber,OxO900c[99],OxO900c[78]));break ;} ;} ;while(hex[OxO900c[25]]<6){hex=OxO900c[107]+hex;} ;return hex;} ;function Form_Get_Hsb(){var Ox2cd= new Array(0,0,0);Ox2cd[0]= new Number(frm[OxO900c[6]].value)/360;Ox2cd[1]= new Number(frm[OxO900c[8]].value)/100;Ox2cd[2]= new Number(frm[OxO900c[9]].value)/100;if(Ox2cd[0]>1||isNaN(Ox2cd[0])){Ox2cd[0]=1;frm[OxO900c[6]][OxO900c[79]]=360;alert(formatString(msg.BadNumber,0,360));} ;if(Ox2cd[1]>1||isNaN(Ox2cd[1])){Ox2cd[1]=1;frm[OxO900c[8]][OxO900c[79]]=100;alert(formatString(msg.BadNumber,0,100));} ;if(Ox2cd[2]>1||isNaN(Ox2cd[2])){Ox2cd[2]=1;frm[OxO900c[9]][OxO900c[79]]=100;alert(formatString(msg.BadNumber,0,100));} ;return Ox2cd;} ;function Form_Set_Hsb(Ox2cd){SetValue(frm.txtHSB_Hue,Math.round(Ox2cd[0]*360),frm.txtHSB_Saturation,Math.round(Ox2cd[1]*100),frm.txtHSB_Brightness,Math.round(Ox2cd[2]*100));} ;function Form_Get_Rgb(){var Ox2b1= new Array(0,0,0);Ox2b1[0]= new Number(frm[OxO900c[10]].value);Ox2b1[1]= new Number(frm[OxO900c[11]].value);Ox2b1[2]= new Number(frm[OxO900c[12]].value);if(Ox2b1[0]>255||isNaN(Ox2b1[0])||Ox2b1[0]!=Math.round(Ox2b1[0])){Ox2b1[0]=255;frm[OxO900c[10]][OxO900c[79]]=255;alert(formatString(msg.BadNumber,0,255));} ;if(Ox2b1[1]>255||isNaN(Ox2b1[1])||Ox2b1[1]!=Math.round(Ox2b1[1])){Ox2b1[1]=255;frm[OxO900c[11]][OxO900c[79]]=255;alert(formatString(msg.BadNumber,0,255));} ;if(Ox2b1[2]>255||isNaN(Ox2b1[2])||Ox2b1[2]!=Math.round(Ox2b1[2])){Ox2b1[2]=255;frm[OxO900c[12]][OxO900c[79]]=255;alert(formatString(msg.BadNumber,0,255));} ;return Ox2b1;} ;function Form_Set_Rgb(Ox2b1){frm[OxO900c[10]][OxO900c[79]]=Ox2b1[0];frm[OxO900c[11]][OxO900c[79]]=Ox2b1[1];frm[OxO900c[12]][OxO900c[79]]=Ox2b1[2];} ;function SetupCursors(){var Ox2cd=Form_Get_Hsb();var Ox2b1=Form_Get_Rgb();if(RgbToYuv(Ox2b1)[0]>=0.5){SetGradientPositionDark();} else {SetGradientPositionLight();} ;if(event[OxO900c[91]]!=null){if(event[OxO900c[91]][OxO900c[108]]==OxO900c[109]){return ;} ;if(event[OxO900c[91]][OxO900c[108]]==OxO900c[110]){return ;} ;} ;var x;var y;var z;if(ColorMode>=0&&ColorMode<=2){for(var i=0;i<3;i++){Ox2cd[i]*=255;} ;} ;switch(ColorMode){case 0:x=Ox2cd[1];y=Ox2cd[2];z=Ox2cd[0]==0?1:Ox2cd[0];break ;;case 1:x=Ox2cd[0]==0?1:Ox2cd[0];y=Ox2cd[2];z=Ox2cd[1];break ;;case 2:x=Ox2cd[0]==0?1:Ox2cd[0];y=Ox2cd[1];z=Ox2cd[2];break ;;case 3:x=Ox2b1[2];y=Ox2b1[1];z=Ox2b1[0];break ;;case 4:x=Ox2b1[2];y=Ox2b1[0];z=Ox2b1[1];break ;;case 5:x=Ox2b1[0];y=Ox2b1[1];z=Ox2b1[2];break ;;} ;y=255-y;z=255-z;SetBgPosition(pnlGradientPosition,x-5,y-5);pnlVerticalPosition[OxO900c[88]][OxO900c[111]]=(z+27)+OxO900c[98];} ;function SetupGradients(){var Ox2cd=Form_Get_Hsb();var Ox2b1=Form_Get_Rgb();switch(ColorMode){case 0:SetBg(pnlGradientHsbHue_Hue,RgbToHex(HueToRgb(Ox2cd[0])));break ;;case 1:var b= new Array();for(var i=0;i<3;i++){b[i]=Math.round(Ox2cd[2]*255);} ;SetBg(pnlGradientHsbHue_Hue,RgbToHex(HueToRgb(Ox2cd[0])),pnlVerticalHsbSaturation_Hue,RgbToHex(HsbToRgb( new Array(Ox2cd[0],1,Ox2cd[2]))),pnlVerticalHsbSaturation_White,RgbToHex(b));pnlGradientRgb_Overlay1[OxO900c[113]][0][OxO900c[112]]=(100-Math.round(Ox2cd[1]*100));break ;;case 2:SetBg(pnlVerticalHsbBrightness_Hue,RgbToHex(HsbToRgb( new Array(Ox2cd[0],Ox2cd[1],1))));pnlGradientRgb_Overlay1[OxO900c[113]][0][OxO900c[112]]=(100-Math.round(Ox2cd[2]*100));break ;;case 3:pnlGradientRgb_Invert[OxO900c[113]][3][OxO900c[112]]=100-Math.round((Ox2b1[0]/255)*100);SetBg(pnlVerticalRgb_Start,RgbToHex( new Array(0xFF,Ox2b1[1],Ox2b1[2])),pnlVerticalRgb_End,RgbToHex( new Array(0x00,Ox2b1[1],Ox2b1[2])));break ;;case 4:pnlGradientRgb_Invert[OxO900c[113]][3][OxO900c[112]]=100-Math.round((Ox2b1[1]/255)*100);SetBg(pnlVerticalRgb_Start,RgbToHex( new Array(Ox2b1[0],0xFF,Ox2b1[2])),pnlVerticalRgb_End,RgbToHex( new Array(Ox2b1[0],0x00,Ox2b1[2])));break ;;case 5:pnlGradientRgb_Invert[OxO900c[113]][3][OxO900c[112]]=100-Math.round((Ox2b1[2]/255)*100);SetBg(pnlVerticalRgb_Start,RgbToHex( new Array(Ox2b1[0],Ox2b1[1],0xFF)),pnlVerticalRgb_End,RgbToHex( new Array(Ox2b1[0],Ox2b1[1],0x00)));break ;;default:;} ;} ;function SetGradientPositionDark(){if(GradientPositionDark){return ;} ;GradientPositionDark=true;pnlGradientPosition[OxO900c[88]][OxO900c[114]]=OxO900c[115];} ;function SetGradientPositionLight(){if(!GradientPositionDark){return ;} ;GradientPositionDark=false;pnlGradientPosition[OxO900c[88]][OxO900c[114]]=OxO900c[116];} ;function pnlGradient_Top_Click(){event[OxO900c[117]]=true;SetGradientPosition(event[OxO900c[118]]-5,event[OxO900c[119]]-5);pnlGradient_Top[OxO900c[120]]=OxO900c[121];} ;function pnlGradient_Top_MouseMove(){event[OxO900c[117]]=true;if(event[OxO900c[122]]!=1){return ;} ;SetGradientPosition(event[OxO900c[118]]-5,event[OxO900c[119]]-5);} ;function pnlGradient_Top_MouseDown(){event[OxO900c[117]]=true;SetGradientPosition(event[OxO900c[118]]-5,event[OxO900c[119]]-5);pnlGradient_Top[OxO900c[120]]=OxO900c[123];} ;function pnlGradient_Top_MouseUp(){event[OxO900c[117]]=true;SetGradientPosition(event[OxO900c[118]]-5,event[OxO900c[119]]-5);pnlGradient_Top[OxO900c[120]]=OxO900c[121];} ;function Document_MouseUp(){event[OxO900c[117]]=true;pnlGradient_Top[OxO900c[120]]=OxO900c[121];} ;function SetVerticalPosition(z){var z=z-POSITIONADJUSTZ;if(z<27){z=27;} ;if(z>282){z=282;} ;pnlVerticalPosition[OxO900c[88]][OxO900c[111]]=z+OxO900c[98];z=1-((z-27)/255);switch(ColorMode){case 0:if(z==1){z=0;} ;frm[OxO900c[6]][OxO900c[79]]=Math.round(z*360);Hsb_Changed();break ;;case 1:frm[OxO900c[8]][OxO900c[79]]=Math.round(z*100);Hsb_Changed();break ;;case 2:frm[OxO900c[9]][OxO900c[79]]=Math.round(z*100);Hsb_Changed();break ;;case 3:frm[OxO900c[10]][OxO900c[79]]=Math.round(z*255);Rgb_Changed();break ;;case 4:frm[OxO900c[11]][OxO900c[79]]=Math.round(z*255);Rgb_Changed();break ;;case 5:frm[OxO900c[12]][OxO900c[79]]=Math.round(z*255);Rgb_Changed();break ;;} ;} ;function pnlVertical_Top_Click(){SetVerticalPosition(event[OxO900c[119]]-5);event[OxO900c[117]]=true;} ;function pnlVertical_Top_MouseMove(){if(event[OxO900c[122]]!=1){return ;} ;SetVerticalPosition(event[OxO900c[119]]-5);event[OxO900c[117]]=true;} ;function pnlVertical_Top_MouseDown(){SetVerticalPosition(event[OxO900c[119]]-5);event[OxO900c[117]]=true;} ;function pnlVertical_Top_MouseUp(){SetVerticalPosition(event[OxO900c[119]]-5);event[OxO900c[117]]=true;} ;function SetCookie(name,Ox4e,Ox4f){var Ox50=name+OxO900c[124]+escape(Ox4e)+OxO900c[125];if(Ox4f){var Ox51= new Date();Ox51.setSeconds(Ox51.getSeconds()+Ox4f);Ox50+=OxO900c[126]+Ox51.toUTCString()+OxO900c[127];} ;document[OxO900c[128]]=Ox50;} ;function GetCookie(name){var Ox53=document[OxO900c[128]].split(OxO900c[127]);for(var i=0;i<Ox53[OxO900c[25]];i++){var Ox54=Ox53[i].split(OxO900c[124]);if(name==Ox54[0].replace(/\s/g,OxO900c[84])){return unescape(Ox54[1]);} ;} ;} ;function GetCookieDictionary(){var Ox124={};var Ox53=document[OxO900c[128]].split(OxO900c[127]);for(var i=0;i<Ox53[OxO900c[25]];i++){var Ox54=Ox53[i].split(OxO900c[124]);Ox124[Ox54[0].replace(/\s/g,OxO900c[84])]=unescape(Ox54[1]);} ;return Ox124;} ;function RgbIsWebSafe(Ox2b1){var hex=RgbToHex(Ox2b1);for(var i=0;i<3;i++){if(OxO900c[129].indexOf(hex.substr(i*2,2))==-1){return false;} ;} ;return true;} ;function RgbToWebSafeRgb(Ox2b1){var Ox2e7= new Array(Ox2b1[0],Ox2b1[1],Ox2b1[2]);if(RgbIsWebSafe(Ox2b1)){return Ox2e7;} ;var Ox2e8= new Array(0x00,0x33,0x66,0x99,0xCC,0xFF);for(var i=0;i<3;i++){for(var j=1;j<6;j++){if(Ox2e7[i]>Ox2e8[j-1]&&Ox2e7[i]<Ox2e8[j]){if(Ox2e7[i]-Ox2e8[j-1]>Ox2e8[j]-Ox2e7[i]){Ox2e7[i]=Ox2e8[j];} else {Ox2e7[i]=Ox2e8[j-1];} ;break ;} ;} ;} ;return Ox2e7;} ;function RgbToYuv(Ox2b1){var Ox2ea= new Array();Ox2ea[0]=(Ox2b1[0]*0.299+Ox2b1[1]*0.587+Ox2b1[2]*0.114)/255;Ox2ea[1]=(Ox2b1[0]*-0.169+Ox2b1[1]*-0.332+Ox2b1[2]*0.500+128)/255;Ox2ea[2]=(Ox2b1[0]*0.500+Ox2b1[1]*-0.419+Ox2b1[2]*-0.0813+128)/255;return Ox2ea;} ;function RgbToHsb(Ox2b1){var Ox2ec= new Array(Ox2b1[0],Ox2b1[1],Ox2b1[2]);var Ox2ed= new Number(1);var Ox2ee= new Number(0);var Ox2ef= new Number(1);var Ox2cd= new Array(0,0,0);var Ox2f0= new Array();for(var i=0;i<3;i++){Ox2ec[i]=Ox2b1[i]/255;if(Ox2ec[i]<Ox2ed){Ox2ed=Ox2ec[i];} ;if(Ox2ec[i]>Ox2ee){Ox2ee=Ox2ec[i];} ;} ;Ox2ef=Ox2ee-Ox2ed;Ox2cd[2]=Ox2ee;if(Ox2ef==0){return Ox2cd;} ;Ox2cd[1]=Ox2ef/Ox2ee;for(var i=0;i<3;i++){Ox2f0[i]=(((Ox2ee-Ox2ec[i])/6)+(Ox2ef/2))/Ox2ef;} ;if(Ox2ec[0]==Ox2ee){Ox2cd[0]=Ox2f0[2]-Ox2f0[1];} else {if(Ox2ec[1]==Ox2ee){Ox2cd[0]=(1/3)+Ox2f0[0]-Ox2f0[2];} else {if(Ox2ec[2]==Ox2ee){Ox2cd[0]=(2/3)+Ox2f0[1]-Ox2f0[0];} ;} ;} ;if(Ox2cd[0]<0){Ox2cd[0]+=1;} else {if(Ox2cd[0]>1){Ox2cd[0]-=1;} ;} ;return Ox2cd;} ;function HsbToRgb(Ox2cd){var Ox2b1=HueToRgb(Ox2cd[0]);var Ox119=Ox2cd[2]*255;for(var i=0;i<3;i++){Ox2b1[i]=Ox2b1[i]*Ox2cd[2];Ox2b1[i]=((Ox2b1[i]-Ox119)*Ox2cd[1])+Ox119;Ox2b1[i]=Math.round(Ox2b1[i]);} ;return Ox2b1;} ;function RgbToHex(Ox2b1){var hex= new String();for(var i=0;i<3;i++){Ox2b1[2-i]=Math.round(Ox2b1[2-i]);hex=Ox2b1[2-i].toString(16)+hex;if(hex[OxO900c[25]]%2==1){hex=OxO900c[107]+hex;} ;} ;return hex.toUpperCase();} ;function HexToRgb(hex){var Ox2b1= new Array();for(var i=0;i<3;i++){Ox2b1[i]= new Number(OxO900c[130]+hex.substr(i*2,2));} ;return Ox2b1;} ;function HueToRgb(Ox2f5){var Ox2f6=Ox2f5*360;var Ox2b1= new Array(0,0,0);var Ox2f7=(Ox2f6%60)/60;if(Ox2f6<60){Ox2b1[0]=255;Ox2b1[1]=Ox2f7*255;} else {if(Ox2f6<120){Ox2b1[1]=255;Ox2b1[0]=(1-Ox2f7)*255;} else {if(Ox2f6<180){Ox2b1[1]=255;Ox2b1[2]=Ox2f7*255;} else {if(Ox2f6<240){Ox2b1[2]=255;Ox2b1[1]=(1-Ox2f7)*255;} else {if(Ox2f6<300){Ox2b1[2]=255;Ox2b1[0]=Ox2f7*255;} else {if(Ox2f6<360){Ox2b1[0]=255;Ox2b1[2]=(1-Ox2f7)*255;} ;} ;} ;} ;} ;} ;return Ox2b1;} ;function CheckHexSelect(){if(window[OxO900c[131]]&&window[OxO900c[132]]&&frm[OxO900c[13]]){var Oxd5=OxO900c[73]+frm[OxO900c[13]][OxO900c[79]];if(Oxd5[OxO900c[25]]==7){if(window[OxO900c[133]]!=Oxd5){window[OxO900c[133]]=Oxd5;window.do_select(Oxd5);} ;} ;} ;} ;setInterval(CheckHexSelect,10);