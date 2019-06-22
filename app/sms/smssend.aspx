<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_SMS.Controller.smssend" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_SMS" %>
<%@ Import namespace="FP_SMS.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!--[if IE]>\r\n");
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n");
	ViewBuilder.Append("<!--<![endif]-->\r\n");
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>发送手机短信</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
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
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ba-bbq/jquery.ba-bbq.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/pager.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/sidebar.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    var winType = 'modal';\r\n");
	ViewBuilder.Append("    if (window.ActiveXObject) {\r\n");
	ViewBuilder.Append("        var ua = navigator.userAgent.toLowerCase();\r\n");
	ViewBuilder.Append("        var ieVersion = ua.match(/msie ([\\d.]+)/)[1];\r\n");
	ViewBuilder.Append("        if (ieVersion === '8.0') {\r\n");
	ViewBuilder.Append("            winType = '';\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function selectoropen(url) {\r\n");
	ViewBuilder.Append("        TUtil.openUrl(url, winType, \"selectorwindow\", \"600\", \"400\")\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function selectorclear(fid, fname) {\r\n");
	ViewBuilder.Append("        $(\"#\" + fid) && $(\"#\" + fid).val(\"\");\r\n");
	ViewBuilder.Append("        $(\"#\" + fname) && $(\"#\" + fname).val(\"\");\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("    <!--侧边栏-->\r\n");
	ViewBuilder.Append("<div class=\"sidebar\" style=\"height: 780px; overflow-y: hidden; outline: none;\" tabindex=\"5001\">\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_logo T_icon\"><img src=\"" + echo(setupinfo.icon) + "\" style=\"width:64px;height:64px;\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_content T_bg\" style=\"padding-top:10px;\">\r\n");
	ViewBuilder.Append("    <ul class=\"nav nav-list\">\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="smssend.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"smssend.aspx\"><i class=\"icon-mail-send\"></i>发送短信</a></li>\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="smsmanage.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"smsmanage.aspx\"><i class=\"icon-folder\"></i> 发送记录</a></li>\r\n");
	ViewBuilder.Append("    </ul>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_buttons\"> </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("    <!--导航栏-->\r\n");
	ViewBuilder.Append("    <div style=\"margin-left:180px\">\r\n");
	ViewBuilder.Append("      <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("        <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td><span class=\"td-nav-title\">发送手机短信</span></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"content\" style=\"margin-left: 180px; height: 740px; overflow: hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("      <div style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("        <div>\r\n");
	ViewBuilder.Append("          <form class=\"form-horizontal\" id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("          <table class=\"items table table-bordered\" style=\"font-size:13px;\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">内部接收人：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                <input name=\"users\" id=\"users\" value=\"" + echo(smsinfo.users) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                <textarea rows=\"3\" id=\"users_name\" name=\"users_name\" style=\"margin-bottom:0;width:400px;\" readonly=\"readOnly\">" + echo(smsinfo.users_name) + "</textarea>\r\n");
	ViewBuilder.Append("                <a style=\"vertical-align:bottom;margin-left:3px;\" onclick=\"selectoropen('" + echo(plupath) + "selectuser/selectuser.aspx')\" class=\"btn btn-mini\">选择</a><a style=\"vertical-align:bottom;margin-left:3px;\" onclick=\"selectorclear('users','users_name')\" class=\"btn btn-mini\">清空</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">外部接收人：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\"> <input name=\"others\" id=\"others\" value=\"" + echo(smsinfo.others) + "\" autocomplete=\"off\" type=\"text\" style=\"width:400px;\">多个手机号码请用英文逗号分隔(,)</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">发送短信内容：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                    <textarea rows=\"6\" id=\"content\" name=\"content\" style=\"margin-bottom:0;width:400px;\">" + echo(smsinfo.content) + "</textarea>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"odd\">\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\"></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                  <button class=\"btn btn-primary\" id=\"btn_send\" type=\"submit\" name=\"btn_send\"><i class=\"icon-mail-send\"></i> 确定发送</button>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("           </tbody>\r\n");
	ViewBuilder.Append("          </table>\r\n");
	ViewBuilder.Append("          </form>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        var windows = $(\".windows\", parent.document);\r\n");
	ViewBuilder.Append("        for (var i = 0; i < windows.length; i++) {\r\n");
	ViewBuilder.Append("            var win = windows[i];\r\n");
	ViewBuilder.Append("            var win_id = $(win).attr(\"id\");\r\n");
	ViewBuilder.Append("            if (win_id.indexOf('app_sms') != -1) {\r\n");
	ViewBuilder.Append("                $(win).find(\".win_title .title\").html('手机短信 -> 发送短信')\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\".sidebar\").height(height);\r\n");
	ViewBuilder.Append("            if ($(\".td-nav\").length > 0) {\r\n");
	ViewBuilder.Append("                $(\".content\").height(height - $(\".td-nav\").height());\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $(\".content\").height(height);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).trigger(\"resize\"); $(\".content\").niceScroll({ cursorcolor: \"#ccc\", cursoropacitymin: 1, cursorwidth: 8 });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("   <script type=\"text/javascript\">\r\n");

	if (smsinfo.status==1)
	{
	ViewBuilder.Append("       layer.msg('发送成功！', 2, 1);\r\n");
	}
	else
	{
	ViewBuilder.Append("       layer.msg('发送失败！', 2, 1);\r\n");
	}//end if
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	}//end if
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
