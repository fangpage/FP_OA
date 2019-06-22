var $ = function(id) {return document.getElementById(id);};
var userAgent = window.navigator.userAgent.toLowerCase();
var ua_match = /(trident)(?:.*rv:([\w.]+))?/.exec(userAgent) || /(msie) ([\w.]+)/.exec(userAgent);
var is_ie = ua_match && (ua_match[1] == 'trident' || ua_match[1] == 'msie') ? true : false;
function MouseOverBtn()
{
   if(event.srcElement.className.indexOf("Hover") < 0)
      event.srcElement.className+="Hover";
}
function MouseOutBtn()
{
   if(event.srcElement.className.indexOf("Hover") > 0)
      event.srcElement.className=event.srcElement.className.substr(0,event.srcElement.className.indexOf("Hover"));
}
function CorrectButton()
{
   var inputs=document.getElementsByTagName("INPUT");
   for(var i=0; i<inputs.length; i++)
   {
      var el = inputs[i];
      var elType = el.type.toLowerCase();
      var elClass = el.className.toLowerCase();
      var elLength = Math.ceil(el.value.replace(/[^\x00-\xff]/g,"**").length/2);
      if(elType!="button" && elType!="submit" && elType!="reset" || elClass!="bigbutton"&&elClass!="smallbutton"&&elClass!="toolbutton")
         continue;
      
      if(elLength<=3)
         el.className+="A";
      else if(elLength==4)
         el.className+="B";
      else if(elLength>=5 && elLength<=7)
         el.className+="C";
      else if(elLength>=8 && elLength<=11)
         el.className+="D";
      else
         el.className+="E";
      
      if(el.attachEvent)
      {
         el.attachEvent("onmouseover", MouseOverBtn);
         el.attachEvent("onmouseout",  MouseOutBtn);
      }
   }
}

function CorrectClose()
{
   //是否2010版
   if(!window.top || !window.top.shortcutArray)
      return;
   
   var inputs=document.getElementsByTagName("INPUT");
   for(var i=0; i<inputs.length; i++)
   {
      var input = inputs[i];
      if(input.type.toLowerCase() != "button")
         continue;
      
      var onclick = input.attributes['onclick'];
      if(onclick==null || typeof(onclick) != 'object' || typeof(onclick.nodeValue) != "string" || onclick.nodeValue.toLowerCase().indexOf("window.close") < 0)
         continue;
      
      input.onclick = function(){window.top.closeTab();};
   }
}

if(window.addEventListener)
{
   window.addEventListener("load", CorrectClose,false);
}
else if(window.attachEvent)
{
   window.attachEvent("onload", CorrectButton);
   window.attachEvent("onload", CorrectClose);
}
 