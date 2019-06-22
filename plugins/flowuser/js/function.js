/**
*校验字符串是否为小数
*返回值：
*如果为空，定义校验通过，		返回true
*如果字串为为小数，校验通过，	返回true
*如果校验不通过，				返回false     参考提示信息：输入域必须为小数！
*/
function checkIsDouble (s)
{
	if(s == "")
		return true;
		
	var seenDecimalPoint = false;	

    if (s == ".") return false;

	var i;
    for (i = 0; i < s.length; i++)
    {   
        // Check that current character is number.
        var c = s.charAt(i);        

        if ((c == ".") && !seenDecimalPoint)
			seenDecimalPoint = true;
        else if (!((c >= "0") && (c <= "9")))
			return false;			
    }

    // All characters are numbers.
    return true;
}

/**
*校验字符串是否为整型
*返回值：
*如果为空，定义校验通过，      返回true
*如果字串全部为数字，校验通过，返回true
*如果校验不通过，              返回false     参考提示信息：输入域必须为数字！
*/
function checkIsInteger(str)
{
    //如果为空，则通过校验
    if(str == "")
        return true;
    var exp = /^\s*[-\+]?\d+\s*$/;
    if (str.match(exp) == null)
        return false
    else
        return true;
}


/**
*校验字符串是否为日期型
*返回值：
*如果为空，定义校验通过，           返回true
*如果字串为日期型，校验通过，       返回true
*如果日期不合法，                   返回false    参考提示信息：输入域的时间不合法！（yyyy-MM-dd）
*/
function checkIsDate(str)
{
    //如果为空，则通过校验
    if(str == "")
        return true;

	var myRegex = new RegExp("^[0-9]{4}\-([1-9]|[0][1-9]|[1][0-2])\-([1-9]|[0-2][0-9]|[3][0-1])$");
	if (str.match(myRegex))
	{//valid date format, check for valid date
	var theDay = Math.round(str.substr(8,2));
	var theMonth = Math.round(str.substr(5,2));
	var theYear = Math.round(str.substr(0,4));
	
	if ((theYear%4 == 0) && (theDay > 29) && (theMonth == 2)) {
		//alert ("Not a valid date.");
		return false;
		}
	else if ((theYear%4 != 0) && (theDay > 28) && (theMonth == 2)) {
		//alert ("Not a valid date.");
		return false;
		}
	else if ((theDay > 30) && (theMonth == 4 || theMonth == 6 || theMonth == 0 || theMonth == 11)) {
		//alert ("Not a valid date.");
		return false;
		}
	else {
		return true;
		}
	}
	else
	{
		//alert ("Date not in correct yyyy-mm-dd format of the date specified does not exist.");
		return false;
	}
}

/*
校验字符串是否为日期+时间型
*/
function checkIsDateTime(inputValue) 
{ 
 if(inputValue == "")
	return true;

 var reg = /^(\d{1,4})(-|\/|\.)(\d{1,2})\2(\d{1,2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/; 
 var r = inputValue.match(reg);
 if(r == null)
	return false;
 
 var d= new Date(r[1], r[3]-1,r[4],r[5],r[6],r[7]); 
 if(r[1] != d.getFullYear() || r[3] != d.getMonth() + 1 || r[4] != d.getDate() || r[5] != d.getHours() || r[6] != d.getMinutes() || r[7] != d.getSeconds()) 
	return false;

 return true; 
}

/*
校验字符串是否为IP地址型
*/
function checkIsIp(s)
{
	var check=function(v){try{return (v<=255 && v>=0)}catch(x){return false}};
	var re=s.split(".")
	return (re.length==4)?(check(re[0]) && check(re[1]) && check(re[2]) && check(re[3])):false
}

/*
*校验两个日期的先后
*返回值：
*如果其中有一个日期为空，校验通过,          返回true
*如果起始日期早于等于终止日期，校验通过，   返回true
*如果起始日期晚于终止日期，                 返回false    参考提示信息： 起始日期不能晚于结束日期。
*/
function checkDateEarlier(strStart,strEnd)
{
    if(checkIsDate(strStart) == false || checkIsDate(strEnd) == false)
        return false;
    //如果有一个输入为空，则通过检验
    if (( strStart == "" ) || ( strEnd == "" ))
        return true;
    var arr1 = strStart.split("-");
    var arr2 = strEnd.split("-");
    var date1 = new Date(arr1[0],parseInt(arr1[1].replace(/^0/,""),10) - 1,arr1[2]);
    var date2 = new Date(arr2[0],parseInt(arr2[1].replace(/^0/,""),10) - 1,arr2[2]);
    if(arr1[1].length == 1)
        arr1[1] = "0" + arr1[1];
    if(arr1[2].length == 1)
        arr1[2] = "0" + arr1[2];
    if(arr2[1].length == 1)
        arr2[1] = "0" + arr2[1];
    if(arr2[2].length == 1)
        arr2[2]="0" + arr2[2];
    var d1 = arr1[0] + arr1[1] + arr1[2];
    var d2 = arr2[0] + arr2[1] + arr2[2];
    if(parseInt(d1,10) > parseInt(d2,10))
       return false;
    else
       return true;
}

/*单个部门选择*/
function dept_single(toid,toname)
{
	var url="/module/dept_select/single.aspx?ToId="+toid+"&ToName="+toname; 
	var mwidth = "300";
	var mheight = "250";
	var loc_x,loc_y;  
	if(window.navigator.appName.toLowerCase().indexOf("netscape") > -1)
	{
		loc_x = parseInt((document.body.clientWidth - mwidth)/2 + 200);
		loc_y = parseInt((document.body.clientHeight - mheight)/2);	
		window.open(url,"dept_single","left=" + loc_x + "px,top=" + loc_y + "px,width=" + mwidth + "px,height=" + mheight + "px,resizable=no,scrollbars=yes,status=0");
	}
	else
	{
		loc_x=document.body.scrollLeft+event.clientX-event.offsetX-100;
		loc_y=document.body.scrollTop+event.clientY-event.offsetY+170;
		window.showModalDialog(url,self,"edge:raised;scroll:1;status:0;help:0;resizable:1;dialogWidth:"+mwidth+"px;dialogHeight:"+mheight+"px;dialogTop:"+loc_y+"px;dialogLeft:"+loc_x+"px");
	}	
}
/*部门选择*/
function dept_select(toid,toname,no_whole_dept)
{
	var url= "/module/dept_select/index.aspx?ToId="+toid+"&ToName="+toname+"&no_whole_dept="+no_whole_dept;
	var mwidth = "650";
	var mheight = "500";
	var loc_x,loc_y;  
	if(window.navigator.appName.toLowerCase().indexOf("netscape") > -1)
	{
		loc_x = parseInt((document.body.clientWidth - mwidth)/2) + 200;
		loc_y = parseInt((document.body.clientHeight - mheight)/2);	
		window.open(url,"dept_select","left=" + loc_x + "px,top=" + loc_y + "px,width=" + mwidth + "px,height=" + mheight + "px,resizable=no,scrollbars=yes,status=0");
	}
	else
	{
		loc_x=document.body.scrollLeft+event.clientX-event.offsetX-100;
		loc_y=document.body.scrollTop+event.clientY-event.offsetY+170;
		window.showModalDialog(url,self,"edge:raised;scroll:1;status:0;help:0;resizable:1;dialogWidth:"+mwidth+"px;dialogHeight:"+mheight+"px;dialogTop:"+loc_y+"px;dialogLeft:"+loc_x+"px");
	}
}

function clear_double(toid,toname)
{
	document.getElementById(toid).value="";
	document.getElementById(toname).value="";	
}

/*用户选择*/
function user_select(toid,toname)
{
	var url="/module/user_select/index.aspx?ToId="+toid+"&ToName="+toname; 
	var mwidth = "650";
	var mheight = "500";
	var loc_x,loc_y;  
	if(window.navigator.appName.toLowerCase().indexOf("netscape") > -1)
	{
		loc_x = parseInt((document.body.clientWidth - mwidth)/2 + 500);
		loc_y = parseInt((document.body.clientHeight - mheight)/2);	
		window.open(url,"user_select","left=" + loc_x + "px,top=" + loc_y + "px,width=" + mwidth + "px,height=" + mheight + "px,resizable=no,scrollbars=yes,status=0");
	}
else {
		loc_x=document.body.scrollLeft+event.clientX-event.offsetX-100;
		loc_y=document.body.scrollTop+event.clientY-event.offsetY+170;
		window.showModalDialog(url,self,"edge:raised;scroll:1;status:0;help:0;resizable:1;dialogWidth:"+mwidth+"px;dialogHeight:"+mheight+"px;dialogTop:"+loc_y+"px;dialogLeft:"+loc_x+"px");
	}	
}

/*单个用户选择*/
function user_single(toid,toname)
{
	var url="/module/user_select_single/index.aspx?ToId="+toid+"&ToName="+toname; 
	var mwidth = "650";
	var mheight = "500";
	var loc_x,loc_y;
	if(window.navigator.appName.toLowerCase().indexOf("netscape") > -1)
	{
		loc_x = parseInt((document.body.clientWidth - mwidth)/2 + 200);
		loc_y = parseInt((document.body.clientHeight - mheight)/2);	
		window.open(url,"user_select","left=" + loc_x + "px,top=" + loc_y + "px,width=" + mwidth + "px,height=" + mheight + "px,resizable=no,scrollbars=yes,status=0");
	}
	else
	{
		loc_x=document.body.scrollLeft+event.clientX-event.offsetX-100;
		loc_y=document.body.scrollTop+event.clientY-event.offsetY+170;
		window.showModalDialog(url,self,"edge:raised;scroll:1;status:0;help:0;resizable:1;dialogWidth:"+mwidth+"px;dialogHeight:"+mheight+"px;dialogTop:"+loc_y+"px;dialogLeft:"+loc_x+"px");
	}
}

/*选择部门管理人员*/
function deptuser_select(toid, toname) {
    var url = "/module/dept_select/index_deptuser.aspx?ToId=" + toid + "&ToName=" + toname;
    var mwidth = "500";
    var mheight = "500";
    var loc_x, loc_y;
    if (window.navigator.appName.toLowerCase().indexOf("netscape") > -1) {
        loc_x = parseInt((document.body.clientWidth - mwidth) / 2 + 500);
        loc_y = parseInt((document.body.clientHeight - mheight) / 2);
        window.open(url, "user_select", "left=" + loc_x + "px,top=" + loc_y + "px,width=" + mwidth + "px,height=" + mheight + "px,resizable=no,scrollbars=yes,status=0");
    }
    else {
        loc_x = document.body.scrollLeft + event.clientX - event.offsetX - 100;
        loc_y = document.body.scrollTop + event.clientY - event.offsetY + 170;
        window.showModalDialog(url, self, "edge:raised;scroll:1;status:0;help:0;resizable:1;dialogWidth:" + mwidth + "px;dialogHeight:" + mheight + "px;dialogTop:" + loc_y + "px;dialogLeft:" + loc_x + "px");
    }
}

/*角色选择*/
function priv_select(toid,toname)
{
	var url="/module/priv_select/index.aspx?ToId="+toid+"&ToName="+toname; 
	var mwidth = "250";
	var mheight = "300";
	var loc_x,loc_y;
	if(window.navigator.appName.toLowerCase().indexOf("netscape") > -1)
	{
		loc_x = parseInt((document.body.clientWidth - mwidth)/2 + 200);
		loc_y = parseInt((document.body.clientHeight - mheight)/2);	
		window.open(url,"priv_select","left=" + loc_x + "px,top=" + loc_y + "px,width=" + mwidth + "px,height=" + mheight + "px,resizable=no,scrollbars=yes,status=0");
	}
	else
	{
		loc_x=document.body.scrollLeft+event.clientX-event.offsetX-50;
		loc_y=document.body.scrollTop+event.clientY-event.offsetY+170;
		window.showModalDialog(url,self,"edge:raised;scroll:1;status:0;help:0;resizable:1;dialogWidth:"+mwidth+"px;dialogHeight:"+mheight+"px;dialogTop:"+loc_y+"px;dialogLeft:"+loc_x+"px");
	}	
}

/*选择经办/主办人*/
function byuser_open(url)
{
	var mwidth = "580";
	var mheight = "450";
	var loc_x,loc_y;
	if(window.navigator.appName.toLowerCase().indexOf("netscape") > -1)
	{
		loc_x = parseInt((document.body.clientWidth - mwidth)/2 + 200);
		loc_y = parseInt((document.body.clientHeight - mheight)/2);	
		window.open(url,"byuser","left=" + loc_x + "px,top=" + loc_y + "px,width=" + mwidth + "px,height=" + mheight + "px,resizable=no,scrollbars=yes,status=0");
	}
	else
	{
		loc_x=document.body.scrollLeft+event.clientX-event.offsetX+50;
		loc_y=document.body.scrollTop+event.clientY-event.offsetY+50;
		
		window.showModalDialog(url,self,"edge:raised;scroll:1;status:0;help:0;resizable:1;dialogWidth:"+mwidth+"px;dialogHeight:"+mheight+"px;dialogTop:"+loc_y+"px;dialogLeft:"+loc_x+"px");
	}
}


function openwindow(url, name, iWidth, iHeight) {
    // url 转向网页的地址   
    // name 网页名称，可为空   
    // iWidth 弹出窗口的宽度   
    // iHeight 弹出窗口的高度   
    //window.screen.height获得屏幕的高，window.screen.width获得屏幕的宽   
    var iTop = (window.screen.height - 30 - iHeight) / 2; //获得窗口的垂直位置;   
    var iLeft = (window.screen.width - 10 - iWidth) / 2; //获得窗口的水平位置;   
    window.open(url, name, 'height=' + iHeight + ',,innerHeight=' + iHeight + ',width=' + iWidth + ',innerWidth=' + iWidth + ',top=' + iTop + ',left=' + iLeft + ',toolbar=no,menubar=no,scrollbars=auto,resizeable=no,location=no,status=no');
}  