<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Settings.Controller.settings" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Settings" %>
<%@ Import namespace="FP_Settings.Model" %>
<%@ Import namespace="System.IO" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html lang=\"en\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html;charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>系统设置</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/sidebar.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.bootbox.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.notify.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-prompts.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modal.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modalmanager.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jform/jquery.form.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<meta name=\"GENERATOR\" content=\"MSHTML 9.00.8112.16599\">\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body oncontextmenu=\"event.returnValue=false;\" style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("    <!--侧边栏-->\r\n");
	ViewBuilder.Append("<div class=\"sidebar\">\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_logo T_icon\"><img src=\"" + echo(setupinfo.icon) + "\" style=\"width:64px;height:64px;\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_content T_bg\" style=\"padding-top:10px;\">\r\n");
	ViewBuilder.Append("        <ul id=\"sidebar_menu\" class=\"nav nav-list\">\r\n");
	ViewBuilder.Append("            <li>\r\n");
	ViewBuilder.Append("                <h4><a href=\"settings.aspx\"><i class=\"icon-windows8\"></i>系统设置</a></h4>\r\n");
	ViewBuilder.Append("            </li>\r\n");
	ViewBuilder.Append("            <li>\r\n");
	ViewBuilder.Append("                <h4><a href=\"profile.aspx\"><i class=\"icon-user\"></i>个人信息</a></h4>\r\n");
	ViewBuilder.Append("            </li>\r\n");
	ViewBuilder.Append("            <li>\r\n");
	ViewBuilder.Append("                <h4><a href=\"userpwd.aspx\"><i class=\"icon-lock\"></i>修改密码</a></h4>\r\n");
	ViewBuilder.Append("            </li>\r\n");
	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_buttons\"></div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("    <!--导航栏-->\r\n");
	ViewBuilder.Append("    <div style=\"margin-left: 180px;\">\r\n");
	ViewBuilder.Append("      <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("        <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td><span class=\"td-nav-title\">系统设置</span></td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("                  <div class=\"pull-right\"><a style=\"margin-right:10px;margin-bottom:5px;\" id=\"btn_save\" class=\"btn btn-danger\" onclick='js:$(\"#desktop-form\").submit()'>保存</a></div></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div style=\"margin-left: 180px;\" class=\"content\">\r\n");
	ViewBuilder.Append("      <div style=\"padding: 5px 10px;\">\r\n");
	ViewBuilder.Append("        <div></div>\r\n");
	ViewBuilder.Append("        <form id=\"desktop-form\" class=\"form-horizontal\" enctype=\"multipart/form-data\" method=\"post\" action=\"\">\r\n");
	ViewBuilder.Append("          <fieldset>\r\n");
	ViewBuilder.Append("            <legend>桌面壁纸</legend>\r\n");
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <div class=\"box\">\r\n");

	loop__id=0;
	foreach(string item in walllist)
	{
	loop__id++;
	string wallpaper = webpath+"oa/wallpapers/"+item;

	if (settinginfo.wallpaper==wallpaper)
	{
	ViewBuilder.Append("                    <div class=\"wall this\" data-value=\"" + echo(webpath) + "oa/wallpapers/" + echo(item) + "\">\r\n");
	ViewBuilder.Append("                      <div class=\"ico\"><img src=\"" + echo(GetThumb(item)) + "\" style=\"width:100px;height:65px;\"></div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <div class=\"wall\" data-value=\"" + echo(webpath) + "oa/wallpapers/" + echo(item) + "\">\r\n");
	ViewBuilder.Append("                      <div class=\"ico\"><img src=\"" + echo(GetThumb(item)) + "\" style=\"width:100px;height:65px;\"></div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("                    <div style=\"clear:both;\"></div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </fieldset>\r\n");
	ViewBuilder.Append("          <fieldset>\r\n");
	ViewBuilder.Append("            <legend>消息提醒设置</legend>\r\n");
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("              <label class=\"control-label\" for=\"msg_sound\">消息声音</label>\r\n");
	ViewBuilder.Append("              <div class=\"controls\">\r\n");
	ViewBuilder.Append("                <select id=\"msg_sound\" name=\"msg_sound\">\r\n");
	ViewBuilder.Append("                  <option \r\n");

	if (settinginfo.msg_sound==0)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"0\">无</option>\r\n");
	ViewBuilder.Append("                  <option \r\n");

	if (settinginfo.msg_sound==1)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">OA主题音效</option>\r\n");
	ViewBuilder.Append("                  <option \r\n");

	if (settinginfo.msg_sound==2)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"2\">激光</option>\r\n");
	ViewBuilder.Append("                  <option \r\n");

	if (settinginfo.msg_sound==3)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"3\">水滴</option>\r\n");
	ViewBuilder.Append("                  <option \r\n");

	if (settinginfo.msg_sound==4)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"4\">手机</option>\r\n");
	ViewBuilder.Append("                  <option \r\n");

	if (settinginfo.msg_sound==5)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"5\">电话</option>\r\n");
	ViewBuilder.Append("                  <option \r\n");

	if (settinginfo.msg_sound==6)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"6\">鸡叫</option>\r\n");
	ViewBuilder.Append("                  <option \r\n");

	if (settinginfo.msg_sound==7)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"7\">OICQ</option>\r\n");
	ViewBuilder.Append("                  <option \r\n");

	if (settinginfo.msg_sound==8)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"8\">短语音</option>\r\n");
	ViewBuilder.Append("                  <option \r\n");

	if (settinginfo.msg_sound==9)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"9\">长语音</option>\r\n");
	ViewBuilder.Append("                </select>\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </fieldset>\r\n");
	ViewBuilder.Append("        </form>\r\n");
	ViewBuilder.Append("        <div style=\"height: 0px;\" id=\"sound\"></div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $('#sound').html('');\r\n");
	ViewBuilder.Append("    $('#msg_sound').on('change', function () {\r\n");
	ViewBuilder.Append("        $('#sound').html('');\r\n");
	ViewBuilder.Append("        var wav = $(this).val();\r\n");
	ViewBuilder.Append("        var template = '';\r\n");
	ViewBuilder.Append("        if (wav > 0) {\r\n");
	ViewBuilder.Append("            template += '<object id=\"sms_sound\" classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"/activex/swflash.cab\" width=\"0\" height=\"0\"><param name=\"movie\" value=\"/oa/public/wav/' + wav + '.swf\"><param name=quality value=high><embed id=\"sms_sound\" src=\"/oa/public/wav/' + wav + '.swf\" width=\"0\" height=\"0\" quality=\"autohigh\" wmode=\"opaque\" type=\"application/x-shockwave-flash\" plugspace=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\"></embed></object>';\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        if (template) {\r\n");
	ViewBuilder.Append("            $('#sound').html(template);\r\n");
	ViewBuilder.Append("            setTimeout(\"$('#sound').html('')\", 5000);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    $('.wall').on('click', function () {\r\n");
	ViewBuilder.Append("        window.parent.FPOA.wallpaper.update($(this).attr('data-value'));\r\n");
	ViewBuilder.Append("        $(this).parent().find(\".this\").removeClass(\"this\");\r\n");
	ViewBuilder.Append("        $(this).addClass(\"this\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    jQuery(function ($) {\r\n");
	ViewBuilder.Append("        $(document).ready(function () {\r\n");
	ViewBuilder.Append("            $(\"#sidebar_menu a[href$=\\\"settings.aspx\\\"]\").parents(\"li\").addClass(\"active\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\".wall\").live(\"hover\", function () { $(this).addClass(\"listhover\") }, function () { $(this).toggleClass(\"listhover\") });\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\".sidebar\").height(height);\r\n");
	ViewBuilder.Append("            if ($(\".td-nav\").length > 0) {\r\n");
	ViewBuilder.Append("                $(\".content\").height(height - $(\".td-nav\").height());\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $(\".content\").height(height);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("        $(\".content\").niceScroll({ cursorcolor: \"#ccc\", cursoropacitymin: 1, cursorwidth: 8 });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
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
