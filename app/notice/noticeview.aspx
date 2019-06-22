<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Notice.Controller.noticeview" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Notice" %>
<%@ Import namespace="FP_Notice.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>查看公告通知</title>\r\n");
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
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modal.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modalmanager.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").height(height - $('#page-navbar').outerHeight());\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").niceScroll({ cursorcolor: \"#ccc\" });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("        var nice = $(\"#container-scroller\").getNiceScroll()[0];\r\n");
	ViewBuilder.Append("        $(\"#container-scroller\").bind(\"scroll\", function () {\r\n");
	ViewBuilder.Append("            if (nice.page.maxh - nice.view.h > 200 && nice.page.maxh - nice.getScrollTop() < nice.page.maxh / 5) {\r\n");
	ViewBuilder.Append("                $(\"#scrollTop\").fadeIn(1000);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else\r\n");
	ViewBuilder.Append("                $(\"#scrollTop\").fadeOut(1000);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#scrollTop\").click(function () {\r\n");
	ViewBuilder.Append("            nice.scrollTop(0);\r\n");
	ViewBuilder.Append("        });\r\n");

	if (!isread)
	{
	ViewBuilder.Append("        var parent = window.opener ? window.opener : window.dialogArguments;\r\n");
	ViewBuilder.Append("        try {\r\n");
	ViewBuilder.Append("            parent.update();\r\n");
	ViewBuilder.Append("        } catch (e) { }\r\n");
	}//end if
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("   </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <style>\r\n");
	ViewBuilder.Append("        /*.newborder table{\r\n");
	ViewBuilder.Append("        border: 1;\r\n");
	ViewBuilder.Append("        }*/\r\n");
	ViewBuilder.Append("    </style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<a id=\"scrollTop\"></a>\r\n");
	ViewBuilder.Append("<!--Loading-->\r\n");
	ViewBuilder.Append("<!--导航栏-->\r\n");
	ViewBuilder.Append("<div id=\"page-navbar\">\r\n");
	ViewBuilder.Append("  <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("    <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td><div>\r\n");
	ViewBuilder.Append("              <div class=\"pull-left\" style=\"line-height: 35px;font-weight: bold\" id=\"title\">" + echo(noticeinfo.title) + "</div>\r\n");
	ViewBuilder.Append("              <div class=\"pull-right\" style=\"padding-right:10px;\"> <a onclick=\"window.close();\" class=\"btn btn-danger\">关闭</a></div>\r\n");
	ViewBuilder.Append("            </div></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\" style=\"height: 739px; overflow: hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("    <table style=\"margin: 0px;width:100%;border-bottom: 1px solid #cccccc;\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr style=\"line-height: 20px;margin-left: 20px;margin-top: 10px;\">\r\n");
	ViewBuilder.Append("          <td colspan=\"2\">\r\n");
	ViewBuilder.Append("            <div class=\"newborder\" id=\"table\">\r\n");
	ViewBuilder.Append("             " + echo(noticeinfo.content) + "\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr style=\"line-height: 20px;margin-left: 20px;\">\r\n");
	ViewBuilder.Append("          <td style=\"width:50px;padding-right: 0px;\"><b>附件：</b></td>\r\n");
	ViewBuilder.Append("          <td style=\"padding-left: 0px;\">\r\n");

	loop__id=0;
	foreach(AttachInfo item in AttachBll.GetAttachList(noticeinfo.attachid))
	{
	loop__id++;
	ViewBuilder.Append("             <div class=\"attachment-wrapper\" id=\"attachment_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("              <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                <a class=\"dropdown-toggle\" href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\" target=\"download_attach\"><img width=\"16\" height=\"16\" src=\"" + echo(item.icon) + "\">" + echo(item.name) + "</a>\r\n");
	ViewBuilder.Append("                <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                    <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\" target=\"download_attach\">下载</a></li>\r\n");
	ViewBuilder.Append("                    <li><a href=\"javascript:;\" onclick=\"TUtil.openUrl('" + echo(plupath) + "pdf/index.aspx?aid=" + echo(item.id) + "');\">阅读</a></li>\r\n");
	ViewBuilder.Append("                    <li><a href=\"" + echo(plupath) + "attach/download.aspx?attachid=" + echo(noticeinfo.attachid) + "&filename=" + echo(noticeinfo.title) + "_批量附件下载\" target=\"download_attach\">批量下载</a></li>\r\n");
	ViewBuilder.Append("                </ul>\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	}//end loop
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr style=\"line-height: 20px;margin-left: 20px;\">\r\n");
	ViewBuilder.Append("          <td colspan=\"2\"><b>发布人：</b>" + echo(noticeinfo.realname) + "&nbsp;&nbsp;&nbsp; <b>发布时间：</b>" + echo(noticeinfo.postdatetime,"yyyy-MM-dd") + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<iframe id=\"download_attach\" name=\"download_attach\" width=\"0\" height=\"0\"></iframe>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">setTimeout('$(\"#loading_layer\").remove();$(\"body\").show();$(window).trigger(\"resize\");', 100)\r\n");
	ViewBuilder.Append("    var title = $(\"#title\").html();\r\n");
	ViewBuilder.Append("    if ((title.indexOf(\"值班\") >= 0) && (title.indexOf(\"安排\") >= 0)) {\r\n");
	ViewBuilder.Append("            document.getElementById(\"table\").firstElementChild.setAttribute(\"border\", \"1\");\r\n");
	ViewBuilder.Append("    }\r\n");
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
