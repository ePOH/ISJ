var OxOfd7b=["zoomcount","wheelDelta","zoom","style","0%","top","hiddenDirectory","hiddenFile","hiddenAlert","hiddenAction","hiddenActionData","This function is disabled in the demo mode.","disabled","[[Disabled]]","[[SpecifyNewFolderName]]","","value","createdir","[[CopyMoveto]]","/","move","copy","[[AreyouSureDelete]]","parentNode","text","isdir","true",".","[[SpecifyNewFileName]]","rename","True","False",":","path","FoldersAndFiles","TR","length","onmouseover","this.bgColor=\x27#eeeeee\x27;","onmouseout","this.bgColor=\x27\x27;","nodeName","INPUT","changedir","url","TargetUrl","htmlcode","onload","getElementsByTagName","table","sortable"," ","className","id","rows","cells","innerHTML","\x3Ca href=\x22#\x22 onclick=\x22ts_resortTable(this);return false;\x22\x3E","\x3Cspan class=\x22sortarrow\x22\x3E\x26nbsp;\x3C/span\x3E\x3C/a\x3E","string","undefined","innerText","childNodes","nodeValue","nodeType","span","cellIndex","TABLE","sortdir","down","\x26uarr;","up","\x26darr;","sortbottom","tBodies","sortarrow","\x26nbsp;","20","19","Form1","Image1","FolderDescription","CreateDir","Copy","Move","img_AutoThumbnail","img_ImageEditor","Delete","DoRefresh","name_Cell","size_Cell","op_Cell","op_space","divpreview","img_demo","Align","Border","bordercolor","bordercolor_Preview","inp_width","imgLock","inp_height","constrain_prop","HSpace","VSpace","AlternateText","inp_id","longDesc","fieldsetUpload","Button1","Button2","btn_zoom_in","btn_zoom_out","btn_Actualsize","btn_bestfit","img","editor","src","src_cetemp","width","height","vspace","hspace","border","borderColor","backgroundColor","align","alt","file","IMG","complete","../images/1x1.gif","?","\x26time=","?time=","0","onmousewheel",".aspx","display","none","Edit","[[ValidID]]","[[ValidColor]]","[[SelectImagetoInsert]]","longdesc","=\x22","\x22","checked","../Load.ashx?type=image\x26file=locked.gif","../Load.ashx?type=image\x26file=1x1.gif","[[SelectImagetoThumbnail]]","dir","refresh","Thumbnail.aspx?","dialogWidth:310px;dialogHeight:150px;help:no;scroll:no;status:no;resizable:1;","UseStandardDialog","1","\x26Dialog=Standard","setting=","EditorSetting","\x26Theme=","Theme","\x26","DNNArg","[[SelectImagetoEdit]]","[[_CuteEditorResource_]]","../ImageEditor/ImageEditor.aspx?f=","\x26p=","\x26setting=","dialogWidth:676px;dialogHeight:500px;help:no;scroll:no;status:no;resizable:0;","onclick","wrapupPrompt","iepromptfield","body","div","IEPromptBox","promptBlackout","1px solid #b0bec7","#f0f0f0","position","absolute","330px","zIndex","100","\x3Cdiv style=\x22width: 100%; padding-top:3px;background-color: #DCE7EB; font-family: verdana; font-size: 10pt; font-weight: bold; height: 22px; text-align:center; background:url(Load.ashx?type=image\x26file=formbg2.gif) repeat-x left top;\x22\x3E[[InputRequired]]\x3C/div\x3E","\x3Cdiv style=\x22padding: 10px\x22\x3E","\x3CBR\x3E\x3CBR\x3E","\x3Cform action=\x22\x22 onsubmit=\x22return wrapupPrompt()\x22\x3E","\x3Cinput id=\x22iepromptfield\x22 name=\x22iepromptdata\x22 type=text size=46 value=\x22","\x22\x3E","\x3Cbr\x3E\x3Cbr\x3E\x3Ccenter\x3E","\x3Cinput type=\x22submit\x22 value=\x22\x26nbsp;\x26nbsp;\x26nbsp;[[OK]]\x26nbsp;\x26nbsp;\x26nbsp;\x22\x3E","\x26nbsp;\x26nbsp;\x26nbsp;\x26nbsp;\x26nbsp;\x26nbsp;","\x3Cinput type=\x22button\x22 onclick=\x22wrapupPrompt(true)\x22 value=\x22\x26nbsp;[[Cancel]]\x26nbsp;\x22\x3E","\x3C/form\x3E\x3C/div\x3E","100px","left","offsetWidth","px","block","CuteEditor_ColorPicker_ButtonOver(this)"];function OnImageMouseWheel(){var Ox32a=Event_GetEvent();var img=Event_GetSrcElement(Ox32a);var Ox40a=img[OxOfd7b[0]]||3;if(Ox32a[OxOfd7b[1]]>=106){Ox40a++;} else {if(Ox32a[OxOfd7b[1]]<=-106){Ox40a--;} ;} ;img[OxOfd7b[0]]=Ox40a;img[OxOfd7b[3]][OxOfd7b[2]]=Ox40a+OxOfd7b[4];return false;} ;function Window_GetDialogTop(Ox1a1){return Ox1a1[OxOfd7b[5]];} ;var hiddenDirectory=Window_GetElement(window,OxOfd7b[6],true);var hiddenFile=Window_GetElement(window,OxOfd7b[7],true);var hiddenAlert=Window_GetElement(window,OxOfd7b[8],true);var hiddenAction=Window_GetElement(window,OxOfd7b[9],true);var hiddenActionData=Window_GetElement(window,OxOfd7b[10],true);function CreateDir_click(){if(isDemoMode){alert(OxOfd7b[11]);return false;} ;if(Event_GetSrcElement()[OxOfd7b[12]]){alert(OxOfd7b[13]);return false;} ;if(Browser_IsIE7()){IEprompt(Ox218,OxOfd7b[14],OxOfd7b[15]);function Ox218(Ox379){if(Ox379){hiddenActionData[OxOfd7b[16]]=Ox379;hiddenAction[OxOfd7b[16]]=OxOfd7b[17];window.PostBackAction();return true;} else {return false;} ;} ;return Event_CancelEvent();} else {var Ox379=prompt(OxOfd7b[14],OxOfd7b[15]);if(Ox379){hiddenActionData[OxOfd7b[16]]=Ox379;return true;} else {return false;} ;return false;} ;} ;function Move_click(){if(isDemoMode){alert(OxOfd7b[11]);return false;} ;if(Event_GetSrcElement()[OxOfd7b[12]]){alert(OxOfd7b[13]);return false;} ;if(Browser_IsIE7()){IEprompt(Ox218,OxOfd7b[18],OxOfd7b[19]);function Ox218(Ox379){if(Ox379){hiddenActionData[OxOfd7b[16]]=Ox379;hiddenAction[OxOfd7b[16]]=OxOfd7b[20];window.PostBackAction();return true;} else {return false;} ;} ;return Event_CancelEvent();} else {var Ox379=prompt(OxOfd7b[18],OxOfd7b[19]);if(Ox379){hiddenActionData[OxOfd7b[16]]=Ox379;return true;} else {return false;} ;return false;} ;} ;function Copy_click(){if(isDemoMode){alert(OxOfd7b[11]);return false;} ;if(Event_GetSrcElement()[OxOfd7b[12]]){alert(OxOfd7b[13]);return false;} ;if(Browser_IsIE7()){IEprompt(Ox218,OxOfd7b[18],OxOfd7b[19]);function Ox218(Ox379){if(Ox379){hiddenActionData[OxOfd7b[16]]=Ox379;hiddenAction[OxOfd7b[16]]=OxOfd7b[21];window.PostBackAction();return true;} else {return false;} ;} ;return Event_CancelEvent();} else {var Ox379=prompt(OxOfd7b[18],OxOfd7b[19]);if(Ox379){hiddenActionData[OxOfd7b[16]]=Ox379;return true;} else {return false;} ;return false;} ;} ;function Delete_click(){if(isDemoMode){alert(OxOfd7b[11]);return false;} ;if(Event_GetSrcElement()[OxOfd7b[12]]){alert(OxOfd7b[13]);return false;} ;return confirm(OxOfd7b[22]);} ;function EditImg_click(img){if(isDemoMode){alert(OxOfd7b[11]);return false;} ;if(img[OxOfd7b[12]]){alert(OxOfd7b[13]);return false;} ;var Ox37e=img[OxOfd7b[23]][OxOfd7b[23]];var Ox37f=Ox37e[OxOfd7b[24]];var name;var Ox380;if(Browser_IsOpera()){Ox380=Ox37e.getAttribute(OxOfd7b[25])==OxOfd7b[26];} else {Ox380=Ox37e[OxOfd7b[25]];} ;if(Browser_IsIE7()){var Oxc3;if(Ox380){IEprompt(Ox218,OxOfd7b[14],Ox37f);} else {var i=Ox37f.lastIndexOf(OxOfd7b[27]);Oxc3=Ox37f.substr(i);var Ox12=Ox37f.substr(0,Ox37f.lastIndexOf(OxOfd7b[27]));IEprompt(Ox218,OxOfd7b[28],Ox12);} ;function Ox218(Ox379){if(Ox379&&Ox379!=Ox37e[OxOfd7b[24]]){if(!Ox380){Ox379=Ox379+Oxc3;} ;hiddenAction[OxOfd7b[16]]=OxOfd7b[29];hiddenActionData[OxOfd7b[16]]=(Ox380?OxOfd7b[30]:OxOfd7b[31])+OxOfd7b[32]+Ox37e[OxOfd7b[33]]+OxOfd7b[32]+Ox379;window.PostBackAction();} ;} ;} else {if(Ox380){name=prompt(OxOfd7b[14],Ox37f);} else {var i=Ox37f.lastIndexOf(OxOfd7b[27]);var Oxc3=Ox37f.substr(i);var Ox12=Ox37f.substr(0,Ox37f.lastIndexOf(OxOfd7b[27]));name=prompt(OxOfd7b[28],Ox12);if(name){name=name+Oxc3;} ;} ;if(name&&name!=Ox37e[OxOfd7b[24]]){hiddenAction[OxOfd7b[16]]=OxOfd7b[29];hiddenActionData[OxOfd7b[16]]=(Ox380?OxOfd7b[30]:OxOfd7b[31])+OxOfd7b[32]+Ox37e[OxOfd7b[33]]+OxOfd7b[32]+name;window.PostBackAction();} ;} ;return Event_CancelEvent();} ;setMouseOver();function setMouseOver(){var FoldersAndFiles=Window_GetElement(window,OxOfd7b[34],true);var Ox383=FoldersAndFiles.getElementsByTagName(OxOfd7b[35]);for(var i=0;i<Ox383[OxOfd7b[36]];i++){var Ox37e=Ox383[i];Ox37e[OxOfd7b[37]]= new Function(OxOfd7b[15],OxOfd7b[38]);Ox37e[OxOfd7b[39]]= new Function(OxOfd7b[15],OxOfd7b[40]);} ;} ;function row_click(Ox37e){var Ox380;if(Browser_IsOpera()){Ox380=Ox37e.getAttribute(OxOfd7b[25])==OxOfd7b[26];} else {Ox380=Ox37e[OxOfd7b[25]];} ;if(Ox380){if(Event_GetSrcElement()[OxOfd7b[41]]==OxOfd7b[42]){return ;} ;hiddenAction[OxOfd7b[16]]=OxOfd7b[43];hiddenActionData[OxOfd7b[16]]=Ox37e.getAttribute(OxOfd7b[33]);window.PostBackAction();} else {var Ox102=Ox37e.getAttribute(OxOfd7b[33]);hiddenFile[OxOfd7b[16]]=Ox102;var Ox280=Ox37e.getAttribute(OxOfd7b[44]);Window_GetElement(window,OxOfd7b[45],true)[OxOfd7b[16]]=Ox280;var htmlcode=Ox37e.getAttribute(OxOfd7b[46]);if(htmlcode!=OxOfd7b[15]&&htmlcode!=null){do_preview(htmlcode);} else {if(Ox280!=OxOfd7b[15]&&Ox280!=null){try{Actualsize();} catch(x){do_preview();} ;} ;} ;} ;} ;function reset_hiddens(){if(hiddenAlert[OxOfd7b[16]]){alert(hiddenAlert.value);} ;if(TargetUrl[OxOfd7b[16]]!=OxOfd7b[15]&&TargetUrl[OxOfd7b[16]]!=null){do_preview();} ;hiddenAlert[OxOfd7b[16]]=OxOfd7b[15];hiddenAction[OxOfd7b[16]]=OxOfd7b[15];hiddenActionData[OxOfd7b[16]]=OxOfd7b[15];} ;Event_Attach(window,OxOfd7b[47],reset_hiddens);function RequireFileBrowseScript(){} ;Event_Attach(window,OxOfd7b[47],sortables_init);var SORT_COLUMN_INDEX;function sortables_init(){if(!document[OxOfd7b[48]]){return ;} ;var Ox388=document.getElementsByTagName(OxOfd7b[49]);for(var Ox389=0;Ox389<Ox388[OxOfd7b[36]];Ox389++){var Ox38a=Ox388[Ox389];if(((OxOfd7b[51]+Ox38a[OxOfd7b[52]]+OxOfd7b[51]).indexOf(OxOfd7b[50])!=-1)&&(Ox38a[OxOfd7b[53]])){ts_makeSortable(Ox38a);} ;} ;} ;function ts_makeSortable(Ox38c){if(Ox38c[OxOfd7b[54]]&&Ox38c[OxOfd7b[54]][OxOfd7b[36]]>0){var Ox38d=Ox38c[OxOfd7b[54]][0];} ;if(!Ox38d){return ;} ;for(var i=2;i<4;i++){var Ox38e=Ox38d[OxOfd7b[55]][i];var Ox27b=ts_getInnerText(Ox38e);Ox38e[OxOfd7b[56]]=OxOfd7b[57]+Ox27b+OxOfd7b[58];} ;} ;function ts_getInnerText(Ox27){if( typeof Ox27==OxOfd7b[59]){return Ox27;} ;if( typeof Ox27==OxOfd7b[60]){return Ox27;} ;if(Ox27[OxOfd7b[61]]){return Ox27[OxOfd7b[61]];} ;var Ox24=OxOfd7b[15];var Ox33a=Ox27[OxOfd7b[62]];var Ox11=Ox33a[OxOfd7b[36]];for(var i=0;i<Ox11;i++){switch(Ox33a[i][OxOfd7b[64]]){case 1:Ox24+=ts_getInnerText(Ox33a[i]);break ;;case 3:Ox24+=Ox33a[i][OxOfd7b[63]];break ;;} ;} ;return Ox24;} ;function ts_resortTable(Ox391){var Ox29e;for(var Ox392=0;Ox392<Ox391[OxOfd7b[62]][OxOfd7b[36]];Ox392++){if(Ox391[OxOfd7b[62]][Ox392][OxOfd7b[41]]&&Ox391[OxOfd7b[62]][Ox392][OxOfd7b[41]].toLowerCase()==OxOfd7b[65]){Ox29e=Ox391[OxOfd7b[62]][Ox392];} ;} ;var Ox393=ts_getInnerText(Ox29e);var Ox1dd=Ox391[OxOfd7b[23]];var Ox394=Ox1dd[OxOfd7b[66]];var Ox38c=getParent(Ox1dd,OxOfd7b[67]);if(Ox38c[OxOfd7b[54]][OxOfd7b[36]]<=1){return ;} ;var Ox395=ts_getInnerText(Ox38c[OxOfd7b[54]][1][OxOfd7b[55]][Ox394]);var Ox396=ts_sort_caseinsensitive;if(Ox395.match(/^\d\d[\/-]\d\d[\/-]\d\d\d\d$/)){Ox396=ts_sort_date;} ;if(Ox395.match(/^\d\d[\/-]\d\d[\/-]\d\d$/)){Ox396=ts_sort_date;} ;if(Ox395.match(/^[?]/)){Ox396=ts_sort_currency;} ;if(Ox395.match(/^[\d\.]+$/)){Ox396=ts_sort_numeric;} ;SORT_COLUMN_INDEX=Ox394;var Ox38d= new Array();var Ox397= new Array();for(var i=0;i<Ox38c[OxOfd7b[54]][0][OxOfd7b[36]];i++){Ox38d[i]=Ox38c[OxOfd7b[54]][0][i];} ;for(var j=1;j<Ox38c[OxOfd7b[54]][OxOfd7b[36]];j++){Ox397[j-1]=Ox38c[OxOfd7b[54]][j];} ;Ox397.sort(Ox396);if(Ox29e.getAttribute(OxOfd7b[68])==OxOfd7b[69]){var Ox398=OxOfd7b[70];Ox397.reverse();Ox29e.setAttribute(OxOfd7b[68],OxOfd7b[71]);} else {Ox398=OxOfd7b[72];Ox29e.setAttribute(OxOfd7b[68],OxOfd7b[69]);} ;for(i=0;i<Ox397[OxOfd7b[36]];i++){if(!Ox397[i][OxOfd7b[52]]||(Ox397[i][OxOfd7b[52]]&&(Ox397[i][OxOfd7b[52]].indexOf(OxOfd7b[73])==-1))){Ox38c[OxOfd7b[74]][0].appendChild(Ox397[i]);} ;} ;for(i=0;i<Ox397[OxOfd7b[36]];i++){if(Ox397[i][OxOfd7b[52]]&&(Ox397[i][OxOfd7b[52]].indexOf(OxOfd7b[73])!=-1)){Ox38c[OxOfd7b[74]][0].appendChild(Ox397[i]);} ;} ;var Ox399=document.getElementsByTagName(OxOfd7b[65]);for(var Ox392=0;Ox392<Ox399[OxOfd7b[36]];Ox392++){if(Ox399[Ox392][OxOfd7b[52]]==OxOfd7b[75]){if(getParent(Ox399[Ox392],OxOfd7b[49])==getParent(Ox391,OxOfd7b[49])){Ox399[Ox392][OxOfd7b[56]]=OxOfd7b[76];} ;} ;} ;Ox29e[OxOfd7b[56]]=Ox398;} ;function getParent(Ox27,Ox39b){if(Ox27==null){return null;} else {if(Ox27[OxOfd7b[64]]==1&&Ox27[OxOfd7b[41]].toLowerCase()==Ox39b.toLowerCase()){return Ox27;} else {return getParent(Ox27.parentNode,Ox39b);} ;} ;} ;function ts_sort_date(Oxe7,b){var Ox39d=ts_getInnerText(Oxe7[OxOfd7b[55]][SORT_COLUMN_INDEX]);var Ox39e=ts_getInnerText(b[OxOfd7b[55]][SORT_COLUMN_INDEX]);if(Ox39d[OxOfd7b[36]]==10){var Ox39f=Ox39d.substr(6,4)+Ox39d.substr(3,2)+Ox39d.substr(0,2);} else {var Ox3a0=Ox39d.substr(6,2);if(parseInt(Ox3a0)<50){Ox3a0=OxOfd7b[77]+Ox3a0;} else {Ox3a0=OxOfd7b[78]+Ox3a0;} ;var Ox39f=Ox3a0+Ox39d.substr(3,2)+Ox39d.substr(0,2);} ;if(Ox39e[OxOfd7b[36]]==10){var Ox3a1=Ox39e.substr(6,4)+Ox39e.substr(3,2)+Ox39e.substr(0,2);} else {Ox3a0=Ox39e.substr(6,2);if(parseInt(Ox3a0)<50){Ox3a0=OxOfd7b[77]+Ox3a0;} else {Ox3a0=OxOfd7b[78]+Ox3a0;} ;var Ox3a1=Ox3a0+Ox39e.substr(3,2)+Ox39e.substr(0,2);} ;if(Ox39f==Ox3a1){return 0;} ;if(Ox39f<Ox3a1){return -1;} ;return 1;} ;function ts_sort_currency(Oxe7,b){var Ox39d=ts_getInnerText(Oxe7[OxOfd7b[55]][SORT_COLUMN_INDEX]).replace(/[^0-9.]/g,OxOfd7b[15]);var Ox39e=ts_getInnerText(b[OxOfd7b[55]][SORT_COLUMN_INDEX]).replace(/[^0-9.]/g,OxOfd7b[15]);return parseFloat(Ox39d)-parseFloat(Ox39e);} ;function ts_sort_numeric(Oxe7,b){var Ox39d=parseFloat(ts_getInnerText(Oxe7[OxOfd7b[55]][SORT_COLUMN_INDEX]));if(isNaN(Ox39d)){Ox39d=0;} ;var Ox39e=parseFloat(ts_getInnerText(b[OxOfd7b[55]][SORT_COLUMN_INDEX]));if(isNaN(Ox39e)){Ox39e=0;} ;return Ox39d-Ox39e;} ;function ts_sort_caseinsensitive(Oxe7,b){var Ox39d=ts_getInnerText(Oxe7[OxOfd7b[55]][SORT_COLUMN_INDEX]).toLowerCase();var Ox39e=ts_getInnerText(b[OxOfd7b[55]][SORT_COLUMN_INDEX]).toLowerCase();if(Ox39d==Ox39e){return 0;} ;if(Ox39d<Ox39e){return -1;} ;return 1;} ;function ts_sort_default(Oxe7,b){var Ox39d=ts_getInnerText(Oxe7[OxOfd7b[55]][SORT_COLUMN_INDEX]);var Ox39e=ts_getInnerText(b[OxOfd7b[55]][SORT_COLUMN_INDEX]);if(Ox39d==Ox39e){return 0;} ;if(Ox39d<Ox39e){return -1;} ;return 1;} [sortables_init];RequireFileBrowseScript();var Form1=Window_GetElement(window,OxOfd7b[79],true);var hiddenDirectory=Window_GetElement(window,OxOfd7b[6],true);var hiddenFile=Window_GetElement(window,OxOfd7b[7],true);var hiddenAlert=Window_GetElement(window,OxOfd7b[8],true);var hiddenAction=Window_GetElement(window,OxOfd7b[9],true);var hiddenActionData=Window_GetElement(window,OxOfd7b[10],true);var Image1=Window_GetElement(window,OxOfd7b[80],true);var FolderDescription=Window_GetElement(window,OxOfd7b[81],true);var CreateDir=Window_GetElement(window,OxOfd7b[82],true);var Copy=Window_GetElement(window,OxOfd7b[83],true);var Move=Window_GetElement(window,OxOfd7b[84],true);var img_AutoThumbnail=Window_GetElement(window,OxOfd7b[85],true);var img_ImageEditor=Window_GetElement(window,OxOfd7b[86],false);var FoldersAndFiles=Window_GetElement(window,OxOfd7b[34],true);var Delete=Window_GetElement(window,OxOfd7b[87],true);var DoRefresh=Window_GetElement(window,OxOfd7b[88],true);var name_Cell=Window_GetElement(window,OxOfd7b[89],true);var size_Cell=Window_GetElement(window,OxOfd7b[90],true);var op_Cell=Window_GetElement(window,OxOfd7b[91],true);var op_space=Window_GetElement(window,OxOfd7b[92],true);var divpreview=Window_GetElement(window,OxOfd7b[93],true);var img_demo=Window_GetElement(window,OxOfd7b[94],true);var Align=Window_GetElement(window,OxOfd7b[95],true);var Border=Window_GetElement(window,OxOfd7b[96],true);var bordercolor=Window_GetElement(window,OxOfd7b[97],true);var bordercolor_Preview=Window_GetElement(window,OxOfd7b[98],true);var inp_width=Window_GetElement(window,OxOfd7b[99],true);var imgLock=Window_GetElement(window,OxOfd7b[100],true);var inp_height=Window_GetElement(window,OxOfd7b[101],true);var constrain_prop=Window_GetElement(window,OxOfd7b[102],true);var HSpace=Window_GetElement(window,OxOfd7b[103],true);var VSpace=Window_GetElement(window,OxOfd7b[104],true);var TargetUrl=Window_GetElement(window,OxOfd7b[45],true);var AlternateText=Window_GetElement(window,OxOfd7b[105],true);var inp_id=Window_GetElement(window,OxOfd7b[106],true);var longDesc=Window_GetElement(window,OxOfd7b[107],true);var fieldsetUpload=Window_GetElement(window,OxOfd7b[108],true);var Button1=Window_GetElement(window,OxOfd7b[109],true);var Button2=Window_GetElement(window,OxOfd7b[110],true);var btn_zoom_in=Window_GetElement(window,OxOfd7b[111],true);var btn_zoom_out=Window_GetElement(window,OxOfd7b[112],true);var btn_Actualsize=Window_GetElement(window,OxOfd7b[113],true);var btn_bestfit=Window_GetElement(window,OxOfd7b[114],true);var obj=Window_GetDialogArguments(window);var element=obj[OxOfd7b[115]];var editor=obj[OxOfd7b[116]];var src=OxOfd7b[15];if(element.getAttribute(OxOfd7b[117])){src=element.getAttribute(OxOfd7b[117]);} ;if(element.getAttribute(OxOfd7b[118])){src=element.getAttribute(OxOfd7b[118]);} ;inp_width[OxOfd7b[16]]=element[OxOfd7b[119]]||OxOfd7b[15];inp_height[OxOfd7b[16]]=element[OxOfd7b[120]]||OxOfd7b[15];inp_id[OxOfd7b[16]]=element[OxOfd7b[53]]||OxOfd7b[15];if(element[OxOfd7b[121]]<=0){VSpace[OxOfd7b[16]]=OxOfd7b[15];} else {VSpace[OxOfd7b[16]]=element[OxOfd7b[121]];} ;if(element[OxOfd7b[122]]<=0){HSpace[OxOfd7b[16]]=OxOfd7b[15];} else {HSpace[OxOfd7b[16]]=element[OxOfd7b[122]];} ;Border[OxOfd7b[16]]=element[OxOfd7b[123]]||OxOfd7b[15];if(Browser_IsWinIE()){bordercolor[OxOfd7b[16]]=element[OxOfd7b[3]][OxOfd7b[124]];} else {var arr=revertColor(element[OxOfd7b[3]].borderColor).split(OxOfd7b[51]);bordercolor[OxOfd7b[16]]=arr[0];} ;bordercolor[OxOfd7b[3]][OxOfd7b[125]]=bordercolor[OxOfd7b[16]]||OxOfd7b[15];bordercolor_Preview[OxOfd7b[3]][OxOfd7b[125]]=bordercolor[OxOfd7b[16]]||OxOfd7b[15];Align[OxOfd7b[16]]=element[OxOfd7b[126]]||OxOfd7b[15];AlternateText[OxOfd7b[16]]=element[OxOfd7b[127]]||OxOfd7b[15];longDesc[OxOfd7b[16]]=element[OxOfd7b[107]]||OxOfd7b[15];if(TargetUrl[OxOfd7b[16]]){Actualsize();} else {if(element&&src){TargetUrl[OxOfd7b[16]]=src;} ;} ;var sCheckFlag=OxOfd7b[128];function ResetFields(){TargetUrl[OxOfd7b[16]]=OxOfd7b[15];inp_width[OxOfd7b[16]]=OxOfd7b[15];inp_height[OxOfd7b[16]]=OxOfd7b[15];inp_id[OxOfd7b[16]]=OxOfd7b[15];VSpace[OxOfd7b[16]]=OxOfd7b[15];HSpace[OxOfd7b[16]]=OxOfd7b[15];Border[OxOfd7b[16]]=OxOfd7b[15];bordercolor[OxOfd7b[16]]=OxOfd7b[15];bordercolor[OxOfd7b[3]][OxOfd7b[125]]=OxOfd7b[15];Align[OxOfd7b[16]]=OxOfd7b[15];AlternateText[OxOfd7b[16]]=OxOfd7b[15];longDesc[OxOfd7b[16]]=OxOfd7b[15];} ;function do_preview(){var Ox228=TargetUrl[OxOfd7b[16]];if(Ox228==null){TargetUrl[OxOfd7b[16]]=OxOfd7b[15];Ox228==OxOfd7b[15];} ;if(Ox228!=null&&Ox228!=OxOfd7b[15]){var Ox419;var Ox41a;var Ox419=document.createElement(OxOfd7b[129]);Ox419[OxOfd7b[117]]=Ox228;function Ox41b(){if(Ox419[OxOfd7b[130]]){window.clearInterval(Ox41a);var Oxa0= new Date();var Oxa1=Oxa0.getTime();if(Ox228==OxOfd7b[15]){Ox228=OxOfd7b[131];} ;if(Ox228.indexOf(OxOfd7b[132])!=-1){Ox228=Ox228+OxOfd7b[133]+Oxa1;} else {Ox228=Ox228+OxOfd7b[134]+Oxa1;} ;if(inp_width[OxOfd7b[16]]==OxOfd7b[135]||inp_width[OxOfd7b[16]]==OxOfd7b[15]){inp_width[OxOfd7b[16]]=Ox419[OxOfd7b[119]];inp_height[OxOfd7b[16]]=Ox419[OxOfd7b[120]];} ;img_demo[OxOfd7b[117]]=Ox228;if(Browser_IsWinIE()){Event_Attach(img_demo,OxOfd7b[136],OnImageMouseWheel);} ;img_demo[OxOfd7b[127]]=AlternateText[OxOfd7b[16]];img_demo[OxOfd7b[126]]=Align[OxOfd7b[16]];img_demo[OxOfd7b[119]]=inp_width[OxOfd7b[16]];img_demo[OxOfd7b[120]]=inp_height[OxOfd7b[16]];img_demo[OxOfd7b[121]]=VSpace[OxOfd7b[16]];img_demo[OxOfd7b[122]]=HSpace[OxOfd7b[16]];if(parseInt(Border.value)>0){img_demo[OxOfd7b[123]]=Border[OxOfd7b[16]];} ;if(bordercolor[OxOfd7b[16]]!=OxOfd7b[15]){img_demo[OxOfd7b[3]][OxOfd7b[124]]=bordercolor[OxOfd7b[16]];} ;Ox228=Ox228.toLowerCase();if(Ox228.indexOf(OxOfd7b[137])!=-1){img_AutoThumbnail[OxOfd7b[3]][OxOfd7b[138]]=OxOfd7b[139];if(img_ImageEditor){img_ImageEditor[OxOfd7b[3]][OxOfd7b[138]]=OxOfd7b[139];} ;} ;} ;} ;Ox41a=window.setInterval(Ox41b,100);} ;} ;function do_insert(){var img=element;img[OxOfd7b[117]]=TargetUrl[OxOfd7b[16]];if(editor.GetActiveTab()==OxOfd7b[140]){img.setAttribute(OxOfd7b[118],TargetUrl.value);} ;img[OxOfd7b[119]]=inp_width[OxOfd7b[16]];img[OxOfd7b[120]]=inp_height[OxOfd7b[16]];if(img[OxOfd7b[3]][OxOfd7b[119]]||img[OxOfd7b[3]][OxOfd7b[120]]){img[OxOfd7b[3]][OxOfd7b[119]]=inp_width[OxOfd7b[16]];img[OxOfd7b[3]][OxOfd7b[120]]=inp_height[OxOfd7b[16]];} ;img[OxOfd7b[121]]=VSpace[OxOfd7b[16]];img[OxOfd7b[122]]=HSpace[OxOfd7b[16]];img[OxOfd7b[123]]=Border[OxOfd7b[16]];var Ox36d=/[^a-z\d]/i;if(Ox36d.test(inp_id.value)){alert(OxOfd7b[141]);return ;} ;img[OxOfd7b[53]]=inp_id[OxOfd7b[16]];try{img[OxOfd7b[3]][OxOfd7b[124]]=bordercolor[OxOfd7b[16]];} catch(er){alert(OxOfd7b[142]);return false;} ;img[OxOfd7b[126]]=Align[OxOfd7b[16]];img[OxOfd7b[127]]=AlternateText[OxOfd7b[16]]||OxOfd7b[15];img[OxOfd7b[107]]=longDesc[OxOfd7b[16]];if(TargetUrl[OxOfd7b[16]]==OxOfd7b[15]){alert(OxOfd7b[143]);return false;} ;if(img[OxOfd7b[119]]==0){img.removeAttribute(OxOfd7b[119]);} ;if(img[OxOfd7b[120]]==0){img.removeAttribute(OxOfd7b[120]);} ;if(img[OxOfd7b[144]]==OxOfd7b[15]||img[OxOfd7b[144]]==null){img.removeAttribute(OxOfd7b[144]);} ;if(img[OxOfd7b[107]]==OxOfd7b[15]||img[OxOfd7b[107]]==null){img.removeAttribute(OxOfd7b[107]);} ;if(img[OxOfd7b[122]]==OxOfd7b[15]){img.removeAttribute(OxOfd7b[122]);} ;if(img[OxOfd7b[121]]==OxOfd7b[15]){img.removeAttribute(OxOfd7b[121]);} ;if(img[OxOfd7b[53]]==OxOfd7b[15]){img.removeAttribute(OxOfd7b[53]);} ;if(img[OxOfd7b[123]]==OxOfd7b[15]){img.removeAttribute(OxOfd7b[123]);} ;if(img[OxOfd7b[126]]==OxOfd7b[15]){img.removeAttribute(OxOfd7b[126]);} ;if(!img[OxOfd7b[23]]){editor.InsertElement(img);} ;Window_CloseDialog(window);} ;function attr(name,Ox4e){if(!Ox4e||Ox4e==OxOfd7b[15]){return OxOfd7b[15];} ;return OxOfd7b[51]+name+OxOfd7b[145]+Ox4e+OxOfd7b[146];} ;function do_Close(){Window_CloseDialog(window);} ;function Zoom_In(){if(Browser_IsWinIE()){if(divpreview[OxOfd7b[3]][OxOfd7b[2]]!=0){divpreview[OxOfd7b[3]][OxOfd7b[2]]*=1.2;} else {divpreview[OxOfd7b[3]][OxOfd7b[2]]=1.2;} ;} ;} ;function Zoom_Out(){if(Browser_IsWinIE()){if(divpreview[OxOfd7b[3]][OxOfd7b[2]]!=0){divpreview[OxOfd7b[3]][OxOfd7b[2]]*=0.8;} else {divpreview[OxOfd7b[3]][OxOfd7b[2]]=0.8;} ;} ;} ;function BestFit(){var img=img_demo;if(!img){return ;} ;var Ox6c=280;var Ox6d=290;if(Browser_IsWinIE()){divpreview[OxOfd7b[3]][OxOfd7b[2]]=1/Math.max(img[OxOfd7b[119]]/Ox6d,img[OxOfd7b[120]]/Ox6c);} ;} ;function Actualsize(){inp_width[OxOfd7b[16]]=OxOfd7b[15];inp_height[OxOfd7b[16]]=OxOfd7b[15];do_preview();if(Browser_IsWinIE()){divpreview[OxOfd7b[3]][OxOfd7b[2]]=1;} ;} ;function toggleConstrains(){if(constrain_prop[OxOfd7b[147]]){imgLock[OxOfd7b[117]]=OxOfd7b[148];checkConstrains(OxOfd7b[119]);} else {imgLock[OxOfd7b[117]]=OxOfd7b[149];} ;} ;var checkingConstrains=false;function checkConstrains(Ox73){if(checkingConstrains){return ;} ;checkingConstrains=true;try{if(constrain_prop[OxOfd7b[147]]){var Ox76=document.createElement(OxOfd7b[129]);Ox76[OxOfd7b[117]]=TargetUrl[OxOfd7b[16]];var Ox41c=Ox76[OxOfd7b[119]];var Ox41d=Ox76[OxOfd7b[120]];if((Ox41c>0)&&(Ox41d>0)){var Ox6d=inp_width[OxOfd7b[16]];var Ox6c=inp_height[OxOfd7b[16]];if(Ox73==OxOfd7b[119]){if(Ox6d[OxOfd7b[36]]==0||isNaN(Ox6d)){inp_width[OxOfd7b[16]]=OxOfd7b[15];inp_height[OxOfd7b[16]]=OxOfd7b[15];} else {Ox6c=parseInt(Ox6d*Ox41d/Ox41c);inp_height[OxOfd7b[16]]=Ox6c;} ;} ;if(Ox73==OxOfd7b[120]){if(Ox6c[OxOfd7b[36]]==0||isNaN(Ox6c)){inp_width[OxOfd7b[16]]=OxOfd7b[15];inp_height[OxOfd7b[16]]=OxOfd7b[15];} else {Ox6d=parseInt(Ox6c*Ox41c/Ox41d);inp_width[OxOfd7b[16]]=Ox6d;} ;} ;} ;} ;do_preview();} finally{checkingConstrains=false;} ;} ;function AutoThumbnail(){if(TargetUrl[OxOfd7b[16]]==OxOfd7b[15]){alert(OxOfd7b[150]);return false;} ;var obj= new Object();obj[OxOfd7b[117]]=TargetUrl[OxOfd7b[16]];obj[OxOfd7b[151]]=FolderDescription[OxOfd7b[56]]+OxOfd7b[15];function Ox354(Ox203){if(Ox203){TargetUrl[OxOfd7b[16]]=Ox203;hiddenAction[OxOfd7b[16]]=OxOfd7b[152];window.PostBackAction();} ;} ;editor.SetNextDialogWindow(window);editor.ShowDialog(Ox354,OxOfd7b[153]+GetDialogQueryString(),obj,OxOfd7b[154]);} ;function GetDialogQueryString(){var Ox119=OxOfd7b[15];if(editor.GetScriptProperty(OxOfd7b[155])==OxOfd7b[156]){Ox119=OxOfd7b[157];} ;return OxOfd7b[158]+editor.GetScriptProperty(OxOfd7b[159])+OxOfd7b[160]+editor.GetScriptProperty(OxOfd7b[161])+Ox119+OxOfd7b[162]+editor.GetScriptProperty(OxOfd7b[163]);} ;function ImageEditor(){var src=TargetUrl[OxOfd7b[16]];if(src==OxOfd7b[15]){alert(OxOfd7b[164]);return false;} ;if(src.charAt(0)!=OxOfd7b[19]){return ;} ;var img=document.createElement(OxOfd7b[129]);img[OxOfd7b[117]]=src;var p=OxOfd7b[165];function Ox354(arr){TargetUrl[OxOfd7b[16]]=src;do_preview();} ;editor.SetNextDialogWindow(window);editor.ShowDialog(Ox354,OxOfd7b[166]+src+OxOfd7b[167]+p+OxOfd7b[168]+editor.GetScriptProperty(OxOfd7b[159]),img,OxOfd7b[169]);} ;bordercolor[OxOfd7b[170]]=bordercolor_Preview[OxOfd7b[170]]=function bordercolor_onclick(){SelectColor(bordercolor,bordercolor_Preview);} ;if(!Browser_IsWinIE()){img_ImageEditor[OxOfd7b[3]][OxOfd7b[138]]=btn_zoom_in[OxOfd7b[3]][OxOfd7b[138]]=btn_zoom_out[OxOfd7b[3]][OxOfd7b[138]]=btn_bestfit[OxOfd7b[3]][OxOfd7b[138]]=btn_Actualsize[OxOfd7b[3]][OxOfd7b[138]]=OxOfd7b[139];} ;if(Browser_IsIE7()){var _dialogPromptID=null;function IEprompt(Ox218,Ox219,Ox21a){that=this;this[OxOfd7b[171]]=function (Ox21b){val=document.getElementById(OxOfd7b[172])[OxOfd7b[16]];_dialogPromptID[OxOfd7b[3]][OxOfd7b[138]]=OxOfd7b[139];document.getElementById(OxOfd7b[172])[OxOfd7b[16]]=OxOfd7b[15];if(Ox21b){val=OxOfd7b[15];} ;Ox218(val);return false;} ;if(Ox21a==undefined){Ox21a=OxOfd7b[15];} ;if(_dialogPromptID==null){var Ox21c=document.getElementsByTagName(OxOfd7b[173])[0];tnode=document.createElement(OxOfd7b[174]);tnode[OxOfd7b[53]]=OxOfd7b[175];Ox21c.appendChild(tnode);_dialogPromptID=document.getElementById(OxOfd7b[175]);tnode=document.createElement(OxOfd7b[174]);tnode[OxOfd7b[53]]=OxOfd7b[176];Ox21c.appendChild(tnode);_dialogPromptID[OxOfd7b[3]][OxOfd7b[123]]=OxOfd7b[177];_dialogPromptID[OxOfd7b[3]][OxOfd7b[125]]=OxOfd7b[178];_dialogPromptID[OxOfd7b[3]][OxOfd7b[179]]=OxOfd7b[180];_dialogPromptID[OxOfd7b[3]][OxOfd7b[119]]=OxOfd7b[181];_dialogPromptID[OxOfd7b[3]][OxOfd7b[182]]=OxOfd7b[183];} ;var Ox21d=OxOfd7b[184];Ox21d+=OxOfd7b[185]+Ox219+OxOfd7b[186];Ox21d+=OxOfd7b[187];Ox21d+=OxOfd7b[188]+Ox21a+OxOfd7b[189];Ox21d+=OxOfd7b[190];Ox21d+=OxOfd7b[191];Ox21d+=OxOfd7b[192];Ox21d+=OxOfd7b[193];Ox21d+=OxOfd7b[194];_dialogPromptID[OxOfd7b[56]]=Ox21d;_dialogPromptID[OxOfd7b[3]][OxOfd7b[5]]=OxOfd7b[195];_dialogPromptID[OxOfd7b[3]][OxOfd7b[196]]=parseInt((document[OxOfd7b[173]][OxOfd7b[197]]-315)/2)+OxOfd7b[198];_dialogPromptID[OxOfd7b[3]][OxOfd7b[138]]=OxOfd7b[199];var Ox21e=document.getElementById(OxOfd7b[172]);try{var Ox21f=Ox21e.createTextRange();Ox21f.collapse(false);Ox21f.select();} catch(x){Ox21e.focus();} ;} ;} ;if(CreateDir){CreateDir[OxOfd7b[37]]= new Function(OxOfd7b[200]);} ;if(Copy){Copy[OxOfd7b[37]]= new Function(OxOfd7b[200]);} ;if(Move){Move[OxOfd7b[37]]= new Function(OxOfd7b[200]);} ;if(Delete){Delete[OxOfd7b[37]]= new Function(OxOfd7b[200]);} ;if(DoRefresh){DoRefresh[OxOfd7b[37]]= new Function(OxOfd7b[200]);} ;if(btn_zoom_in){btn_zoom_in[OxOfd7b[37]]= new Function(OxOfd7b[200]);} ;if(btn_zoom_out){btn_zoom_out[OxOfd7b[37]]= new Function(OxOfd7b[200]);} ;if(btn_Actualsize){btn_Actualsize[OxOfd7b[37]]= new Function(OxOfd7b[200]);} ;if(img_ImageEditor){img_ImageEditor[OxOfd7b[37]]= new Function(OxOfd7b[200]);} ;if(btn_bestfit){btn_bestfit[OxOfd7b[37]]= new Function(OxOfd7b[200]);} ;if(img_AutoThumbnail){img_AutoThumbnail[OxOfd7b[37]]= new Function(OxOfd7b[200]);} ;