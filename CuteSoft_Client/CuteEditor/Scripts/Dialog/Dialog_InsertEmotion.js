var OxOf723=[""," ","=\x22","\x22","src","^[a-z]*:[/][/][^/]*","Edit","\x3CIMG border=\x220\x22 align=\x22absmiddle\x22 src=\x22","\x22 src_cetemp=\x22","\x22\x3E","ImageTable","IMG","length","className","dialogButton","onmouseover","CuteEditor_ColorPicker_ButtonOver(this)","onclick","insert(this)"];var editor=Window_GetDialogArguments(window);function attr(name,Ox4e){if(!Ox4e||Ox4e==OxOf723[0]){return OxOf723[0];} ;return OxOf723[1]+name+OxOf723[2]+Ox4e+OxOf723[3];} ;function insert(img){if(img){var src=img[OxOf723[4]];src=src.replace( new RegExp(OxOf723[5],OxOf723[0]),OxOf723[0]);var Ox2b=OxOf723[0];if(editor.GetActiveTab()==OxOf723[6]){Ox2b=OxOf723[7]+src+OxOf723[8]+src+OxOf723[9];} else {Ox2b=OxOf723[7]+src+OxOf723[9];} ;editor.PasteHTML(Ox2b);Window_CloseDialog(window);} ;} ;function do_Close(){Window_CloseDialog(window);} ;var ImageTable=Window_GetElement(window,OxOf723[10],true);var images=ImageTable.getElementsByTagName(OxOf723[11]);var len=images[OxOf723[12]];for(var i=0;i<len;i++){var img=images[i];img[OxOf723[13]]=OxOf723[14];img[OxOf723[15]]= new Function(OxOf723[16]);img[OxOf723[17]]= new Function(OxOf723[18]);} ;