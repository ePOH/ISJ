var OxO9e2c=["ua","userAgent","isOpera","opera","isSafari","safari","isGecko","gecko","isWinIE","msie","compatMode","document","CSS1Compat","undefined","Microsoft.XMLHTTP","readyState","onreadystatechange","","length","all","childNodes","nodeType","\x0D\x0A","caller","onchange","oninitialized","command","commandui","commandvalue","returnValue","oncommand","string","_fireEventFunction","event","parentNode","_IsCuteEditor","True","readOnly","_IsRichDropDown","null","value","selectedIndex","nodeName","TR","cells","display","style","nextSibling","innerHTML","\x3Cimg src=\x22","/Load.ashx?type=image\x26file=t-minus.gif\x22\x3E","onclick","CuteEditor_CollapseTreeDropDownItem(this,\x22","\x22)","onmousedown","none","/Load.ashx?type=image\x26file=t-plus.gif\x22\x3E","CuteEditor_ExpandTreeDropDownItem(this,\x22","contains","UNSELECTABLE","on","tabIndex","-1","//TODO: event not found? throw error ?","contentWindow","contentDocument","parentWindow","id","frames","frameElement","//TODO:frame contentWindow not found?","preventDefault","arguments","parent","top","opener","srcElement","target","//TODO: srcElement not found? throw error ?","fromElement","relatedTarget","toElement","keyCode","clientX","clientY","offsetX","offsetY","button","ctrlKey","altKey","shiftKey","cancelBubble","stopPropagation","CuteEditor_GetEditor(this).ExecImageCommand(this.getAttribute(\x27Command\x27),this.getAttribute(\x27CommandUI\x27),this.getAttribute(\x27CommandArgument\x27),this)","CuteEditor_GetEditor(this).PostBack(this.getAttribute(\x27Command\x27))","this.onmouseout();CuteEditor_GetEditor(this).DropMenu(this.getAttribute(\x27Group\x27),this)","ResourceDir","Theme","/Load.ashx?type=theme\x26theme=","\x26file=all.png","/Images/blank2020.gif","IMG","alt","title","Command","Group","ThemeIndex","width","20px","height","src","backgroundImage","url(",")","backgroundPosition","0 -","px","onload","className","separator","CuteEditorButton","onmouseover","CuteEditor_ButtonCommandOver(this)","onmouseout","CuteEditor_ButtonCommandOut(this)","CuteEditor_ButtonCommandDown(this)","onmouseup","CuteEditor_ButtonCommandUp(this)","oncontextmenu","ondragstart","PostBack","ondblclick","_ToolBarID","_CodeViewToolBarID","_FrameID"," CuteEditorFrame"," CuteEditorToolbar","ActiveTab","Edit","Code","View","buttonInitialized","isover","CuteEditorButtonOver","CuteEditorButtonDown","CuteEditorDown","border","solid 1px #0A246A","backgroundColor","#b6bdd2","padding","1px","solid 1px #f5f5f4","inset 1px","IsCommandDisabled","CuteEditorButtonDisabled","IsCommandActive","CuteEditorButtonActive","cmd_fromfullpage","(","href","location",",DanaInfo=",",","+","scriptProperties","GetScriptProperty","/Load.ashx?type=scripts\x26file=Safar_Implementation\x26culture=","Culture","CuteEditorImplementation","function","POST","\x26getModified=1","status","Failed to load impl time!","GET","\x26modified=","responseText","Failed to load impl code!","cursor","body","InitializeCode","block","contentEditable"," \x3Cbr /\x3E ","designMode","no-drop","CuteEditorInitialize"];var _Browser_TypeInfo=null;function Browser__InitType(){if(_Browser_TypeInfo!=null){return ;} ;var Ox4={};Ox4[OxO9e2c[0]]=navigator[OxO9e2c[1]].toLowerCase();Ox4[OxO9e2c[2]]=(Ox4[OxO9e2c[0]].indexOf(OxO9e2c[3])>-1);Ox4[OxO9e2c[4]]=(Ox4[OxO9e2c[0]].indexOf(OxO9e2c[5])>-1);Ox4[OxO9e2c[6]]=(!Ox4[OxO9e2c[2]]&&Ox4[OxO9e2c[0]].indexOf(OxO9e2c[7])>-1);Ox4[OxO9e2c[8]]=(!Ox4[OxO9e2c[2]]&&Ox4[OxO9e2c[0]].indexOf(OxO9e2c[9])>-1);_Browser_TypeInfo=Ox4;} ;Browser__InitType();function Browser_IsWinIE(){return _Browser_TypeInfo[OxO9e2c[8]];} ;function Browser_IsGecko(){return _Browser_TypeInfo[OxO9e2c[6]];} ;function Browser_IsOpera(){return _Browser_TypeInfo[OxO9e2c[2]];} ;function Browser_IsSafari(){return _Browser_TypeInfo[OxO9e2c[4]];} ;function Browser_UseIESelection(){return _Browser_TypeInfo[OxO9e2c[8]];} ;function Browser_IsCSS1Compat(){return window[OxO9e2c[11]][OxO9e2c[10]]==OxO9e2c[12];} ;function CreateXMLHttpRequest(){try{if( typeof (XMLHttpRequest)!=OxO9e2c[13]){return  new XMLHttpRequest();} ;if( typeof (ActiveXObject)!=OxO9e2c[13]){return  new ActiveXObject(OxO9e2c[14]);} ;} catch(x){return null;} ;} ;function LoadXMLAsync(Oxa25,Ox280,Ox22b,Oxa26){var Oxe0=CreateXMLHttpRequest();function Oxa27(){if(Oxe0[OxO9e2c[15]]!=4){return ;} ;Oxe0[OxO9e2c[16]]= new Function();var Ox288=Oxe0;Oxe0=null;Ox22b(Ox288);} ;Oxe0[OxO9e2c[16]]=Oxa27;Oxe0.open(Oxa25,Ox280,true);Oxe0.send(Oxa26||OxO9e2c[17]);} ;function Element_GetAllElements(p){var arr=[];if(Browser_IsWinIE()){for(var i=0;i<p[OxO9e2c[19]][OxO9e2c[18]];i++){arr.push(p[OxO9e2c[19]].item(i));} ;return arr;} ;Ox238(p);function Ox238(Ox27){var Ox239=Ox27[OxO9e2c[20]];var Ox11=Ox239[OxO9e2c[18]];for(var i=0;i<Ox11;i++){var n=Ox239.item(i);if(n[OxO9e2c[21]]!=1){continue ;} ;arr.push(n);Ox238(n);} ;} ;return arr;} ;var __ISDEBUG=false;function Debug_Todo(msg){if(!__ISDEBUG){return ;} ;throw ( new Error(msg+OxO9e2c[22]+Debug_Todo[OxO9e2c[23]]));} ;function Window_GetElement(Ox1a1,Ox93,Ox236){var Ox27=Ox1a1[OxO9e2c[11]].getElementById(Ox93);if(Ox27){return Ox27;} ;var Ox2f=Ox1a1[OxO9e2c[11]].getElementsByName(Ox93);if(Ox2f[OxO9e2c[18]]>0){return Ox2f.item(0);} ;return null;} ;function CuteEditor_AddMainMenuItems(Ox660){} ;function CuteEditor_AddDropMenuItems(Ox660,Ox667){} ;function CuteEditor_AddTagMenuItems(Ox660,Ox669){} ;function CuteEditor_AddVerbMenuItems(Ox660,Ox669){} ;function CuteEditor_OnInitialized(editor){} ;function CuteEditor_OnCommand(editor,Ox66d,Ox66e,Ox4e){} ;function CuteEditor_OnChange(editor){} ;function CuteEditor_FilterCode(editor,Ox262){return Ox262;} ;function CuteEditor_FilterHTML(editor,Ox27a){return Ox27a;} ;function CuteEditor_FireChange(editor){window.CuteEditor_OnChange(editor);CuteEditor_FireEvent(editor,OxO9e2c[24],null);} ;function CuteEditor_FireInitialized(editor){window.CuteEditor_OnInitialized(editor);CuteEditor_FireEvent(editor,OxO9e2c[25],null);} ;function CuteEditor_FireCommand(editor,Ox66d,Ox66e,Ox4e){var Ox137=window.CuteEditor_OnCommand(editor,Ox66d,Ox66e,Ox4e);if(Ox137==true){return true;} ;var Ox675={};Ox675[OxO9e2c[26]]=Ox66d;Ox675[OxO9e2c[27]]=Ox66e;Ox675[OxO9e2c[28]]=Ox4e;Ox675[OxO9e2c[29]]=true;CuteEditor_FireEvent(editor,OxO9e2c[30],Ox675);if(Ox675[OxO9e2c[29]]==false){return true;} ;} ;function CuteEditor_FireEvent(editor,Ox677,Ox678){if(Ox678==null){Ox678={};} ;var Ox679=editor.getAttribute(Ox677);if(Ox679){if( typeof (Ox679)==OxO9e2c[31]){editor[OxO9e2c[32]]= new Function(OxO9e2c[33],Ox679);} else {editor[OxO9e2c[32]]=Ox679;} ;editor._fireEventFunction(Ox678);} ;} ;function CuteEditor_GetEditor(element){for(var Ox42=element;Ox42!=null;Ox42=Ox42[OxO9e2c[34]]){if(Ox42.getAttribute(OxO9e2c[35])==OxO9e2c[36]){return Ox42;} ;} ;return null;} ;function CuteEditor_DropDownCommand(element,Oxa29){var editor=CuteEditor_GetEditor(element);if(editor[OxO9e2c[37]]){return ;} ;if(element.getAttribute(OxO9e2c[38])==OxO9e2c[36]){var Ox13b=element.GetValue();if(Ox13b==OxO9e2c[39]){Ox13b=OxO9e2c[17];} ;var Ox1fa=element.GetText();if(Ox1fa==OxO9e2c[39]){Ox1fa=OxO9e2c[17];} ;element.SetSelectedIndex(0);editor.ExecCommand(Oxa29,false,Ox13b,Ox1fa);} else {if(element[OxO9e2c[40]]){var Ox13b=element[OxO9e2c[40]];if(Ox13b==OxO9e2c[39]){Ox13b=OxO9e2c[17];} ;element[OxO9e2c[41]]=0;editor.ExecCommand(Oxa29,false,Ox13b,Ox1fa);} else {element[OxO9e2c[41]]=0;} ;} ;editor.FocusDocument();} ;function CuteEditor_ExpandTreeDropDownItem(src,Ox738){var Oxb3=null;while(src!=null){if(src[OxO9e2c[42]]==OxO9e2c[43]){Oxb3=src;break ;} ;src=src[OxO9e2c[34]];} ;var Ox1dd=Oxb3[OxO9e2c[44]].item(0);Oxb3[OxO9e2c[47]][OxO9e2c[46]][OxO9e2c[45]]=OxO9e2c[17];Ox1dd[OxO9e2c[48]]=OxO9e2c[49]+Ox738+OxO9e2c[50];Oxb3[OxO9e2c[51]]= new Function(OxO9e2c[52]+Ox738+OxO9e2c[53]);Oxb3[OxO9e2c[54]]= new Function(OxO9e2c[52]+Ox738+OxO9e2c[53]);} ;function CuteEditor_CollapseTreeDropDownItem(src,Ox738){var Oxb3=null;while(src!=null){if(src[OxO9e2c[42]]==OxO9e2c[43]){Oxb3=src;break ;} ;src=src[OxO9e2c[34]];} ;var Ox1dd=Oxb3[OxO9e2c[44]].item(0);Oxb3[OxO9e2c[47]][OxO9e2c[46]][OxO9e2c[45]]=OxO9e2c[55];Ox1dd[OxO9e2c[48]]=OxO9e2c[49]+Ox738+OxO9e2c[56];Oxb3[OxO9e2c[51]]= new Function(OxO9e2c[57]+Ox738+OxO9e2c[53]);Oxb3[OxO9e2c[54]]= new Function(OxO9e2c[57]+Ox738+OxO9e2c[53]);} ;function Element_Contains(element,Ox17c){if(!Browser_IsOpera()){if(element[OxO9e2c[58]]){return element.contains(Ox17c);} ;} ;for(;Ox17c!=null;Ox17c=Ox17c[OxO9e2c[34]]){if(element==Ox17c){return true;} ;} ;return false;} ;function Element_SetUnselectable(element){element.setAttribute(OxO9e2c[59],OxO9e2c[60]);element.setAttribute(OxO9e2c[61],OxO9e2c[62]);var arr=Element_GetAllElements(element);var len=arr[OxO9e2c[18]];if(!len){return ;} ;for(var i=0;i<len;i++){arr[i].setAttribute(OxO9e2c[59],OxO9e2c[60]);arr[i].setAttribute(OxO9e2c[61],OxO9e2c[62]);} ;} ;function Event_GetEvent(Ox23c){Ox23c=Event_FindEvent(Ox23c);if(Ox23c==null){Debug_Todo(OxO9e2c[63]);} ;return Ox23c;} ;function Frame_GetContentWindow(Ox340){if(Ox340[OxO9e2c[64]]){return Ox340[OxO9e2c[64]];} ;if(Ox340[OxO9e2c[65]]){if(Ox340[OxO9e2c[65]][OxO9e2c[66]]){return Ox340[OxO9e2c[65]][OxO9e2c[66]];} ;} ;var Ox1a1;if(Ox340[OxO9e2c[67]]){Ox1a1=window[OxO9e2c[68]][Ox340[OxO9e2c[67]]];if(Ox1a1){return Ox1a1;} ;} ;var len=window[OxO9e2c[68]][OxO9e2c[18]];for(var i=0;i<len;i++){Ox1a1=window[OxO9e2c[68]][i];if(Ox1a1[OxO9e2c[69]]==Ox340){return Ox1a1;} ;if(Ox1a1[OxO9e2c[11]]==Ox340[OxO9e2c[65]]){return Ox1a1;} ;} ;Debug_Todo(OxO9e2c[70]);} ;function Array_IndexOf(arr,Ox23e){for(var i=0;i<arr[OxO9e2c[18]];i++){if(arr[i]==Ox23e){return i;} ;} ;return -1;} ;function Array_Contains(arr,Ox23e){return Array_IndexOf(arr,Ox23e)!=-1;} ;function Event_FindEvent(Ox23c){if(Ox23c&&Ox23c[OxO9e2c[71]]){return Ox23c;} ;if(Browser_IsGecko()){return Event_FindEvent_FindEventFromCallers();} else {if(window[OxO9e2c[33]]){return window[OxO9e2c[33]];} ;return Event_FindEvent_FindEventFromWindows();} ;return null;} ;function Event_FindEvent_FindEventFromCallers(){var Ox188=Event_GetEvent[OxO9e2c[23]];for(var i=0;i<100;i++){if(!Ox188){break ;} ;var Ox23c=Ox188[OxO9e2c[72]][0];if(Ox23c&&Ox23c[OxO9e2c[71]]){return Ox23c;} ;Ox188=Ox188[OxO9e2c[23]];} ;} ;function Event_FindEvent_FindEventFromWindows(){var arr=[];return Ox245(window);function Ox245(Ox1a1){if(Ox1a1==null){return null;} ;if(Ox1a1[OxO9e2c[33]]){return Ox1a1[OxO9e2c[33]];} ;if(Array_Contains(arr,Ox1a1)){return null;} ;arr.push(Ox1a1);var Ox246=[];if(Ox1a1[OxO9e2c[73]]!=Ox1a1){Ox246.push(Ox1a1.parent);} ;if(Ox1a1[OxO9e2c[74]]!=Ox1a1[OxO9e2c[73]]){Ox246.push(Ox1a1.top);} ;if(Ox1a1[OxO9e2c[75]]){Ox246.push(Ox1a1.opener);} ;for(var i=0;i<Ox1a1[OxO9e2c[68]][OxO9e2c[18]];i++){Ox246.push(Ox1a1[OxO9e2c[68]][i]);} ;for(var i=0;i<Ox246[OxO9e2c[18]];i++){try{var Ox23c=Ox245(Ox246[i]);if(Ox23c){return Ox23c;} ;} catch(x){} ;} ;return null;} ;} ;function Event_GetSrcElement(Ox23c){Ox23c=Event_GetEvent(Ox23c);if(Ox23c[OxO9e2c[76]]){return Ox23c[OxO9e2c[76]];} ;if(Ox23c[OxO9e2c[77]]){return Ox23c[OxO9e2c[77]];} ;Debug_Todo(OxO9e2c[78]);return null;} ;function Event_GetFromElement(Ox23c){Ox23c=Event_GetEvent(Ox23c);if(Ox23c[OxO9e2c[79]]){return Ox23c[OxO9e2c[79]];} ;if(Ox23c[OxO9e2c[80]]){return Ox23c[OxO9e2c[80]];} ;return null;} ;function Event_GetToElement(Ox23c){Ox23c=Event_GetEvent(Ox23c);if(Ox23c[OxO9e2c[81]]){return Ox23c[OxO9e2c[81]];} ;if(Ox23c[OxO9e2c[80]]){return Ox23c[OxO9e2c[80]];} ;return null;} ;function Event_GetKeyCode(Ox23c){Ox23c=Event_GetEvent(Ox23c);return Ox23c[OxO9e2c[82]];} ;function Event_GetClientX(Ox23c){Ox23c=Event_GetEvent(Ox23c);return Ox23c[OxO9e2c[83]];} ;function Event_GetClientY(Ox23c){Ox23c=Event_GetEvent(Ox23c);return Ox23c[OxO9e2c[84]];} ;function Event_GetOffsetX(Ox23c){Ox23c=Event_GetEvent(Ox23c);return Ox23c[OxO9e2c[85]];} ;function Event_GetOffsetY(Ox23c){Ox23c=Event_GetEvent(Ox23c);return Ox23c[OxO9e2c[86]];} ;function Event_IsLeftButton(Ox23c){Ox23c=Event_GetEvent(Ox23c);if(Browser_IsWinIE()){return Ox23c[OxO9e2c[87]]==1;} ;if(Browser_IsGecko()){return Ox23c[OxO9e2c[87]]==0;} ;return Ox23c[OxO9e2c[87]]==0;} ;function Event_IsCtrlKey(Ox23c){Ox23c=Event_GetEvent(Ox23c);return Ox23c[OxO9e2c[88]];} ;function Event_IsAltKey(Ox23c){Ox23c=Event_GetEvent(Ox23c);return Ox23c[OxO9e2c[89]];} ;function Event_IsShiftKey(Ox23c){Ox23c=Event_GetEvent(Ox23c);return Ox23c[OxO9e2c[90]];} ;function Event_PreventDefault(Ox23c){Ox23c=Event_GetEvent(Ox23c);Ox23c[OxO9e2c[29]]=false;if(Ox23c[OxO9e2c[71]]){Ox23c.preventDefault();} ;} ;function Event_CancelBubble(Ox23c){Ox23c=Event_GetEvent(Ox23c);Ox23c[OxO9e2c[91]]=true;if(Ox23c[OxO9e2c[92]]){Ox23c.stopPropagation();} ;return false;} ;function Event_CancelEvent(Ox23c){Ox23c=Event_GetEvent(Ox23c);Event_PreventDefault(Ox23c);return Event_CancelBubble(Ox23c);} ;function CuteEditor_BasicInitialize(editor){var Ox151=Browser_IsOpera();var Ox701= new Function(OxO9e2c[93]);var Oxa2d= new Function(OxO9e2c[94]);var Oxa2e= new Function(OxO9e2c[95]);var Oxa2f=editor.GetScriptProperty(OxO9e2c[96]);var Oxa30=editor.GetScriptProperty(OxO9e2c[97]);var Oxa31=Oxa2f+OxO9e2c[98]+Oxa30+OxO9e2c[99];var Oxa32=Oxa2f+OxO9e2c[100];var images=editor.getElementsByTagName(OxO9e2c[101]);var len=images[OxO9e2c[18]];for(var i=0;i<len;i++){var img=images[i];if(img.getAttribute(OxO9e2c[102])&&!img.getAttribute(OxO9e2c[103])){img.setAttribute(OxO9e2c[103],img.getAttribute(OxO9e2c[102]));} ;var Ox12e=img.getAttribute(OxO9e2c[104]);var Ox667=img.getAttribute(OxO9e2c[105]);var Oxa33=img.getAttribute(OxO9e2c[106]);if(parseInt(Oxa33)>=0){img[OxO9e2c[46]][OxO9e2c[107]]=OxO9e2c[108];img[OxO9e2c[46]][OxO9e2c[109]]=OxO9e2c[108];img[OxO9e2c[110]]=Oxa32;img[OxO9e2c[46]][OxO9e2c[111]]=OxO9e2c[112]+Oxa31+OxO9e2c[113];img[OxO9e2c[46]][OxO9e2c[114]]=OxO9e2c[115]+(Oxa33*20)+OxO9e2c[116];img[OxO9e2c[46]][OxO9e2c[45]]=OxO9e2c[17];} ;if(!Ox12e&&!Ox667){if(Ox151){img[OxO9e2c[117]]=CuteEditor_OperaHandleImageLoaded;} ;continue ;} ;if(img[OxO9e2c[118]]!=OxO9e2c[119]){img[OxO9e2c[118]]=OxO9e2c[120];img[OxO9e2c[121]]= new Function(OxO9e2c[122]);img[OxO9e2c[123]]= new Function(OxO9e2c[124]);img[OxO9e2c[54]]= new Function(OxO9e2c[125]);img[OxO9e2c[126]]= new Function(OxO9e2c[127]);} ;if(!img[OxO9e2c[128]]){img[OxO9e2c[128]]=Event_CancelEvent;} ;if(!img[OxO9e2c[129]]){img[OxO9e2c[129]]=Event_CancelEvent;} ;if(Ox12e){var Ox188=img.getAttribute(OxO9e2c[130])==OxO9e2c[36]?Oxa2d:Ox701;if(img[OxO9e2c[51]]==null){img[OxO9e2c[51]]=Ox188;} ;if(img[OxO9e2c[131]]==null){img[OxO9e2c[131]]=Ox188;} ;} else {if(Ox667){if(img[OxO9e2c[51]]==null){img[OxO9e2c[51]]=Oxa2e;} ;} ;} ;} ;var Ox76e=Window_GetElement(window,editor.GetScriptProperty(OxO9e2c[132]),true);var Ox76f=Window_GetElement(window,editor.GetScriptProperty(OxO9e2c[133]),true);var Ox76a=Window_GetElement(window,editor.GetScriptProperty(OxO9e2c[134]),true);Ox76a[OxO9e2c[118]]+=OxO9e2c[135];Ox76e[OxO9e2c[118]]+=OxO9e2c[136];Ox76f[OxO9e2c[118]]+=OxO9e2c[136];Element_SetUnselectable(Ox76e);Element_SetUnselectable(Ox76f);var Ox7f2=editor.GetScriptProperty(OxO9e2c[137]);switch(Ox7f2){case OxO9e2c[138]:Ox76e[OxO9e2c[46]][OxO9e2c[45]]=OxO9e2c[17];break ;;case OxO9e2c[139]:Ox76f[OxO9e2c[46]][OxO9e2c[45]]=OxO9e2c[17];break ;;case OxO9e2c[140]:break ;;} ;} ;function CuteEditor_OperaHandleImageLoaded(){var img=this;if(img[OxO9e2c[46]][OxO9e2c[45]]){img[OxO9e2c[46]][OxO9e2c[45]]=OxO9e2c[55];setTimeout(function Oxa35(){img[OxO9e2c[46]][OxO9e2c[45]]=OxO9e2c[17];} ,1);} ;} ;function CuteEditor_ButtonOver(element){if(!element[OxO9e2c[141]]){element[OxO9e2c[128]]=Event_CancelEvent;element[OxO9e2c[123]]=CuteEditor_ButtonOut;element[OxO9e2c[54]]=CuteEditor_ButtonDown;element[OxO9e2c[126]]=CuteEditor_ButtonUp;Element_SetUnselectable(element);element[OxO9e2c[141]]=true;} ;element[OxO9e2c[142]]=true;element[OxO9e2c[118]]=OxO9e2c[143];} ;function CuteEditor_ButtonOut(){var element=this;element[OxO9e2c[118]]=OxO9e2c[120];element[OxO9e2c[142]]=false;} ;function CuteEditor_ButtonDown(){if(!Event_IsLeftButton()){return ;} ;var element=this;element[OxO9e2c[118]]=OxO9e2c[144];} ;function CuteEditor_ButtonUp(){if(!Event_IsLeftButton()){return ;} ;var element=this;if(element[OxO9e2c[142]]){element[OxO9e2c[118]]=OxO9e2c[143];} else {element[OxO9e2c[118]]=OxO9e2c[145];} ;} ;function CuteEditor_ColorPicker_ButtonOver(element){if(!element[OxO9e2c[141]]){element[OxO9e2c[128]]=Event_CancelEvent;element[OxO9e2c[123]]=CuteEditor_ColorPicker_ButtonOut;element[OxO9e2c[54]]=CuteEditor_ColorPicker_ButtonDown;Element_SetUnselectable(element);element[OxO9e2c[141]]=true;} ;element[OxO9e2c[142]]=true;element[OxO9e2c[46]][OxO9e2c[146]]=OxO9e2c[147];element[OxO9e2c[46]][OxO9e2c[148]]=OxO9e2c[149];element[OxO9e2c[46]][OxO9e2c[150]]=OxO9e2c[151];} ;function CuteEditor_ColorPicker_ButtonOut(){var element=this;element[OxO9e2c[142]]=false;element[OxO9e2c[46]][OxO9e2c[146]]=OxO9e2c[152];element[OxO9e2c[46]][OxO9e2c[148]]=OxO9e2c[17];element[OxO9e2c[46]][OxO9e2c[150]]=OxO9e2c[151];} ;function CuteEditor_ColorPicker_ButtonDown(){var element=this;element[OxO9e2c[46]][OxO9e2c[146]]=OxO9e2c[153];element[OxO9e2c[46]][OxO9e2c[148]]=OxO9e2c[17];element[OxO9e2c[46]][OxO9e2c[150]]=OxO9e2c[151];} ;function CuteEditor_ButtonCommandOver(element){element[OxO9e2c[142]]=true;if(element[OxO9e2c[154]]){element[OxO9e2c[118]]=OxO9e2c[155];} else {element[OxO9e2c[118]]=OxO9e2c[143];} ;} ;function CuteEditor_ButtonCommandOut(element){element[OxO9e2c[142]]=false;if(element[OxO9e2c[156]]){element[OxO9e2c[118]]=OxO9e2c[157];} else {if(element[OxO9e2c[154]]){element[OxO9e2c[118]]=OxO9e2c[155];} else {if(element[OxO9e2c[67]]!=OxO9e2c[158]){element[OxO9e2c[118]]=OxO9e2c[120];} ;} ;} ;} ;function CuteEditor_ButtonCommandDown(element){if(!Event_IsLeftButton()){return ;} ;element[OxO9e2c[118]]=OxO9e2c[144];} ;function CuteEditor_ButtonCommandUp(element){if(!Event_IsLeftButton()){return ;} ;if(element[OxO9e2c[154]]){element[OxO9e2c[118]]=OxO9e2c[155];return ;} ;if(element[OxO9e2c[142]]){element[OxO9e2c[118]]=OxO9e2c[143];} else {if(element[OxO9e2c[156]]){element[OxO9e2c[118]]=OxO9e2c[157];} else {element[OxO9e2c[118]]=OxO9e2c[120];} ;} ;} ;var CuteEditorGlobalFunctions=[CuteEditor_GetEditor,CuteEditor_ButtonOver,CuteEditor_ButtonOut,CuteEditor_ButtonDown,CuteEditor_ButtonUp,CuteEditor_ColorPicker_ButtonOver,CuteEditor_ColorPicker_ButtonOut,CuteEditor_ColorPicker_ButtonDown,CuteEditor_ButtonCommandOver,CuteEditor_ButtonCommandOut,CuteEditor_ButtonCommandDown,CuteEditor_ButtonCommandUp,CuteEditor_DropDownCommand,CuteEditor_ExpandTreeDropDownItem,CuteEditor_CollapseTreeDropDownItem,CuteEditor_OnInitialized,CuteEditor_OnCommand,CuteEditor_OnChange,CuteEditor_AddVerbMenuItems,CuteEditor_AddTagMenuItems,CuteEditor_AddMainMenuItems,CuteEditor_AddDropMenuItems,CuteEditor_FilterCode,CuteEditor_FilterHTML];function SetupCuteEditorGlobalFunctions(){for(var i=0;i<CuteEditorGlobalFunctions[OxO9e2c[18]];i++){var Ox188=CuteEditorGlobalFunctions[i];var name=Ox188+OxO9e2c[17];name=name.substr(8,name.indexOf(OxO9e2c[159])-8).replace(/\s/g,OxO9e2c[17]);if(!window[name]){window[name]=Ox188;} ;} ;} ;SetupCuteEditorGlobalFunctions();var __danainfo=null;var danaurl=window[OxO9e2c[161]][OxO9e2c[160]];var danapos=danaurl.indexOf(OxO9e2c[162]);if(danapos!=-1){var pluspos1=danaurl.indexOf(OxO9e2c[163],danapos+10);var pluspos2=danaurl.indexOf(OxO9e2c[164],danapos+10);if(pluspos1!=-1&&pluspos1<pluspos2){pluspos2=pluspos1;} ;__danainfo=danaurl.substring(danapos,pluspos2)+OxO9e2c[164];} ;function CuteEditor_GetScriptProperty(name){var Ox13b=this[OxO9e2c[165]][name];if(Ox13b&&__danainfo){if(name==OxO9e2c[96]){return Ox13b+__danainfo;} ;var Ox379=this[OxO9e2c[165]][OxO9e2c[96]];if(Ox13b.substr(0,Ox379.length)==Ox379){return Ox379+__danainfo+Ox13b.substring(Ox379.length);} ;} ;return Ox13b;} ;function CuteEditor_SetScriptProperty(name,Ox13b){if(Ox13b==null){this[OxO9e2c[165]][name]=null;} else {this[OxO9e2c[165]][name]=String(Ox13b);} ;} ;function CuteEditorInitialize(Oxa40,Oxa41){var editor=Window_GetElement(window,Oxa40,true);editor[OxO9e2c[165]]=Oxa41;editor[OxO9e2c[166]]=CuteEditor_GetScriptProperty;var Ox76a=Window_GetElement(window,editor.GetScriptProperty(OxO9e2c[134]),true);var editwin,editdoc;try{editwin=Frame_GetContentWindow(Ox76a);editdoc=editwin[OxO9e2c[11]];} catch(x){} ;var Oxa42=false;var Oxa43;var Oxa44=false;var Oxa45=editor.GetScriptProperty(OxO9e2c[96])+OxO9e2c[167]+editor.GetScriptProperty(OxO9e2c[168]);function Oxa46(){if( typeof (window[OxO9e2c[169]])==OxO9e2c[170]){return ;} ;LoadXMLAsync(OxO9e2c[171],Oxa45+OxO9e2c[172],Oxa47);} ;function Oxa47(Ox288){if(Ox288[OxO9e2c[173]]!=200){if(Ox288[OxO9e2c[173]]==0){return ;} ;alert(OxO9e2c[174]);return ;} ;LoadXMLAsync(OxO9e2c[175],Oxa45+OxO9e2c[176]+Ox288[OxO9e2c[177]],Oxa48);} ;function Oxa48(Ox288){if(Ox288[OxO9e2c[173]]!=200){if(Ox288[OxO9e2c[173]]==0){return ;} ;alert(OxO9e2c[178]);return ;} ;CuteEditorInstallScriptCode(Ox288.responseText,OxO9e2c[169]);if(Oxa42){Oxa49();} ;} ;function Oxa49(){if(Oxa44){return ;} ;Oxa44=true;try{window.CuteEditorImplementation(editor);} catch(x){alert(x);} ;try{editor[OxO9e2c[46]][OxO9e2c[179]]=OxO9e2c[17];} catch(x){} ;try{editdoc[OxO9e2c[180]][OxO9e2c[46]][OxO9e2c[179]]=OxO9e2c[17];} catch(x){} ;var Oxa4a=editor.GetScriptProperty(OxO9e2c[181]);if(Oxa4a){editor.Eval(Oxa4a);} ;} ;function Oxa4b(){if(!Element_Contains(window[OxO9e2c[11]].body,editor)){return ;} ;try{Ox76a=Window_GetElement(window,editor.GetScriptProperty(OxO9e2c[134]),true);editwin=Frame_GetContentWindow(Ox76a);editdoc=editwin[OxO9e2c[11]];var y=editdoc[OxO9e2c[180]];} catch(x){setTimeout(Oxa4b,100);return ;} ;if(!editdoc[OxO9e2c[180]]){setTimeout(Oxa4b,100);return ;} ;if(!Oxa42){Ox76a[OxO9e2c[46]][OxO9e2c[45]]=OxO9e2c[182];if(Browser_IsOpera()){editdoc[OxO9e2c[180]][OxO9e2c[183]]=true;} else {if(Browser_IsGecko()){editdoc[OxO9e2c[180]][OxO9e2c[48]]=OxO9e2c[184];} ;editdoc[OxO9e2c[185]]=OxO9e2c[60];} ;Oxa42=true;setTimeout(Oxa4b,50);return ;} ;if( typeof (window[OxO9e2c[169]])==OxO9e2c[170]){Oxa49();} else {try{editdoc[OxO9e2c[180]][OxO9e2c[46]][OxO9e2c[179]]=OxO9e2c[186];} catch(x){} ;} ;} ;var Oxa4c=0;var Ox42=CuteEditor_Find_DisplayNone(editor);if(Ox42){function Oxa4d(){if(Ox42[OxO9e2c[46]][OxO9e2c[45]]!=OxO9e2c[55]){window.clearInterval(Oxa4c);Oxa4c=OxO9e2c[17];CuteEditorInitialize(Oxa40,Oxa41);} ;} ;Oxa4c=setInterval(Oxa4d,1000);} else {CuteEditor_BasicInitialize(editor);Oxa46();Oxa4b();} ;function CuteEditor_Find_DisplayNone(element){var Oxa4f;for(var Ox42=element;Ox42!=null;Ox42=Ox42[OxO9e2c[34]]){if(Ox42[OxO9e2c[46]]&&Ox42[OxO9e2c[46]][OxO9e2c[45]]==OxO9e2c[55]){Oxa4f=Ox42;break ;} ;} ;return Oxa4f;} ;} ;function CuteEditorInstallScriptCode(Ox9a4,Ox9a5){eval(Ox9a4);window[Ox9a5]=eval(Ox9a5);} ;window[OxO9e2c[187]]=CuteEditorInitialize;