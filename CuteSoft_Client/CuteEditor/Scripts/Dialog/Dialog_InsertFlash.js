var OxO65f4=["hiddenDirectory","hiddenFile","hiddenAlert","hiddenAction","hiddenActionData","This function is disabled in the demo mode.","disabled","[[Disabled]]","[[SpecifyNewFolderName]]","","value","createdir","[[CopyMoveto]]","/","move","copy","[[AreyouSureDelete]]","parentNode","text","isdir","true",".","[[SpecifyNewFileName]]","rename","True","False",":","path","FoldersAndFiles","TR","length","onmouseover","this.bgColor=\x27#eeeeee\x27;","onmouseout","this.bgColor=\x27\x27;","nodeName","INPUT","changedir","url","TargetUrl","onload","getElementsByTagName","table","sortable"," ","className","id","rows","cells","innerHTML","\x3Ca href=\x22#\x22 onclick=\x22ts_resortTable(this);return false;\x22\x3E","\x3Cspan class=\x22sortarrow\x22\x3E\x26nbsp;\x3C/span\x3E\x3C/a\x3E","string","undefined","innerText","childNodes","nodeValue","nodeType","span","cellIndex","TABLE","sortdir","down","\x26uarr;","up","\x26darr;","sortbottom","tBodies","sortarrow","\x26nbsp;","20","19","Form1","Image1","FolderDescription","CreateDir","Copy","Move","Delete","DoRefresh","name_Cell","size_Cell","op_Cell","row0","row0_cb","divpreview","Table3","Width","Height","bgColortext","bgColortext_Preview","Quality","Scale","Align","HSpace","VSpace","chk_Loop","chk_Autoplay","chk_Transparency","chk_FlashMenu","chk_Fullscreen","btn_zoom_in","btn_zoom_out","btn_Actualsize","Please choose a Flash movie to insert",".flv","checked","\x26autoPlay=true","[[_CuteEditorResource_]]flashplayer.swf?videoUrl=http://","hostname","location","\x26playerMode=simple","scale=\x27noborder\x27","Noborder","scale=\x27exactfit\x27","Exactfit","hspace=\x22","\x22 ","vspace=\x22","align=\x22","wmode=\x22transparent\x22","allowfullscreen=\x22true\x22","allowfullscreen=\x22false\x22","menu=\x22false\x22","loop=\x22false\x22","play=\x22false\x22","bgcolor=\x22","\x22","\x3Cembed src=\x22","\x22 width=\x22","\x22 height=\x22"," quality=\x22"," type=\x22application/x-shockwave-flash\x22 pluginspage=\x22http://www.macromedia.com/go/getflashplayer\x22 \x3E\x3C/embed\x3E\x0A","\x3Cobject xcodebase=","\x22http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab\x22"," height=\x22"," classid=","\x22clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\x22 \x3E"," \x3Cparam name=\x22Movie\x22 value=\x22","\x22 /\x3E"," \x3Cparam name=\x22Quality\x22 value=\x22","\x22/\x3E","\x3Cparam name=\x22wmode\x22 value=\x22transparent\x22/\x3E","\x3Cparam name=\x22allowFullScreen\x22 value=\x22true\x22/\x3E","\x3Cparam name=\x22allowFullScreen\x22 value=\x22false\x22/\x3E","\x3Cparam name=\x22menu\x22 value=\x22false\x22/\x3E","\x3Cparam name=\x22loop\x22 value=\x22false\x22/\x3E","\x3Cparam name=\x22play\x22 value=\x22false\x22/\x3E","\x3Cparam name=\x22scale\x22 value=\x22","\x3Cparam name=\x22bgcolor\x22 value=\x22","\x3C/object\x3E","zoom","style","onclick","display","none","wrapupPrompt","iepromptfield","body","div","IEPromptBox","promptBlackout","border","1px solid #b0bec7","backgroundColor","#f0f0f0","position","absolute","width","330px","zIndex","100","\x3Cdiv style=\x22width: 100%; padding-top:3px;background-color: #DCE7EB; font-family: verdana; font-size: 10pt; font-weight: bold; height: 22px; text-align:center; background:url(Load.ashx?type=image\x26file=formbg2.gif) repeat-x left top;\x22\x3E[[InputRequired]]\x3C/div\x3E","\x3Cdiv style=\x22padding: 10px\x22\x3E","\x3CBR\x3E\x3CBR\x3E","\x3Cform action=\x22\x22 onsubmit=\x22return wrapupPrompt()\x22\x3E","\x3Cinput id=\x22iepromptfield\x22 name=\x22iepromptdata\x22 type=text size=46 value=\x22","\x22\x3E","\x3Cbr\x3E\x3Cbr\x3E\x3Ccenter\x3E","\x3Cinput type=\x22submit\x22 value=\x22\x26nbsp;\x26nbsp;\x26nbsp;[[OK]]\x26nbsp;\x26nbsp;\x26nbsp;\x22\x3E","\x26nbsp;\x26nbsp;\x26nbsp;\x26nbsp;\x26nbsp;\x26nbsp;","\x3Cinput type=\x22button\x22 onclick=\x22wrapupPrompt(true)\x22 value=\x22\x26nbsp;[[Cancel]]\x26nbsp;\x22\x3E","\x3C/form\x3E\x3C/div\x3E","top","100px","left","offsetWidth","px","block","CuteEditor_ColorPicker_ButtonOver(this)"];var hiddenDirectory=Window_GetElement(window,OxO65f4[0],true);var hiddenFile=Window_GetElement(window,OxO65f4[1],true);var hiddenAlert=Window_GetElement(window,OxO65f4[2],true);var hiddenAction=Window_GetElement(window,OxO65f4[3],true);var hiddenActionData=Window_GetElement(window,OxO65f4[4],true);function CreateDir_click(){if(isDemoMode){alert(OxO65f4[5]);return false;} ;if(Event_GetSrcElement()[OxO65f4[6]]){alert(OxO65f4[7]);return false;} ;if(Browser_IsIE7()){IEprompt(Ox218,OxO65f4[8],OxO65f4[9]);function Ox218(Ox379){if(Ox379){hiddenActionData[OxO65f4[10]]=Ox379;hiddenAction[OxO65f4[10]]=OxO65f4[11];window.PostBackAction();return true;} else {return false;} ;} ;return Event_CancelEvent();} else {var Ox379=prompt(OxO65f4[8],OxO65f4[9]);if(Ox379){hiddenActionData[OxO65f4[10]]=Ox379;return true;} else {return false;} ;return false;} ;} ;function Move_click(){if(isDemoMode){alert(OxO65f4[5]);return false;} ;if(Event_GetSrcElement()[OxO65f4[6]]){alert(OxO65f4[7]);return false;} ;if(Browser_IsIE7()){IEprompt(Ox218,OxO65f4[12],OxO65f4[13]);function Ox218(Ox379){if(Ox379){hiddenActionData[OxO65f4[10]]=Ox379;hiddenAction[OxO65f4[10]]=OxO65f4[14];window.PostBackAction();return true;} else {return false;} ;} ;return Event_CancelEvent();} else {var Ox379=prompt(OxO65f4[12],OxO65f4[13]);if(Ox379){hiddenActionData[OxO65f4[10]]=Ox379;return true;} else {return false;} ;return false;} ;} ;function Copy_click(){if(isDemoMode){alert(OxO65f4[5]);return false;} ;if(Event_GetSrcElement()[OxO65f4[6]]){alert(OxO65f4[7]);return false;} ;if(Browser_IsIE7()){IEprompt(Ox218,OxO65f4[12],OxO65f4[13]);function Ox218(Ox379){if(Ox379){hiddenActionData[OxO65f4[10]]=Ox379;hiddenAction[OxO65f4[10]]=OxO65f4[15];window.PostBackAction();return true;} else {return false;} ;} ;return Event_CancelEvent();} else {var Ox379=prompt(OxO65f4[12],OxO65f4[13]);if(Ox379){hiddenActionData[OxO65f4[10]]=Ox379;return true;} else {return false;} ;return false;} ;} ;function Delete_click(){if(isDemoMode){alert(OxO65f4[5]);return false;} ;if(Event_GetSrcElement()[OxO65f4[6]]){alert(OxO65f4[7]);return false;} ;return confirm(OxO65f4[16]);} ;function EditImg_click(img){if(isDemoMode){alert(OxO65f4[5]);return false;} ;if(img[OxO65f4[6]]){alert(OxO65f4[7]);return false;} ;var Ox37e=img[OxO65f4[17]][OxO65f4[17]];var Ox37f=Ox37e[OxO65f4[18]];var name;var Ox380;if(Browser_IsOpera()){Ox380=Ox37e.getAttribute(OxO65f4[19])==OxO65f4[20];} else {Ox380=Ox37e[OxO65f4[19]];} ;if(Browser_IsIE7()){var Oxc3;if(Ox380){IEprompt(Ox218,OxO65f4[8],Ox37f);} else {var i=Ox37f.lastIndexOf(OxO65f4[21]);Oxc3=Ox37f.substr(i);var Ox12=Ox37f.substr(0,Ox37f.lastIndexOf(OxO65f4[21]));IEprompt(Ox218,OxO65f4[22],Ox12);} ;function Ox218(Ox379){if(Ox379&&Ox379!=Ox37e[OxO65f4[18]]){if(!Ox380){Ox379=Ox379+Oxc3;} ;hiddenAction[OxO65f4[10]]=OxO65f4[23];hiddenActionData[OxO65f4[10]]=(Ox380?OxO65f4[24]:OxO65f4[25])+OxO65f4[26]+Ox37e[OxO65f4[27]]+OxO65f4[26]+Ox379;window.PostBackAction();} ;} ;} else {if(Ox380){name=prompt(OxO65f4[8],Ox37f);} else {var i=Ox37f.lastIndexOf(OxO65f4[21]);var Oxc3=Ox37f.substr(i);var Ox12=Ox37f.substr(0,Ox37f.lastIndexOf(OxO65f4[21]));name=prompt(OxO65f4[22],Ox12);if(name){name=name+Oxc3;} ;} ;if(name&&name!=Ox37e[OxO65f4[18]]){hiddenAction[OxO65f4[10]]=OxO65f4[23];hiddenActionData[OxO65f4[10]]=(Ox380?OxO65f4[24]:OxO65f4[25])+OxO65f4[26]+Ox37e[OxO65f4[27]]+OxO65f4[26]+name;window.PostBackAction();} ;} ;return Event_CancelEvent();} ;setMouseOver();function setMouseOver(){var FoldersAndFiles=Window_GetElement(window,OxO65f4[28],true);var Ox383=FoldersAndFiles.getElementsByTagName(OxO65f4[29]);for(var i=0;i<Ox383[OxO65f4[30]];i++){var Ox37e=Ox383[i];Ox37e[OxO65f4[31]]= new Function(OxO65f4[9],OxO65f4[32]);Ox37e[OxO65f4[33]]= new Function(OxO65f4[9],OxO65f4[34]);} ;} ;function row_click(Ox37e){var Ox380;if(Browser_IsOpera()){Ox380=Ox37e.getAttribute(OxO65f4[19])==OxO65f4[20];} else {Ox380=Ox37e[OxO65f4[19]];} ;if(Ox380){if(Event_GetSrcElement()[OxO65f4[35]]==OxO65f4[36]){return ;} ;hiddenAction[OxO65f4[10]]=OxO65f4[37];hiddenActionData[OxO65f4[10]]=Ox37e.getAttribute(OxO65f4[27]);window.PostBackAction();} else {var Ox102=Ox37e.getAttribute(OxO65f4[27]);hiddenFile[OxO65f4[10]]=Ox102;var Ox280=Ox37e.getAttribute(OxO65f4[38]);Window_GetElement(window,OxO65f4[39],true)[OxO65f4[10]]=Ox280;Actualsize();} ;} ;function reset_hiddens(){if(hiddenAlert[OxO65f4[10]]){alert(hiddenAlert.value);} ;hiddenAlert[OxO65f4[10]]=OxO65f4[9];hiddenAction[OxO65f4[10]]=OxO65f4[9];hiddenActionData[OxO65f4[10]]=OxO65f4[9];} ;Event_Attach(window,OxO65f4[40],reset_hiddens);function RequireFileBrowseScript(){} ;Event_Attach(window,OxO65f4[40],sortables_init);var SORT_COLUMN_INDEX;function sortables_init(){if(!document[OxO65f4[41]]){return ;} ;var Ox388=document.getElementsByTagName(OxO65f4[42]);for(var Ox389=0;Ox389<Ox388[OxO65f4[30]];Ox389++){var Ox38a=Ox388[Ox389];if(((OxO65f4[44]+Ox38a[OxO65f4[45]]+OxO65f4[44]).indexOf(OxO65f4[43])!=-1)&&(Ox38a[OxO65f4[46]])){ts_makeSortable(Ox38a);} ;} ;} ;function ts_makeSortable(Ox38c){if(Ox38c[OxO65f4[47]]&&Ox38c[OxO65f4[47]][OxO65f4[30]]>0){var Ox38d=Ox38c[OxO65f4[47]][0];} ;if(!Ox38d){return ;} ;for(var i=2;i<4;i++){var Ox38e=Ox38d[OxO65f4[48]][i];var Ox27b=ts_getInnerText(Ox38e);Ox38e[OxO65f4[49]]=OxO65f4[50]+Ox27b+OxO65f4[51];} ;} ;function ts_getInnerText(Ox27){if( typeof Ox27==OxO65f4[52]){return Ox27;} ;if( typeof Ox27==OxO65f4[53]){return Ox27;} ;if(Ox27[OxO65f4[54]]){return Ox27[OxO65f4[54]];} ;var Ox24=OxO65f4[9];var Ox33a=Ox27[OxO65f4[55]];var Ox11=Ox33a[OxO65f4[30]];for(var i=0;i<Ox11;i++){switch(Ox33a[i][OxO65f4[57]]){case 1:Ox24+=ts_getInnerText(Ox33a[i]);break ;;case 3:Ox24+=Ox33a[i][OxO65f4[56]];break ;;} ;} ;return Ox24;} ;function ts_resortTable(Ox391){var Ox29e;for(var Ox392=0;Ox392<Ox391[OxO65f4[55]][OxO65f4[30]];Ox392++){if(Ox391[OxO65f4[55]][Ox392][OxO65f4[35]]&&Ox391[OxO65f4[55]][Ox392][OxO65f4[35]].toLowerCase()==OxO65f4[58]){Ox29e=Ox391[OxO65f4[55]][Ox392];} ;} ;var Ox393=ts_getInnerText(Ox29e);var Ox1dd=Ox391[OxO65f4[17]];var Ox394=Ox1dd[OxO65f4[59]];var Ox38c=getParent(Ox1dd,OxO65f4[60]);if(Ox38c[OxO65f4[47]][OxO65f4[30]]<=1){return ;} ;var Ox395=ts_getInnerText(Ox38c[OxO65f4[47]][1][OxO65f4[48]][Ox394]);var Ox396=ts_sort_caseinsensitive;if(Ox395.match(/^\d\d[\/-]\d\d[\/-]\d\d\d\d$/)){Ox396=ts_sort_date;} ;if(Ox395.match(/^\d\d[\/-]\d\d[\/-]\d\d$/)){Ox396=ts_sort_date;} ;if(Ox395.match(/^[?]/)){Ox396=ts_sort_currency;} ;if(Ox395.match(/^[\d\.]+$/)){Ox396=ts_sort_numeric;} ;SORT_COLUMN_INDEX=Ox394;var Ox38d= new Array();var Ox397= new Array();for(var i=0;i<Ox38c[OxO65f4[47]][0][OxO65f4[30]];i++){Ox38d[i]=Ox38c[OxO65f4[47]][0][i];} ;for(var j=1;j<Ox38c[OxO65f4[47]][OxO65f4[30]];j++){Ox397[j-1]=Ox38c[OxO65f4[47]][j];} ;Ox397.sort(Ox396);if(Ox29e.getAttribute(OxO65f4[61])==OxO65f4[62]){var Ox398=OxO65f4[63];Ox397.reverse();Ox29e.setAttribute(OxO65f4[61],OxO65f4[64]);} else {Ox398=OxO65f4[65];Ox29e.setAttribute(OxO65f4[61],OxO65f4[62]);} ;for(i=0;i<Ox397[OxO65f4[30]];i++){if(!Ox397[i][OxO65f4[45]]||(Ox397[i][OxO65f4[45]]&&(Ox397[i][OxO65f4[45]].indexOf(OxO65f4[66])==-1))){Ox38c[OxO65f4[67]][0].appendChild(Ox397[i]);} ;} ;for(i=0;i<Ox397[OxO65f4[30]];i++){if(Ox397[i][OxO65f4[45]]&&(Ox397[i][OxO65f4[45]].indexOf(OxO65f4[66])!=-1)){Ox38c[OxO65f4[67]][0].appendChild(Ox397[i]);} ;} ;var Ox399=document.getElementsByTagName(OxO65f4[58]);for(var Ox392=0;Ox392<Ox399[OxO65f4[30]];Ox392++){if(Ox399[Ox392][OxO65f4[45]]==OxO65f4[68]){if(getParent(Ox399[Ox392],OxO65f4[42])==getParent(Ox391,OxO65f4[42])){Ox399[Ox392][OxO65f4[49]]=OxO65f4[69];} ;} ;} ;Ox29e[OxO65f4[49]]=Ox398;} ;function getParent(Ox27,Ox39b){if(Ox27==null){return null;} else {if(Ox27[OxO65f4[57]]==1&&Ox27[OxO65f4[35]].toLowerCase()==Ox39b.toLowerCase()){return Ox27;} else {return getParent(Ox27.parentNode,Ox39b);} ;} ;} ;function ts_sort_date(Oxe7,b){var Ox39d=ts_getInnerText(Oxe7[OxO65f4[48]][SORT_COLUMN_INDEX]);var Ox39e=ts_getInnerText(b[OxO65f4[48]][SORT_COLUMN_INDEX]);if(Ox39d[OxO65f4[30]]==10){var Ox39f=Ox39d.substr(6,4)+Ox39d.substr(3,2)+Ox39d.substr(0,2);} else {var Ox3a0=Ox39d.substr(6,2);if(parseInt(Ox3a0)<50){Ox3a0=OxO65f4[70]+Ox3a0;} else {Ox3a0=OxO65f4[71]+Ox3a0;} ;var Ox39f=Ox3a0+Ox39d.substr(3,2)+Ox39d.substr(0,2);} ;if(Ox39e[OxO65f4[30]]==10){var Ox3a1=Ox39e.substr(6,4)+Ox39e.substr(3,2)+Ox39e.substr(0,2);} else {Ox3a0=Ox39e.substr(6,2);if(parseInt(Ox3a0)<50){Ox3a0=OxO65f4[70]+Ox3a0;} else {Ox3a0=OxO65f4[71]+Ox3a0;} ;var Ox3a1=Ox3a0+Ox39e.substr(3,2)+Ox39e.substr(0,2);} ;if(Ox39f==Ox3a1){return 0;} ;if(Ox39f<Ox3a1){return -1;} ;return 1;} ;function ts_sort_currency(Oxe7,b){var Ox39d=ts_getInnerText(Oxe7[OxO65f4[48]][SORT_COLUMN_INDEX]).replace(/[^0-9.]/g,OxO65f4[9]);var Ox39e=ts_getInnerText(b[OxO65f4[48]][SORT_COLUMN_INDEX]).replace(/[^0-9.]/g,OxO65f4[9]);return parseFloat(Ox39d)-parseFloat(Ox39e);} ;function ts_sort_numeric(Oxe7,b){var Ox39d=parseFloat(ts_getInnerText(Oxe7[OxO65f4[48]][SORT_COLUMN_INDEX]));if(isNaN(Ox39d)){Ox39d=0;} ;var Ox39e=parseFloat(ts_getInnerText(b[OxO65f4[48]][SORT_COLUMN_INDEX]));if(isNaN(Ox39e)){Ox39e=0;} ;return Ox39d-Ox39e;} ;function ts_sort_caseinsensitive(Oxe7,b){var Ox39d=ts_getInnerText(Oxe7[OxO65f4[48]][SORT_COLUMN_INDEX]).toLowerCase();var Ox39e=ts_getInnerText(b[OxO65f4[48]][SORT_COLUMN_INDEX]).toLowerCase();if(Ox39d==Ox39e){return 0;} ;if(Ox39d<Ox39e){return -1;} ;return 1;} ;function ts_sort_default(Oxe7,b){var Ox39d=ts_getInnerText(Oxe7[OxO65f4[48]][SORT_COLUMN_INDEX]);var Ox39e=ts_getInnerText(b[OxO65f4[48]][SORT_COLUMN_INDEX]);if(Ox39d==Ox39e){return 0;} ;if(Ox39d<Ox39e){return -1;} ;return 1;} [sortables_init];RequireFileBrowseScript();var Form1=Window_GetElement(window,OxO65f4[72],true);var hiddenDirectory=Window_GetElement(window,OxO65f4[0],true);var hiddenFile=Window_GetElement(window,OxO65f4[1],true);var hiddenAlert=Window_GetElement(window,OxO65f4[2],true);var hiddenAction=Window_GetElement(window,OxO65f4[3],true);var hiddenActionData=Window_GetElement(window,OxO65f4[4],true);var Image1=Window_GetElement(window,OxO65f4[73],true);var FolderDescription=Window_GetElement(window,OxO65f4[74],true);var CreateDir=Window_GetElement(window,OxO65f4[75],true);var Copy=Window_GetElement(window,OxO65f4[76],true);var Move=Window_GetElement(window,OxO65f4[77],true);var FoldersAndFiles=Window_GetElement(window,OxO65f4[28],true);var Delete=Window_GetElement(window,OxO65f4[78],true);var DoRefresh=Window_GetElement(window,OxO65f4[79],true);var name_Cell=Window_GetElement(window,OxO65f4[80],true);var size_Cell=Window_GetElement(window,OxO65f4[81],true);var op_Cell=Window_GetElement(window,OxO65f4[82],true);var row0=Window_GetElement(window,OxO65f4[83],true);var row0_cb=Window_GetElement(window,OxO65f4[84],true);var divpreview=Window_GetElement(window,OxO65f4[85],true);var Table3=Window_GetElement(window,OxO65f4[86],true);var Width=Window_GetElement(window,OxO65f4[87],true);var Height=Window_GetElement(window,OxO65f4[88],true);var bgColortext=Window_GetElement(window,OxO65f4[89],true);var bgColortext_Preview=Window_GetElement(window,OxO65f4[90],true);var Quality=Window_GetElement(window,OxO65f4[91],true);var Scale=Window_GetElement(window,OxO65f4[92],true);var Align=Window_GetElement(window,OxO65f4[93],true);var HSpace=Window_GetElement(window,OxO65f4[94],true);var VSpace=Window_GetElement(window,OxO65f4[95],true);var TargetUrl=Window_GetElement(window,OxO65f4[39],true);var chk_Loop=Window_GetElement(window,OxO65f4[96],true);var chk_Autoplay=Window_GetElement(window,OxO65f4[97],true);var chk_Transparency=Window_GetElement(window,OxO65f4[98],true);var chk_FlashMenu=Window_GetElement(window,OxO65f4[99],true);var chk_Fullscreen=Window_GetElement(window,OxO65f4[100],true);var btn_zoom_in=Window_GetElement(window,OxO65f4[101],true);var btn_zoom_out=Window_GetElement(window,OxO65f4[102],true);var btn_Actualsize=Window_GetElement(window,OxO65f4[103],true);var editor=Window_GetDialogArguments(window);do_preview();function do_preview(){var Ox119=GetEmbed();if(Ox119){divpreview[OxO65f4[49]]=Ox119;} ;} ;function do_insert(){if(TargetUrl[OxO65f4[10]]==OxO65f4[9]){alert(OxO65f4[104]);return false;} ;var Ox119=GetEmbed();if(Ox119){editor.PasteHTML(Ox119);} ;Window_CloseDialog(window);} ;function GetEmbed(){var Oxda,Ox2b,Ox3da,Ox3db,Ox3dc,Ox280;Oxda=Width[OxO65f4[10]]+OxO65f4[9];Ox2b=Height[OxO65f4[10]]+OxO65f4[9];Ox3da=chk_Transparency[OxO65f4[10]];Ox3dc=Quality[OxO65f4[10]];Ox280=TargetUrl[OxO65f4[10]];if(Ox280==OxO65f4[9]){return OxO65f4[9];} ;if(Ox280.indexOf(OxO65f4[105])!=-1){var Ox3dd=chk_Autoplay[OxO65f4[106]]?OxO65f4[107]:OxO65f4[9];Ox280=OxO65f4[108]+window[OxO65f4[110]][OxO65f4[109]]+Ox280+OxO65f4[111]+Ox3dd;} ;var Ox3de,Ox3df,Ox3e0,Ox3e1,Ox3e2,Ox3e3,Ox3e4,Ox3e5;switch(Scale[OxO65f4[10]]){case OxO65f4[113]:Ox3e4=OxO65f4[112];break ;;case OxO65f4[115]:Ox3e4=OxO65f4[114];break ;;case OxO65f4[9]:Ox3e4=OxO65f4[9];break ;;} ;Ox3e5=OxO65f4[9];if(HSpace[OxO65f4[10]]){Ox3e5=Ox3e5+OxO65f4[116]+HSpace[OxO65f4[10]]+OxO65f4[117];} ;if(VSpace[OxO65f4[10]]){Ox3e5=Ox3e5+OxO65f4[118]+VSpace[OxO65f4[10]]+OxO65f4[117];} ;if(Align[OxO65f4[10]]){Ox3e5=Ox3e5+OxO65f4[119]+Align[OxO65f4[10]]+OxO65f4[117];} ;Ox3de=chk_Transparency[OxO65f4[106]]?OxO65f4[120]:OxO65f4[9];Ox3e0=chk_Fullscreen[OxO65f4[106]]?OxO65f4[121]:OxO65f4[122];Ox3df=chk_FlashMenu[OxO65f4[106]]?OxO65f4[9]:OxO65f4[123];Ox3e1=chk_Loop[OxO65f4[106]]?OxO65f4[9]:OxO65f4[124];Ox3e2=chk_Autoplay[OxO65f4[106]]?OxO65f4[9]:OxO65f4[125];Ox3e3=bgColortext[OxO65f4[10]]==OxO65f4[9]?OxO65f4[9]:OxO65f4[126]+bgColortext[OxO65f4[10]]+OxO65f4[127];var Ox3e6=OxO65f4[128]+Ox280+OxO65f4[129]+Oxda+OxO65f4[130]+Ox2b+OxO65f4[117]+Ox3e5+OxO65f4[131]+Ox3dc+OxO65f4[117]+Ox3de+OxO65f4[44]+Ox3e1+OxO65f4[44]+Ox3df+OxO65f4[44]+Ox3e0+OxO65f4[44]+Ox3e2+OxO65f4[44]+Ox3e3+OxO65f4[44]+Ox3e4+OxO65f4[132];var Ox3e7=OxO65f4[133]+OxO65f4[134]+OxO65f4[135]+Ox2b+OxO65f4[129]+Oxda+OxO65f4[117]+Ox3e5+OxO65f4[136]+OxO65f4[137]+OxO65f4[138]+Ox280+OxO65f4[139]+OxO65f4[140]+Ox3dc+OxO65f4[141];if(chk_Transparency[OxO65f4[106]]){Ox3e7=Ox3e7+OxO65f4[142];} ;if(chk_Fullscreen[OxO65f4[106]]){Ox3e7=Ox3e7+OxO65f4[143];} else {Ox3e7=Ox3e7+OxO65f4[144];} ;if(!chk_FlashMenu[OxO65f4[106]]){Ox3e7=Ox3e7+OxO65f4[145];} ;if(!chk_Loop[OxO65f4[106]]){Ox3e7=Ox3e7+OxO65f4[146];} ;if(!chk_Loop[OxO65f4[106]]){Ox3e7=Ox3e7+OxO65f4[146];} ;if(!chk_Autoplay[OxO65f4[106]]){Ox3e7=Ox3e7+OxO65f4[147];} ;if(Scale[OxO65f4[10]]!=OxO65f4[9]){Ox3e7=Ox3e7+OxO65f4[148]+Scale[OxO65f4[10]]+OxO65f4[141];} ;if(bgColortext[OxO65f4[10]]!=OxO65f4[9]){Ox3e7=Ox3e7+OxO65f4[149]+bgColortext[OxO65f4[10]]+OxO65f4[141];} ;Ox3e7=Ox3e7+Ox3e6+OxO65f4[150];return Ox3e7;} ;function do_Close(){Window_CloseDialog(window);} ;divpreview[OxO65f4[152]][OxO65f4[151]]=1;function Zoom_In(){if(Browser_IsWinIE()){if(divpreview[OxO65f4[152]][OxO65f4[151]]!=0){divpreview[OxO65f4[152]][OxO65f4[151]]*=1.2;} else {divpreview[OxO65f4[152]][OxO65f4[151]]=1.2;} ;} ;} ;function Zoom_Out(){if(Browser_IsWinIE()){if(divpreview[OxO65f4[152]][OxO65f4[151]]!=0){divpreview[OxO65f4[152]][OxO65f4[151]]*=0.8;} else {divpreview[OxO65f4[152]][OxO65f4[151]]=0.8;} ;} ;} ;function Actualsize(){if(Browser_IsWinIE()){divpreview[OxO65f4[152]][OxO65f4[151]]=1;} ;do_preview();} ;bgColortext[OxO65f4[153]]=bgColortext_Preview[OxO65f4[153]]=function bgColortext_onclick(){SelectColor(bgColortext,bgColortext_Preview);} ;btn_zoom_in[OxO65f4[152]][OxO65f4[154]]=btn_zoom_out[OxO65f4[152]][OxO65f4[154]]=btn_Actualsize[OxO65f4[152]][OxO65f4[154]]=OxO65f4[155];if(Browser_IsIE7()){var _dialogPromptID=null;function IEprompt(Ox218,Ox219,Ox21a){that=this;this[OxO65f4[156]]=function (Ox21b){val=document.getElementById(OxO65f4[157])[OxO65f4[10]];_dialogPromptID[OxO65f4[152]][OxO65f4[154]]=OxO65f4[155];document.getElementById(OxO65f4[157])[OxO65f4[10]]=OxO65f4[9];if(Ox21b){val=OxO65f4[9];} ;Ox218(val);return false;} ;if(Ox21a==undefined){Ox21a=OxO65f4[9];} ;if(_dialogPromptID==null){var Ox21c=document.getElementsByTagName(OxO65f4[158])[0];tnode=document.createElement(OxO65f4[159]);tnode[OxO65f4[46]]=OxO65f4[160];Ox21c.appendChild(tnode);_dialogPromptID=document.getElementById(OxO65f4[160]);tnode=document.createElement(OxO65f4[159]);tnode[OxO65f4[46]]=OxO65f4[161];Ox21c.appendChild(tnode);_dialogPromptID[OxO65f4[152]][OxO65f4[162]]=OxO65f4[163];_dialogPromptID[OxO65f4[152]][OxO65f4[164]]=OxO65f4[165];_dialogPromptID[OxO65f4[152]][OxO65f4[166]]=OxO65f4[167];_dialogPromptID[OxO65f4[152]][OxO65f4[168]]=OxO65f4[169];_dialogPromptID[OxO65f4[152]][OxO65f4[170]]=OxO65f4[171];} ;var Ox21d=OxO65f4[172];Ox21d+=OxO65f4[173]+Ox219+OxO65f4[174];Ox21d+=OxO65f4[175];Ox21d+=OxO65f4[176]+Ox21a+OxO65f4[177];Ox21d+=OxO65f4[178];Ox21d+=OxO65f4[179];Ox21d+=OxO65f4[180];Ox21d+=OxO65f4[181];Ox21d+=OxO65f4[182];_dialogPromptID[OxO65f4[49]]=Ox21d;_dialogPromptID[OxO65f4[152]][OxO65f4[183]]=OxO65f4[184];_dialogPromptID[OxO65f4[152]][OxO65f4[185]]=parseInt((document[OxO65f4[158]][OxO65f4[186]]-315)/2)+OxO65f4[187];_dialogPromptID[OxO65f4[152]][OxO65f4[154]]=OxO65f4[188];var Ox21e=document.getElementById(OxO65f4[157]);try{var Ox21f=Ox21e.createTextRange();Ox21f.collapse(false);Ox21f.select();} catch(x){Ox21e.focus();} ;} ;} ;if(CreateDir){CreateDir[OxO65f4[31]]= new Function(OxO65f4[189]);} ;if(Copy){Copy[OxO65f4[31]]= new Function(OxO65f4[189]);} ;if(Move){Move[OxO65f4[31]]= new Function(OxO65f4[189]);} ;if(Delete){Delete[OxO65f4[31]]= new Function(OxO65f4[189]);} ;if(DoRefresh){DoRefresh[OxO65f4[31]]= new Function(OxO65f4[189]);} ;if(btn_zoom_in){btn_zoom_in[OxO65f4[31]]= new Function(OxO65f4[189]);} ;if(btn_zoom_out){btn_zoom_out[OxO65f4[31]]= new Function(OxO65f4[189]);} ;if(btn_Actualsize){btn_Actualsize[OxO65f4[31]]= new Function(OxO65f4[189]);} ;