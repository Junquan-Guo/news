var OxO3d90=["inp_width","eenheid","alignment","hrcolor","hrcolorpreview","shade","sel_size","width","style","value","px","%","size","align","color","backgroundColor","noShade","noshade","","onclick"];var inp_width=Window_GetElement(window,OxO3d90[0],true);var eenheid=Window_GetElement(window,OxO3d90[1],true);var alignment=Window_GetElement(window,OxO3d90[2],true);var hrcolor=Window_GetElement(window,OxO3d90[3],true);var hrcolorpreview=Window_GetElement(window,OxO3d90[4],true);var shade=Window_GetElement(window,OxO3d90[5],true);var sel_size=Window_GetElement(window,OxO3d90[6],true);UpdateState=function UpdateState_Hr(){} ;SyncToView=function SyncToView_Hr(){if(element[OxO3d90[8]][OxO3d90[7]]){if(element[OxO3d90[8]][OxO3d90[7]].search(/%/)<0){eenheid[OxO3d90[9]]=OxO3d90[10];inp_width[OxO3d90[9]]=element[OxO3d90[8]][OxO3d90[7]].split(OxO3d90[10])[0];} else {eenheid[OxO3d90[9]]=OxO3d90[11];inp_width[OxO3d90[9]]=element[OxO3d90[8]][OxO3d90[7]].split(OxO3d90[11])[0];} ;} ;sel_size[OxO3d90[9]]=element[OxO3d90[12]];alignment[OxO3d90[9]]=element[OxO3d90[13]];hrcolor[OxO3d90[9]]=element[OxO3d90[14]];if(element[OxO3d90[14]]){hrcolor[OxO3d90[8]][OxO3d90[15]]=element[OxO3d90[14]];} ;if(element[OxO3d90[16]]){shade[OxO3d90[9]]=OxO3d90[17];} else {shade[OxO3d90[9]]=OxO3d90[18];} ;} ;SyncTo=function SyncTo_Hr(element){if(sel_size[OxO3d90[9]]){element[OxO3d90[12]]=sel_size[OxO3d90[9]];} ;if(hrcolor[OxO3d90[9]]){element[OxO3d90[14]]=hrcolor[OxO3d90[9]];} ;if(alignment[OxO3d90[9]]){element[OxO3d90[13]]=alignment[OxO3d90[9]];} ;if(shade[OxO3d90[9]]==OxO3d90[17]){element[OxO3d90[16]]=true;} else {element[OxO3d90[16]]=false;} ;if(inp_width[OxO3d90[9]]){element[OxO3d90[8]][OxO3d90[7]]=inp_width[OxO3d90[9]]+eenheid[OxO3d90[9]];} ;} ;hrcolor[OxO3d90[19]]=hrcolorpreview[OxO3d90[19]]=function hrcolor_onclick(){SelectColor(hrcolor,hrcolorpreview);} ;