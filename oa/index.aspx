<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_OA.Controller.index" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FP_Board.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<title>" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.min.css\"></link>\r\n");
	ViewBuilder.Append("<!--[if lte IE 6]>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-ie6.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/ie.css\">\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/desktop/js/themes/base/jquery.ui.all.css\"></link>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/desktop/js/jquery-smartMenu/css/smartMenu.css\"></link>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/desktop/css/css.css\"></link>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\"></link>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\"></link>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "messager/jquery.messager.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/desktop/js/myLib.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/desktop/js/jquery-ui-1.8.16.custom.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/desktop/js/jquery.winResize.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/desktop/js/jquery-smartMenu/js/mini/jquery-smartMenu-min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/desktop/js/desktop.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link id=\"skinlayercss\" href=\"" + echo(plupath) + "layer/skin/layer.css\" rel=\"stylesheet\" type=\"text/css\"></link>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");

	if (isie==6)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    window.location.href = \"http://10.151.151.201/index.aspx?token=" + echo(token) + "\"\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    // client time when loaded\r\n");
	ViewBuilder.Append("    var ldc = new Date();\r\n");
	ViewBuilder.Append("    // server time when loaded\r\n");
	ViewBuilder.Append("    var lds = new Date(i10('" + echo(datetime,"yyyy") + "'), i10('" + echo(datetime,"MM") + "') - 1, i10('" + echo(datetime,"dd") + "'), i10('" + echo(datetime,"HH") + "'), i10('" + echo(datetime,"mm") + "'), i10('" + echo(datetime,"ss") + "'));\r\n");
	ViewBuilder.Append("    var d = new initArray(\" 星期日\",\" 星期一\",\" 星期二\",\" 星期三\",\" 星期四\",\" 星期五\",\" 星期六\");\r\n");
	ViewBuilder.Append("    var strdate = '" + echo(datetime,"yyyy") + "年' + (lds.getMonth() + 1) + '月' + lds.getDate() + '日' + d[lds.getDay() + 1]+'&nbsp;';\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        FPOA.CONFIG.webpath = '" + echo(webpath) + "';\r\n");
	ViewBuilder.Append("        FPOA.CONFIG.msg_sound = '" + echo(settinginfo.msg_sound) + "';\r\n");
	ViewBuilder.Append("        FPOA.base.init();\r\n");
	ViewBuilder.Append("        $('.subject,.view').live('click', function () {\r\n");
	ViewBuilder.Append("            TUtil.openUrl(this.href);\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    //更新信息数\r\n");
	ViewBuilder.Append("    var n = 0;\r\n");
	ViewBuilder.Append("    var timer1;\r\n");
	ViewBuilder.Append("    $(document).ready(function(){\r\n");
	ViewBuilder.Append("        updatecount();\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function updatecount() {\r\n");
	ViewBuilder.Append("        timer1 = setInterval(function () {\r\n");
	ViewBuilder.Append("            var cc = new Date();\r\n");
	ViewBuilder.Append("            // current server time\r\n");
	ViewBuilder.Append("            var cs = new Date(cc.getTime() - ldc.getTime() + lds.getTime());\r\n");
	ViewBuilder.Append("            // set time\r\n");
	ViewBuilder.Append("            $(\"#timebox\").html(strdate + to2c(cs.getHours()) + ':' + to2c(cs.getMinutes()) + ':' + to2c(cs.getSeconds()));\r\n");
	ViewBuilder.Append("            if (n % 10 == 0) {\r\n");
	ViewBuilder.Append("                FPOA.desktop.counter();\r\n");
	ViewBuilder.Append("                FPOA.board.show();\r\n");
	ViewBuilder.Append("                FPOA.desktop.message();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            n++;\r\n");
	ViewBuilder.Append("            if(n>=1000)\r\n");
	ViewBuilder.Append("            {\r\n");
	ViewBuilder.Append("                n = 0;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }, 1000);\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function to2c(n) {\r\n");
	ViewBuilder.Append("        return (n < 10 ? '0' + n : '' + n);\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function i10(s) {\r\n");
	ViewBuilder.Append("        return parseInt(s, 10);\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function initArray() {\r\n");
	ViewBuilder.Append("        this.length = initArray.arguments.length\r\n");
	ViewBuilder.Append("        for (var i = 0; i < this.length; i++)\r\n");
	ViewBuilder.Append("            this[i + 1] = initArray.arguments[i]\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    document.onselectstart = new Function('event.returnValue=false;');\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<div id=\"wallpapers\">\r\n");
	ViewBuilder.Append("    <img class=\"wallpapers\" src=\"" + echo(settinginfo.wallpaper) + "\">\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"wallpaper-ctrl\">\r\n");
	ViewBuilder.Append("    <a href=\"#\" class=\"wallpaperImg pre\" id=\"wp-ctrl-pre\" title=\"点击切换背景图片\"> </a>\r\n");
	ViewBuilder.Append("    <a href=\"#\" class=\"wallpaperImg next\" id=\"wp-ctrl-next\" title=\"点击切换背景图片\"> </a>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"navbar\" class=\"ui-draggable\" style=\"display: block;left:187px;\">\r\n");

	if (desks>1)
	{
	ViewBuilder.Append("    <s class=\"l\"></s>\r\n");
	ViewBuilder.Append("    <span>\r\n");
	for (int i = 1; i <= desks; i++){

	if (i==1)
	{
	ViewBuilder.Append("    <a class=\"curtab\" href=\"javascript:;\" index=\"" + echo(i) + "\" title=\"切换至桌面" + echo(i) + "\">" + echo(i) + "</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("    <a class=\"tab\" href=\"javascript:;\" index=\"" + echo(i) + "\" title=\"切换至桌面" + echo(i) + "\">" + echo(i) + "</a>\r\n");
	}//end if
	}//end for
	ViewBuilder.Append("    </span>\r\n");
	ViewBuilder.Append("    <s class=\"r\"></s>\r\n");
	}//end if
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"navbox\"><span id=\"userinfo\">" + echo(user.realname) + "</span><span id=\"timebox\"></span></div>\r\n");
	ViewBuilder.Append("<div id=\"desktopPanel\">\r\n");
	ViewBuilder.Append("    <div id=\"desktopInnerPanel\">\r\n");
	for (int i = 1; i <= desks; i++){
	ViewBuilder.Append("        <div class=\"desktop\" id=\"desk-" + echo(i) + "\">\r\n");
	ViewBuilder.Append("            <ul class=\"deskIcon\">\r\n");

	loop__id=0;
	foreach(DesktopInfo item in GetDesktopList(i))
	{
	loop__id++;
	string wid = item.app+"_"+item.id;

	if (item.markup!="")
	{
	 wid = item.markup;
	}//end if
	ViewBuilder.Append("              <li id=\"" + echo(wid) + "\" title=\"" + echo(item.description) + "\" class=\"desktop_icon\" winwidth=\"" + echo(item.width) + "\" winheight=\"" + echo(item.height) + "\" path=\"" + echo(item.map_url,"[username]"+"|"+"[password]",username+"|"+user.password) + "\" target=\"" + echo(item.target) + "\">\r\n");
	ViewBuilder.Append("                <span class=\"icon\"><img src=\"" + echo(item.map_icon) + "\"></span>\r\n");
	ViewBuilder.Append("                <div class=\"text\">" + echo(item.name) + "\r\n");
	ViewBuilder.Append("                  <div class=\"right_cron\"></div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <span id=\"" + echo(item.app) + "_count\" class=\"desktop_count\" style=\"display:none;\"></span>\r\n");
	ViewBuilder.Append("              </li>\r\n");
	}//end loop
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("            <div id=\"board\" class=\"board\">\r\n");
	ViewBuilder.Append("            <table cellspacing=\"0\" cellpadding=\"0\" style=\"width:100%\" border=\"0\">\r\n");
	ViewBuilder.Append("                <tbody>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	int b = 1;

	loop__id=0;
	foreach(BoardConfig board in GetBoardConfigList(i))
	{
	loop__id++;
	ViewBuilder.Append("                        <td style=\"width:50%\">\r\n");
	ViewBuilder.Append("                            <div class=\"module\">\r\n");
	ViewBuilder.Append("                                <div class=\"title\">\r\n");
	ViewBuilder.Append("                                    <div class=\"left_cron\"></div>\r\n");
	ViewBuilder.Append("                                    <div class=\"center_cron\">" + echo(board.name) + "</div>\r\n");
	ViewBuilder.Append("                                    <div class=\"right_cron\"></div>\r\n");
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                                <ul class=\"status_list\" id=\"board_" + echo(board.app) + "\">\r\n");
	ViewBuilder.Append("                                </ul>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </td>\r\n");

	if (b%2==0)
	{
	ViewBuilder.Append("                        </tr>\r\n");
	ViewBuilder.Append("                        <tr>\r\n");
	}//end if
	 b = b+1;
	}//end loop
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("           </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	}//end for
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"lr_bar\">\r\n");
	ViewBuilder.Append("    <ul id=\"default_app\">\r\n");

	loop__id=0;
	foreach(DesktopInfo item in GetDesktopList(0))
	{
	loop__id++;
	string wid = item.app+"_"+item.id;

	if (item.markup!="")
	{
	 wid = item.markup;
	}//end if
	ViewBuilder.Append("    <li id=\"" + echo(wid) + "\">\r\n");
	ViewBuilder.Append("        <span id=\"" + echo(item.app) + "_count\" class=\"label label-warning\" style=\"position:absolute;display:none\"></span>\r\n");
	ViewBuilder.Append("        <img src=\"" + echo(item.map_icon) + "\" title=\"" + echo(item.name) + "\" path=\"" + echo(item.map_url) + "\" target=\"" + echo(item.target) + "\">\r\n");
	ViewBuilder.Append("    </li>\r\n");
	}//end loop
	ViewBuilder.Append("    </ul>\r\n");
	ViewBuilder.Append("    <div id=\"start_block\">\r\n");
	ViewBuilder.Append("    <a title=\"开始菜单\" id=\"start_btn\"></a>\r\n");
	ViewBuilder.Append("    <div id=\"start_item\">\r\n");
	ViewBuilder.Append("        <ul class=\"item admin startbtn\">\r\n");
	ViewBuilder.Append("        <li id=\"startbtn_profile\" title=\"个人资料\" path=\"" + echo(apppath) + "settings/profile.aspx\" target=\"_self\"><span><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/desktop/images/user_btn.png\" width=\"24\" height=\"24\"></span>" + echo(user.realname) + "</li>\r\n");
	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("        <ul class=\"item startbtn\">\r\n");
	int hr = 0;

	loop__id=0;
	foreach(DesktopInfo item in menulist)
	{
	loop__id++;

	if (item.desk!=hr)
	{
	 hr = item.desk;
	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("        <ul class=\"hr\"></ul>\r\n");
	ViewBuilder.Append("        <ul class=\"item startbtn\">\r\n");
	}//end if
	string wid = item.app+"_"+item.id;

	if (item.markup!="")
	{
	 wid = item.markup;
	}//end if
	ViewBuilder.Append("        <li id=\"" + echo(wid) + "\" title=\"" + echo(item.name) + "\" path=\"" + echo(item.map_url) + "\" target=\"" + echo(item.target) + "\"><span><img src=\"" + echo(item.map_icon) + "\" width=\"24\" height=\"24\"></span>" + echo(item.name) + "</li>\r\n");
	}//end loop

	if (isadmin)
	{
	ViewBuilder.Append("        <li id=\"startbtn_admin\" title=\"系统后台\" path=\"" + echo(adminpath) + "index.aspx\" target=\"_open\"><span><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/desktop/images/admin_btn.png\" width=\"24\" height=\"24\"></span>系统后台</li>\r\n");
	}//end if
	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("        <ul class=\"hr\"></ul>\r\n");
	ViewBuilder.Append("        <ul class=\"item\">\r\n");
	ViewBuilder.Append("        <li id=\"startbtn_logout\"><span><img src=\"" + echo(webpath) + "" + echo(sitepath) + "/desktop/images/logout_btn.png\" width=\"24\" height=\"24\"></span>退出系统</li>\r\n");
	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"taskBar\">\r\n");
	ViewBuilder.Append("    <div id=\"leftBtn\"><a href=\"#\" class=\"upBtn\"></a></div>\r\n");
	ViewBuilder.Append("    <div id=\"task_lb_wrap\">\r\n");
	ViewBuilder.Append("    <div id=\"task_lb\"></div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div id=\"rightBtn\"><a href=\"#\" class=\"downBtn\"></a></div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div style=\"height: 0px;\" id=\"sound\"></div>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");
	if(iswrite==0)
	{
	Response.Write(ViewBuilder.ToString());
	}
	else if(iswrite==1)
	{
	Hashtable hash = new Hashtable();
	hash["errcode"] = 0;
	hash["errmsg"] ="";
	hash["html"]=ViewBuilder.ToString();
	FPResponse.WriteJson(hash);
	}
}
</script>
