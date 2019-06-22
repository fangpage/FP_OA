var $ = function(id) {return document.getElementById(id);};
var userAgent = navigator.userAgent.toLowerCase();
var isSafari = userAgent.indexOf("Safari")>=0;
var is_opera = userAgent.indexOf('opera') != -1 && opera.version();
var is_moz = (navigator.product == 'Gecko') && userAgent.substr(userAgent.indexOf('firefox') + 8, 3);
var ua_match = /(trident)(?:.*rv:([\w.]+))?/.exec(userAgent) || /(msie) ([\w.]+)/.exec(userAgent);
var is_ie = ua_match && (ua_match[1] == 'trident' || ua_match[1] == 'msie') ? true : false;

var allElements=document.getElementsByTagName("*");

String.prototype.trim = function()
{
  return this.replace(/(^[\s\t　]+)|([　\s\t]+$)/g, "");
};

function strlen(str)
{
  return str.replace(/[^\x00-\xff]/g, 'xx').length;
}
function getOpenner()
{
   if(parent.dialogArguments)
      return parent.dialogArguments.document;
   else
      return parent.opener.document;
}

function isUndefined(variable) {
	return typeof variable == 'undefined' ? true : false;
}

function URLSpecialChars(str)
{
   var re = /%/g;
   str=str.replace(re,"%25");
   re = /\+/g;
   str=str.replace(re,"%2B");
   re = /\//g;
   str=str.replace(re,"%2F");
   re = /\?/g;
   str=str.replace(re,"%3F");
   re = /#/g;
   str=str.replace(re,"%23");
   re = /&/g;
   str=str.replace(re,"%26");
   return str;
}
function fetchOffset(obj) {
	var left_offset = obj.offsetLeft;
	var top_offset = obj.offsetTop;
	while((obj = obj.offsetParent) != null) {
		left_offset += obj.offsetLeft;
		top_offset += obj.offsetTop;
	}
	return { 'left' : left_offset, 'top' : top_offset };
}

function new_dom()
{
   var DomType = new Array("microsoft.xmldom","msxml.domdocument","msxml2.domdocument","msxml2.domdocument.3.0","msxml2.domdocument.4.0","msxml2.domdocument.5.0");
   for(var i=0;i<DomType.length;i++)
   {
      try{
         var a = new ActiveXObject(DomType[i]);
         if(!a) continue;
         return a;
      }
      catch(ex){}
   }
   return null;
}

function new_req() {
	if (window.XMLHttpRequest) return new XMLHttpRequest;
	else if (window.ActiveXObject) {
		var req;
		try { req = new ActiveXObject("Msxml2.XMLHTTP"); }
		catch (e) { try { req = new ActiveXObject("Microsoft.XMLHTTP"); }
		catch (e) { return null; }}
		return req;
	} else return null;
}

function _get(url, args, fn, sync)
{
	sync=isUndefined(sync)?true:sync;
	var req = new_req();
	if (args != "") args = "?" + args;
	try{
	   req.open("GET", url + args, sync);
	}
	catch(ex){
	   alert(ex.description);
	   return;
	}
	if(false == isUndefined(fn))
	   req.onreadystatechange = function() { if (req.readyState == 4) fn(req);};
	req.send('');
}

function _post(url, args, fn, sync)
{
   sync=isUndefined(sync)?true:sync;
   var req = new_req();
	try{
	   req.open('POST', url,sync);
	}
	catch(ex){
	   alert(ex.description);
	   return;
	}
	req.setRequestHeader("Method", "POST " + url + " HTTP/1.1");
	req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	req.onreadystatechange = function() {
			if (req.readyState == 4){
				var s;
				try {s = req.status;}catch (ex) {
						alert(ex.description);
				}
				if (s == 200)fn(req);
			}
	}
	req.send(args);
}

function getCookie(name)
{
	 var arr = document.cookie.split("; ");
	 for(i=0;i<arr.length;i++)
		 if (arr[i].split("=")[0] == name)
			return unescape(arr[i].split("=")[1]);
	 return null;
}
function setCookie(name,value,paras) {
   var today = new Date();
   var expires = new Date();
   expires.setTime(today.getTime() + 1000*60*60*24*2000);
   
   var path = null;
   if(typeof(paras) == "object")
   {
      if(typeof(paras.expires) != "undefined")
         expires = paras.expires;
      if(typeof(paras.path) != "undefined")
         path = paras.path;
   }
   
   document.cookie = name + "=" + escape(value) + "; expires=" + expires.toGMTString() + (path ? '; path=' + path : '');
}

function is_offline(uid) {
   var bOffline = true;
   var req = new_req();
	req.open("GET", "/inc/is_offline.php", false);
	req.onreadystatechange=function(){
         if(req.readyState==4 && req.status==200 && req.responseText == uid)
            bOffline = false;
   };
   req.send(null);
   
   return bOffline;
}
//php print_r函数的javascript实现，列出数组中的值，调试程序时调用
function print_r(theObj){
   if(theObj.constructor == Array || theObj.constructor == Object)
   {
     document.write("<ul>")
     for(var p in theObj){
     if(theObj[p].constructor == Array || theObj[p].constructor == Object)
     {
        document.write("<li>["+p+"] => "+typeof(theObj)+"</li>");
        document.write("<ul>")
        print_r(theObj[p]);
        document.write("</ul>")
     }
     else
     {
        document.write("<li>["+p+"] => "+theObj[p]+"</li>");
     }
   }
   document.write("</ul>")
  }
}

function close_window()
{
   if(typeof(window.external) == 'undefined' || typeof(window.external.OA_SMS) == 'undefined' || !window.external.OA_SMS("", "", "GET_VERSION") || window.external.OA_SMS("", "", "GET_VERSION") < '20110223')
   {
      window.open('','_self','');
      window.close();
   }
   else
   {
      window.external.OA_SMS("", "", "CLOSE_WINDOW")
   }
}

function isTouchDevice(){
    try{
        document.createEvent("TouchEvent");
        return userAgent.indexOf("mobile") >= 0 || userAgent.indexOf("maxthon") < 0;
    }catch(e){
        return false;
    }
}

function CancelBuble(event) //停止事件冒泡函数,跨浏览器解决方案
{
    if (window.ActiveXObject) //IE
    {event.cancelBubble = true;}
    else //FireFox
    {event.stopPropagation();}
}

//lp 关闭按钮函数，可以关闭事务提醒OA精灵多工作窗口
function TJF_window_close()
{
    //for webkit by jx 2013/1/15
    var triggerClick = function(el){
        if(el.click) {
            el.click();
        }else{
            try{
                var evt = document.createEvent('Event');
                evt.initEvent('click', true, true);
                el.dispatchEvent(evt);
            }catch(e){};       
        }
    };    
	if(top.document.getElementById("tabs_container"))
	{
		var tabs = top.document.getElementById("tabs_container");
		var oDivs = tabs.getElementsByTagName("DIV");
		for(var i=0; i< oDivs.length;i++)
		{
			if(oDivs[i].className == "selected")
			{
				var aObj = oDivs[i].getElementsByTagName("A");
				for(var j=0; j< aObj.length;j++){
					
					if(aObj[j].className == "close")
					{
						triggerClick(aObj[j]);
                        return; 
					}
				}		
			}
					 	
		}
		
	}

	if(top.document.getElementById("navMenu")){
	   var pmain = top.document.getElementById("nav_main");
	   var pmenu = top.document.getElementById("navMenu");
  }
	if(!pmenu || !pmain)
  {
    if(top.frames["shortcut"])
    {
      var shortcut = top.frames["shortcut"].document.getElementById("Nav_div");
      if(shortcut && (typeof window.external == "undefined" || typeof window.external.OA_SMS == "undefined")){
        top.open('','_self','');
        top.close();
      }
    }

    //2012/11/2 0:14:07 lp 增加自定义菜单在OA精灵里面的关闭，由nav.php载入的
    if(typeof window.external != "undefined" && typeof(window.external.OA_SMS)!="undefined"){
    	window.external.OA_SMS("", "", "CLOSE_WINDOW");
    	return;
    }      
      window.close();
      return;
	}
	
	var indexUrl = pmain.getAttribute("index");
	
	indexUrl = indexUrl.replace("/general/..","");
	
	for(var i=0; i< pmenu.childNodes.length;i++)
   {
      if(pmenu.childNodes[i].tagName!="A")
         continue;
         
      var phref = pmenu.childNodes[i].href;
      if(pmenu.childNodes[i].href && phref.indexOf(indexUrl)!= -1)
      {
         var spanObj = pmenu.childNodes[i].getElementsByTagName("SPAN");
         for(var j=0; j< spanObj.length;j++)
         {           
            if(spanObj[j].nodeName=="#text") 
               continue;
            if(spanObj[j].className == "close")
            {               
               triggerClick(spanObj[j]);   
            }
         }      
      }
   }
}

function sprintf()
{
    var arg = arguments,
        str = arg[0] || '',
        i, n;
    for (i = 1, n = arg.length; i < n; i++) {
        str = str.replace(/%s/, arg[i]);
    }
    return str;
}
if(typeof(LoadScript) != "function")
{
   function LoadScript(url)
   {
      url = url.toLowerCase();
      var scripts = document.getElementsByTagName('script');
      for(var i=0; i<scripts.length; i++)
      {
         var src = scripts[i].getAttribute('src');
         if(src)
         {
            src = src.toLowerCase();
            if(src == url || src + ".gz" == url || src == url + ".gz")
               return;
         }
      }
      
      document.write( '<scr' + 'ipt type="text/javascript" src="' + url + '"><\/scr' + 'ipt>' ) ;
   }
}

if(typeof(LoadCss) != "function")
{
   function LoadCss(url)
   {
      url = url.toLowerCase();
      var links = document.getElementsByTagName('link');
      for(var i=0; i<links.length; i++)
      {
         var href = links[i].getAttribute('href');
         if(href)
         {
            href = href.toLowerCase();
            if(href == url || href + ".gz" == url || href == url + ".gz")
               return;
         }
      }
      
   	document.write( '<link href="' + url + '" type="text/css" rel="stylesheet" />' ) ;
   }
}

function in_array(needle, haystack) 
{     
    var length = haystack.length;     
    for(var i = 0; i < length; i++) {         
        if(haystack[i] == needle) 
            return true;     
    }     
    return false; 
} 

LoadScript('/plugins/turnuser/js/ispirit.js');