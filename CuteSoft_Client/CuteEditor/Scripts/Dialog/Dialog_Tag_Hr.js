var OxO4548=["inp_width","eenheid","alignment","hrcolor","hrcolorpreview","shade","sel_size","width","style","value","px","%","size","align","color","backgroundColor","noShade","noshade","","onclick"];var inp_width=Window_GetElement(window,OxO4548[0],true);var eenheid=Window_GetElement(window,OxO4548[1],true);var alignment=Window_GetElement(window,OxO4548[2],true);var hrcolor=Window_GetElement(window,OxO4548[3],true);var hrcolorpreview=Window_GetElement(window,OxO4548[4],true);var shade=Window_GetElement(window,OxO4548[5],true);var sel_size=Window_GetElement(window,OxO4548[6],true);UpdateState=function UpdateState_Hr(){} ;SyncToView=function SyncToView_Hr(){if(element[OxO4548[8]][OxO4548[7]]){if(element[OxO4548[8]][OxO4548[7]].search(/%/)<0){eenheid[OxO4548[9]]=OxO4548[10];inp_width[OxO4548[9]]=element[OxO4548[8]][OxO4548[7]].split(OxO4548[10])[0];} else {eenheid[OxO4548[9]]=OxO4548[11];inp_width[OxO4548[9]]=element[OxO4548[8]][OxO4548[7]].split(OxO4548[11])[0];} ;} ;sel_size[OxO4548[9]]=element[OxO4548[12]];alignment[OxO4548[9]]=element[OxO4548[13]];hrcolor[OxO4548[9]]=element[OxO4548[14]];if(element[OxO4548[14]]){hrcolor[OxO4548[8]][OxO4548[15]]=element[OxO4548[14]];} ;if(element[OxO4548[16]]){shade[OxO4548[9]]=OxO4548[17];} else {shade[OxO4548[9]]=OxO4548[18];} ;} ;SyncTo=function SyncTo_Hr(element){if(sel_size[OxO4548[9]]){element[OxO4548[12]]=sel_size[OxO4548[9]];} ;if(hrcolor[OxO4548[9]]){element[OxO4548[14]]=hrcolor[OxO4548[9]];} ;if(alignment[OxO4548[9]]){element[OxO4548[13]]=alignment[OxO4548[9]];} ;if(shade[OxO4548[9]]==OxO4548[17]){element[OxO4548[16]]=true;} else {element[OxO4548[16]]=false;} ;if(inp_width[OxO4548[9]]){element[OxO4548[8]][OxO4548[7]]=inp_width[OxO4548[9]]+eenheid[OxO4548[9]];} ;} ;hrcolor[OxO4548[19]]=hrcolorpreview[OxO4548[19]]=function hrcolor_onclick(){SelectColor(hrcolor,hrcolorpreview);} ;