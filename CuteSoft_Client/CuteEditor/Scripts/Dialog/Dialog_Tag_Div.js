var OxOf838=["SetStyle","length","","GetStyle","GetText",":",";","cssText","tblBorderStyle","sel_style","sel_border","sel_part","bordercolor","bordercolor_Preview","inp_color","inp_color_Preview","inp_shade","inp_shade_Preview","inp_MarginLeft","inp_MarginRight","inp_MarginTop","inp_MarginBottom","inp_PaddingLeft","inp_PaddingRight","inp_PaddingTop","inp_PaddingBottom","inp_width","sel_width_unit","inp_height","sel_height_unit","inp_id","inp_class","sel_align","sel_textalign","sel_float","inp_tooltip","value","borderColor","style"," ","backgroundColor","color","id","className","width","height","inp_","sel_","_unit","selectedIndex","options","align","styleFloat","cssFloat","textAlign","title","borderWidth","borderLeftWidth","borderTopWidth","borderRightWidth","borderBottomWidth","borderLeftStyle","borderTopStyle","borderRightStyle","borderBottomStyle","none","border","-","red","paddingLeft","paddingRight","paddingTop","paddingBottom","marginLeft","marginRight","marginTop","marginBottom","[[ValidID]]","class","onclick"];function pause(Ox49d){var Oxa1= new Date();var Ox49e=Oxa1.getTime()+Ox49d;while(true){Oxa1= new Date();if(Oxa1.getTime()>Ox49e){return ;} ;} ;} ;function StyleClass(Ox1fa){var Ox4a0=[];var Ox4a1={};if(Ox1fa){Ox4a6();} ;this[OxOf838[0]]=function SetStyle(name,Ox4e,Ox4a3){name=name.toLowerCase();for(var i=0;i<Ox4a0[OxOf838[1]];i++){if(Ox4a0[i]==name){break ;} ;} ;Ox4a0[i]=name;Ox4a1[name]=Ox4e?(Ox4e+(Ox4a3||OxOf838[2])):OxOf838[2];} ;this[OxOf838[3]]=function GetStyle(name){name=name.toLowerCase();return Ox4a1[name]||OxOf838[2];} ;this[OxOf838[4]]=function Ox4a5(){var Ox1fa=OxOf838[2];for(var i=0;i<Ox4a0[OxOf838[1]];i++){var n=Ox4a0[i];var p=Ox4a1[n];if(p){Ox1fa+=n+OxOf838[5]+p+OxOf838[6];} ;} ;return Ox1fa;} ;function Ox4a6(){var arr=Ox1fa.split(OxOf838[6]);for(var i=0;i<arr[OxOf838[1]];i++){var p=arr[i].split(OxOf838[5]);var n=p[0].replace(/^\s+/g,OxOf838[2]).replace(/\s+$/g,OxOf838[2]).toLowerCase();Ox4a0[Ox4a0[OxOf838[1]]]=n;Ox4a1[n]=p[1];} ;} ;} ;function GetStyle(Ox130,name){return  new StyleClass(Ox130.cssText).GetStyle(name);} ;function SetStyle(Ox130,name,Ox4e,Ox4a7){var Ox4a8= new StyleClass(Ox130.cssText);Ox4a8.SetStyle(name,Ox4e,Ox4a7);Ox130[OxOf838[7]]=Ox4a8.GetText();} ;function ParseFloatToString(Ox24){if(!Ox24){return OxOf838[2];} ;var Ox8=parseFloat(Ox24);if(isNaN(Ox8)){return OxOf838[2];} ;return Ox8+OxOf838[2];} ;var tblBorderStyle=Window_GetElement(window,OxOf838[8],true);var sel_style=Window_GetElement(window,OxOf838[9],true);var sel_border=Window_GetElement(window,OxOf838[10],true);var sel_part=Window_GetElement(window,OxOf838[11],true);var bordercolor=Window_GetElement(window,OxOf838[12],true);var bordercolor_Preview=Window_GetElement(window,OxOf838[13],true);var inp_color=Window_GetElement(window,OxOf838[14],true);var inp_color_Preview=Window_GetElement(window,OxOf838[15],true);var inp_shade=Window_GetElement(window,OxOf838[16],true);var inp_shade_Preview=Window_GetElement(window,OxOf838[17],true);var inp_MarginLeft=Window_GetElement(window,OxOf838[18],true);var inp_MarginRight=Window_GetElement(window,OxOf838[19],true);var inp_MarginTop=Window_GetElement(window,OxOf838[20],true);var inp_MarginBottom=Window_GetElement(window,OxOf838[21],true);var inp_PaddingLeft=Window_GetElement(window,OxOf838[22],true);var inp_PaddingRight=Window_GetElement(window,OxOf838[23],true);var inp_PaddingTop=Window_GetElement(window,OxOf838[24],true);var inp_PaddingBottom=Window_GetElement(window,OxOf838[25],true);var inp_width=Window_GetElement(window,OxOf838[26],true);var sel_width_unit=Window_GetElement(window,OxOf838[27],true);var inp_height=Window_GetElement(window,OxOf838[28],true);var sel_height_unit=Window_GetElement(window,OxOf838[29],true);var inp_id=Window_GetElement(window,OxOf838[30],true);var inp_class=Window_GetElement(window,OxOf838[31],true);var sel_align=Window_GetElement(window,OxOf838[32],true);var sel_textalign=Window_GetElement(window,OxOf838[33],true);var sel_float=Window_GetElement(window,OxOf838[34],true);var inp_tooltip=Window_GetElement(window,OxOf838[35],true);UpdateState=function UpdateState_Div(){} ;function doBorderStyle(Ox119){sel_style[OxOf838[36]]=Ox119;} ;function doPart(Ox119){sel_part[OxOf838[36]]=Ox119;} ;function doWidth(Ox119){sel_border[OxOf838[36]]=Ox119;} ;SyncToView=function SyncToView_Div(){if(Browser_IsWinIE()){bordercolor[OxOf838[36]]=element[OxOf838[38]][OxOf838[37]];} else {var arr=revertColor(element[OxOf838[38]].borderColor).split(OxOf838[39]);bordercolor[OxOf838[36]]=arr[0];} ;bordercolor[OxOf838[38]][OxOf838[40]]=bordercolor[OxOf838[36]];bordercolor_Preview[OxOf838[38]][OxOf838[40]]=bordercolor[OxOf838[36]];inp_color[OxOf838[36]]=revertColor(element[OxOf838[38]].color);inp_color[OxOf838[38]][OxOf838[40]]=element[OxOf838[38]][OxOf838[41]];inp_color_Preview[OxOf838[38]][OxOf838[40]]=element[OxOf838[38]][OxOf838[41]];inp_shade[OxOf838[36]]=revertColor(element[OxOf838[38]].backgroundColor);inp_shade[OxOf838[38]][OxOf838[40]]=element[OxOf838[38]][OxOf838[40]];inp_shade_Preview[OxOf838[38]][OxOf838[40]]=element[OxOf838[38]][OxOf838[40]];inp_id[OxOf838[36]]=element[OxOf838[42]];if(ParseFloatToString(element[OxOf838[38]].marginLeft)){inp_MarginLeft[OxOf838[36]]=ParseFloatToString(element[OxOf838[38]].marginLeft);} ;if(ParseFloatToString(element[OxOf838[38]].marginRight)){inp_MarginRight[OxOf838[36]]=ParseFloatToString(element[OxOf838[38]].marginRight);} ;if(ParseFloatToString(element[OxOf838[38]].marginTop)){inp_MarginTop[OxOf838[36]]=ParseFloatToString(element[OxOf838[38]].marginTop);} ;if(ParseFloatToString(element[OxOf838[38]].marginBottom)){inp_MarginBottom[OxOf838[36]]=ParseFloatToString(element[OxOf838[38]].marginBottom);} ;if(ParseFloatToString(element[OxOf838[38]].paddingLeft)){inp_PaddingLeft[OxOf838[36]]=ParseFloatToString(element[OxOf838[38]].paddingLeft);} ;if(ParseFloatToString(element[OxOf838[38]].paddingRight)){inp_PaddingRight[OxOf838[36]]=ParseFloatToString(element[OxOf838[38]].paddingRight);} ;if(ParseFloatToString(element[OxOf838[38]].paddingTop)){inp_PaddingTop[OxOf838[36]]=ParseFloatToString(element[OxOf838[38]].paddingTop);} ;if(ParseFloatToString(element[OxOf838[38]].paddingBottom)){inp_PaddingBottom[OxOf838[36]]=ParseFloatToString(element[OxOf838[38]].paddingBottom);} ;inp_class[OxOf838[36]]=element[OxOf838[43]];var arr=[OxOf838[44],OxOf838[45]];for(var Ox1f5=0;Ox1f5<arr[OxOf838[1]];Ox1f5++){var n=arr[Ox1f5];var Ox42=Window_GetElement(window,OxOf838[46]+n,true);var Ox119=Window_GetElement(window,OxOf838[47]+n+OxOf838[48],true);Ox119[OxOf838[49]]=0;if(ParseFloatToString(element[OxOf838[38]][n])){Ox42[OxOf838[36]]=ParseFloatToString(element[OxOf838[38]][n]);for(var i=0;i<Ox119[OxOf838[50]][OxOf838[1]];i++){var Ox13b=Ox119[OxOf838[50]][i][OxOf838[36]];if(Ox13b&&element[OxOf838[38]][n].indexOf(Ox13b)!=-1){Ox119[OxOf838[49]]=i;break ;} ;} ;} ;} ;sel_align[OxOf838[36]]=element[OxOf838[51]];if(Browser_IsWinIE()){sel_float[OxOf838[36]]=element[OxOf838[38]][OxOf838[52]];} else {sel_float[OxOf838[36]]=element[OxOf838[38]][OxOf838[53]];} ;sel_textalign[OxOf838[36]]=element[OxOf838[38]][OxOf838[54]];inp_tooltip[OxOf838[36]]=element[OxOf838[55]];try{sel_border[OxOf838[36]]=element[OxOf838[38]][OxOf838[56]];if(element[OxOf838[38]][OxOf838[57]]==element[OxOf838[38]][OxOf838[58]]&&element[OxOf838[38]][OxOf838[57]]==element[OxOf838[38]][OxOf838[59]]&&element[OxOf838[38]][OxOf838[57]]==element[OxOf838[38]][OxOf838[60]]){sel_border[OxOf838[36]]=element[OxOf838[38]][OxOf838[57]];} ;if(element[OxOf838[38]][OxOf838[61]]==element[OxOf838[38]][OxOf838[62]]&&element[OxOf838[38]][OxOf838[61]]==element[OxOf838[38]][OxOf838[63]]&&element[OxOf838[38]][OxOf838[61]]==element[OxOf838[38]][OxOf838[64]]){sel_style[OxOf838[36]]=element[OxOf838[38]][OxOf838[61]];} ;} catch(x){} ;} ;SyncTo=function SyncTo_Div(element){var Ox4c0=sel_part[OxOf838[36]];if(Ox4c0==OxOf838[65]){element[OxOf838[38]][OxOf838[66]]=OxOf838[65];} else {var Ox4c1=Ox4c0?OxOf838[67]+Ox4c0:Ox4c0;var Oxd5=OxOf838[68];var Ox130=sel_style[OxOf838[36]]||OxOf838[2];var Ox4c2=sel_border[OxOf838[36]];element[OxOf838[38]][OxOf838[66]]=OxOf838[65];if(Ox4c2||Ox130){SetStyle(element.style,OxOf838[66]+Ox4c1,Ox4c2+OxOf838[39]+Ox130+OxOf838[39]+Oxd5);} else {SetStyle(element.style,OxOf838[66]+Ox4c1,OxOf838[2]);} ;SetStyle(element.style,OxOf838[66]+Ox4c1,Ox4c2+OxOf838[39]+Ox130+OxOf838[39]+Oxd5);} ;try{element[OxOf838[38]][OxOf838[41]]=inp_color[OxOf838[36]]||OxOf838[2];} catch(x){element[OxOf838[38]][OxOf838[41]]=OxOf838[2];} ;try{element[OxOf838[38]][OxOf838[40]]=inp_shade[OxOf838[36]]||OxOf838[2];} catch(x){element[OxOf838[38]][OxOf838[40]]=OxOf838[2];} ;try{element[OxOf838[38]][OxOf838[37]]=bordercolor[OxOf838[36]]||OxOf838[2];} catch(x){element[OxOf838[38]][OxOf838[37]]=OxOf838[2];} ;element[OxOf838[38]][OxOf838[69]]=inp_PaddingLeft[OxOf838[36]];element[OxOf838[38]][OxOf838[70]]=inp_PaddingRight[OxOf838[36]];element[OxOf838[38]][OxOf838[71]]=inp_PaddingTop[OxOf838[36]];element[OxOf838[38]][OxOf838[72]]=inp_PaddingBottom[OxOf838[36]];element[OxOf838[38]][OxOf838[73]]=inp_MarginLeft[OxOf838[36]];element[OxOf838[38]][OxOf838[74]]=inp_MarginRight[OxOf838[36]];element[OxOf838[38]][OxOf838[75]]=inp_MarginTop[OxOf838[36]];element[OxOf838[38]][OxOf838[76]]=inp_MarginBottom[OxOf838[36]];element[OxOf838[43]]=inp_class[OxOf838[36]];var arr=[OxOf838[44],OxOf838[45]];for(var Ox1f5=0;Ox1f5<arr[OxOf838[1]];Ox1f5++){var n=arr[Ox1f5];var Ox42=Window_GetElement(window,OxOf838[46]+n,true);var Ox4c3=Window_GetElement(window,OxOf838[47]+n+OxOf838[48],true);if(ParseFloatToString(Ox42.value)){element[OxOf838[38]][n]=ParseFloatToString(Ox42.value)+Ox4c3[OxOf838[36]];} else {element[OxOf838[38]][n]=OxOf838[2];} ;} ;var Ox36d=/[^a-z\d]/i;if(Ox36d.test(inp_id.value)){alert(OxOf838[77]);return ;} ;element[OxOf838[51]]=sel_align[OxOf838[36]];element[OxOf838[42]]=inp_id[OxOf838[36]];if(Browser_IsWinIE()){element[OxOf838[38]][OxOf838[52]]=sel_float[OxOf838[36]];} else {element[OxOf838[38]][OxOf838[53]]=sel_float[OxOf838[36]];} ;element[OxOf838[38]][OxOf838[54]]=sel_textalign[OxOf838[36]];element[OxOf838[55]]=inp_tooltip[OxOf838[36]];if(element[OxOf838[55]]==OxOf838[2]){element.removeAttribute(OxOf838[55]);} ;if(element[OxOf838[43]]==OxOf838[2]){element.removeAttribute(OxOf838[43]);} ;if(element[OxOf838[43]]==OxOf838[2]){element.removeAttribute(OxOf838[78]);} ;if(element[OxOf838[51]]==OxOf838[2]){element.removeAttribute(OxOf838[51]);} ;if(element[OxOf838[42]]==OxOf838[2]){element.removeAttribute(OxOf838[42]);} ;} ;bordercolor[OxOf838[79]]=bordercolor_Preview[OxOf838[79]]=function bordercolor_onclick(){SelectColor(bordercolor,bordercolor_Preview);} ;inp_color[OxOf838[79]]=inp_color_Preview[OxOf838[79]]=function inp_color_onclick(){SelectColor(inp_color,inp_color_Preview);} ;inp_shade[OxOf838[79]]=inp_shade_Preview[OxOf838[79]]=function inp_shade_onclick(){SelectColor(inp_shade,inp_shade_Preview);} ;