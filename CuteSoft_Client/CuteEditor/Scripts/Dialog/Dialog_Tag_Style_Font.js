var OxOa5fc=["SetStyle","length","","GetStyle","GetText",":",";","cssText","sel_font","div_font_detail","sel_fontfamily","cb_decoration_under","cb_decoration_over","cb_decoration_through","cb_style_bold","cb_style_italic","sel_fontTransform","sel_fontsize","inp_fontsize","sel_fontsize_unit","inp_color","inp_color_Preview","outer","div_demo","disabled","selectedIndex","style","value","font","fontFamily","color","backgroundColor","textDecoration","checked","overline","underline","line-through","fontWeight","bold","fontStyle","italic","fontSize","options","textTransform","font-family","overline ","underline ","line-through ","onclick"];function pause(Ox49d){var Oxa1= new Date();var Ox49e=Oxa1.getTime()+Ox49d;while(true){Oxa1= new Date();if(Oxa1.getTime()>Ox49e){return ;} ;} ;} ;function StyleClass(Ox1fa){var Ox4a0=[];var Ox4a1={};if(Ox1fa){Ox4a6();} ;this[OxOa5fc[0]]=function SetStyle(name,Ox4e,Ox4a3){name=name.toLowerCase();for(var i=0;i<Ox4a0[OxOa5fc[1]];i++){if(Ox4a0[i]==name){break ;} ;} ;Ox4a0[i]=name;Ox4a1[name]=Ox4e?(Ox4e+(Ox4a3||OxOa5fc[2])):OxOa5fc[2];} ;this[OxOa5fc[3]]=function GetStyle(name){name=name.toLowerCase();return Ox4a1[name]||OxOa5fc[2];} ;this[OxOa5fc[4]]=function Ox4a5(){var Ox1fa=OxOa5fc[2];for(var i=0;i<Ox4a0[OxOa5fc[1]];i++){var n=Ox4a0[i];var p=Ox4a1[n];if(p){Ox1fa+=n+OxOa5fc[5]+p+OxOa5fc[6];} ;} ;return Ox1fa;} ;function Ox4a6(){var arr=Ox1fa.split(OxOa5fc[6]);for(var i=0;i<arr[OxOa5fc[1]];i++){var p=arr[i].split(OxOa5fc[5]);var n=p[0].replace(/^\s+/g,OxOa5fc[2]).replace(/\s+$/g,OxOa5fc[2]).toLowerCase();Ox4a0[Ox4a0[OxOa5fc[1]]]=n;Ox4a1[n]=p[1];} ;} ;} ;function GetStyle(Ox130,name){return  new StyleClass(Ox130.cssText).GetStyle(name);} ;function SetStyle(Ox130,name,Ox4e,Ox4a7){var Ox4a8= new StyleClass(Ox130.cssText);Ox4a8.SetStyle(name,Ox4e,Ox4a7);Ox130[OxOa5fc[7]]=Ox4a8.GetText();} ;function ParseFloatToString(Ox24){var Ox8=parseFloat(Ox24);if(isNaN(Ox8)){return OxOa5fc[2];} ;return Ox8+OxOa5fc[2];} ;var sel_font=Window_GetElement(window,OxOa5fc[8],true);var div_font_detail=Window_GetElement(window,OxOa5fc[9],true);var sel_fontfamily=Window_GetElement(window,OxOa5fc[10],true);var cb_decoration_under=Window_GetElement(window,OxOa5fc[11],true);var cb_decoration_over=Window_GetElement(window,OxOa5fc[12],true);var cb_decoration_through=Window_GetElement(window,OxOa5fc[13],true);var cb_style_bold=Window_GetElement(window,OxOa5fc[14],true);var cb_style_italic=Window_GetElement(window,OxOa5fc[15],true);var sel_fontTransform=Window_GetElement(window,OxOa5fc[16],true);var sel_fontsize=Window_GetElement(window,OxOa5fc[17],true);var inp_fontsize=Window_GetElement(window,OxOa5fc[18],true);var sel_fontsize_unit=Window_GetElement(window,OxOa5fc[19],true);var inp_color=Window_GetElement(window,OxOa5fc[20],true);var inp_color_Preview=Window_GetElement(window,OxOa5fc[21],true);var outer=Window_GetElement(window,OxOa5fc[22],true);var div_demo=Window_GetElement(window,OxOa5fc[23],true);UpdateState=function UpdateState_Font(){inp_fontsize[OxOa5fc[24]]=sel_fontsize_unit[OxOa5fc[24]]=(sel_fontsize[OxOa5fc[25]]>0);div_font_detail[OxOa5fc[24]]=sel_font[OxOa5fc[25]]>0;div_demo[OxOa5fc[26]][OxOa5fc[7]]=element[OxOa5fc[26]][OxOa5fc[7]];} ;SyncToView=function SyncToView_Font(){sel_font[OxOa5fc[27]]=element[OxOa5fc[26]][OxOa5fc[28]].toLowerCase()||null;sel_fontfamily[OxOa5fc[27]]=element[OxOa5fc[26]][OxOa5fc[29]];inp_color[OxOa5fc[27]]=element[OxOa5fc[26]][OxOa5fc[30]];inp_color[OxOa5fc[26]][OxOa5fc[31]]=inp_color[OxOa5fc[27]];var Ox5dd=element[OxOa5fc[26]][OxOa5fc[32]].toLowerCase();cb_decoration_over[OxOa5fc[33]]=Ox5dd.indexOf(OxOa5fc[34])!=-1;cb_decoration_under[OxOa5fc[33]]=Ox5dd.indexOf(OxOa5fc[35])!=-1;cb_decoration_through[OxOa5fc[33]]=Ox5dd.indexOf(OxOa5fc[36])!=-1;cb_style_bold[OxOa5fc[33]]=element[OxOa5fc[26]][OxOa5fc[37]]==OxOa5fc[38];cb_style_italic[OxOa5fc[33]]=element[OxOa5fc[26]][OxOa5fc[39]]==OxOa5fc[40];sel_fontsize[OxOa5fc[27]]=element[OxOa5fc[26]][OxOa5fc[41]];sel_fontsize_unit[OxOa5fc[25]]=0;if(sel_fontsize[OxOa5fc[25]]==-1){if(ParseFloatToString(element[OxOa5fc[26]].fontSize)){sel_fontsize[OxOa5fc[27]]=ParseFloatToString(element[OxOa5fc[26]].fontSize);for(var i=0;i<sel_fontsize_unit[OxOa5fc[42]][OxOa5fc[1]];i++){var Ox13b=sel_fontsize_unit.options(i)[OxOa5fc[27]];if(Ox13b&&element[OxOa5fc[26]][OxOa5fc[41]].indexOf(Ox13b)!=-1){sel_fontsize_unit[OxOa5fc[25]]=i;break ;} ;} ;} ;} ;sel_fontTransform[OxOa5fc[27]]=element[OxOa5fc[26]][OxOa5fc[43]];} ;SyncTo=function SyncTo_Font(element){SetStyle(element.style,OxOa5fc[28],sel_font.value);if(sel_fontfamily[OxOa5fc[27]]){element[OxOa5fc[26]][OxOa5fc[29]]=sel_fontfamily[OxOa5fc[27]];} else {SetStyle(element.style,OxOa5fc[44],OxOa5fc[2]);} ;try{element[OxOa5fc[26]][OxOa5fc[30]]=inp_color[OxOa5fc[27]]||OxOa5fc[2];} catch(x){element[OxOa5fc[26]][OxOa5fc[30]]=OxOa5fc[2];} ;var Ox5df=cb_decoration_over[OxOa5fc[33]];var Ox5e0=cb_decoration_under[OxOa5fc[33]];var Ox5e1=cb_decoration_through[OxOa5fc[33]];if(!Ox5df&&!Ox5e0&&!Ox5e1){element[OxOa5fc[26]][OxOa5fc[32]]=OxOa5fc[2];} else {var Ox51=OxOa5fc[2];if(Ox5df){Ox51+=OxOa5fc[45];} ;if(Ox5e0){Ox51+=OxOa5fc[46];} ;if(Ox5e1){Ox51+=OxOa5fc[47];} ;element[OxOa5fc[26]][OxOa5fc[32]]=Ox51.substr(0,Ox51[OxOa5fc[1]]-1);} ;element[OxOa5fc[26]][OxOa5fc[37]]=cb_style_bold[OxOa5fc[33]]?OxOa5fc[38]:OxOa5fc[2];element[OxOa5fc[26]][OxOa5fc[39]]=cb_style_italic[OxOa5fc[33]]?OxOa5fc[40]:OxOa5fc[2];element[OxOa5fc[26]][OxOa5fc[43]]=sel_fontTransform[OxOa5fc[27]]||OxOa5fc[2];if(sel_fontsize[OxOa5fc[25]]>0){element[OxOa5fc[26]][OxOa5fc[41]]=sel_fontsize[OxOa5fc[27]];} else {if(ParseFloatToString(inp_fontsize.value)){element[OxOa5fc[26]][OxOa5fc[41]]=ParseFloatToString(inp_fontsize.value)+sel_fontsize_unit[OxOa5fc[27]];} else {element[OxOa5fc[26]][OxOa5fc[41]]=OxOa5fc[2];} ;} ;} ;inp_color[OxOa5fc[48]]=inp_color_Preview[OxOa5fc[48]]=function inp_color_onclick(){SelectColor(inp_color,inp_color_Preview);} ;