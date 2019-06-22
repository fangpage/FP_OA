if(typeof(window.console) != "undefined" && typeof(window.console.OaSms) != "undefined"){
   window.external = window.external || {};
   window.external.OA_SMS = function(arg1, arg2, arg3){  
      switch(arg3){
         case 'OPEN_URL':
            var t, l, d = new Date(), h = 548 + 85, w = 780 + 50, URL = arg1, newWindow;
            if(arg2 == 'MAX'){
               h = screen.availHeight - 60;
               w = screen.availWidth - 20;
            }else if(arg2 != ''){
               w = parseInt(arg2.split(',')[0]) + 50;
               h = parseInt(arg2.split(',')[1]) + 85;
            }
            t = (screen.availHeight - h)/2 - 30;
            l = (screen.availWidth - w)/2 - 10;

            newWindow = window.open(URL,d.getTime(),"height="+h+",width="+w+",status=0,toolbar=no,menubar=yes,location=no,scrollbars=yes,top="+t+",left="+l+",resizable=yes");      
            newWindow.moveTo(l, t);
            newWindow.resizeTo(w, h);
            newWindow.MacIspiritOpened = true;
            newWindow.focus();
            return;
            break;
         case 'SET_SIZE':
            var w = arg1 + 50, h = arg2 + 85,
            t = (screen.availHeight - h)/2 - 30,
            l = (screen.availWidth - w)/2 -10;
            top.moveTo(l, t);
            top.resizeTo(w, h);
            top.focus(); 
            return;
            break;
         case 'SET_MAX':
            top.moveTo(0, 0);
            top.resizeTo(screen.availWidth - 20, screen.availHeight - 60);
            top.focus();
            return;
            break;          
      }    
      return window.console.OaSms(arg1, arg2, arg3);
   };
}

function IspiritOaSms(argv1, argv2, argv3)
{
   if(typeof(window.external) != "undefined" && typeof(window.external.OA_SMS) != "undefined")
      return window.external.OA_SMS(argv1, argv2, argv3);
   else if(typeof(window.console) != "undefined" && typeof(window.console.OaSms) != "undefined")
      return window.console.OaSms(argv1, argv2, argv3);
   else
      return null;
}

function IspiritOaMsg(argv1, argv2, argv3, argv4, argv5, argv6)
{
   if(typeof(window.external) != "undefined" && typeof(window.external.OA_MSG) != "undefined")
      return window.external.OA_MSG(argv1, argv2, argv3, argv4, argv5, argv6);
   else
      return null;
}

function IspiritPlayVoiceMsg(argv1)
{
   if(typeof(window.external) != "undefined" && typeof(window.external.PlayVoiceMsg) != "undefined")
      return window.external.PlayVoiceMsg(argv1);
   else
      return null;
}

function IspiritStopVoiceMsg(argv1)
{
   if(typeof(window.external) != "undefined" && typeof(window.external.StopVoiceMsg) != "undefined")
      return window.external.StopVoiceMsg(argv1);
   else
      return null;
}

function IspiritPlatform()
{
   if(typeof(window.console) != "undefined" && typeof(window.console.OaSms) != "undefined")
      return 'MAC';
   else if(typeof(window.external) != "undefined" && typeof(window.external.OA_SMS) != "undefined")
      return 'Windows';
   else
      return 'undefined';
}

function SetTitle(iframe_id)
{
   if(typeof(frames[iframe_id].document) != 'object' || !frames[iframe_id].document.title)
      return;
   
   document.title = frames[iframe_id].document.title;
   if(typeof(window.external.OA_SMS) != 'undefined')
      window.external.OA_SMS(document.title, "", "NAV_TITLE");
}
function SetSize(width, height)
{
   if(typeof(window.external.OA_SMS) == 'undefined')
      return;
   
   window.external.OA_SMS(width, height, "SET_SIZE");
}
function SetMax(width, height)
{
   if(typeof(window.external.OA_SMS) == 'undefined')
      return;
   
   window.external.OA_SMS("", "", "SET_MAX");
}