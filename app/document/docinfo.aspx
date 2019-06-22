<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Document.Controller.docinfo" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Document" %>
<%@ Import namespace="FP_Document.Model" %>
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
	ViewBuilder.Append("<title>" + echo(documentinfo.title) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-file-selector.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/document.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/workflow.turn.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/selector.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "multifile/jquery.multifile.js\"></");
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
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"statics/css/taskview.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/attachment.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append(".page {\r\n");
	ViewBuilder.Append("	width:100%;\r\n");
	ViewBuilder.Append("	background:#F0F0F0;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("body{\r\n");
	ViewBuilder.Append("background:#F0F0F0;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\" style=\"overflow: hidden; outline: none; background-color:white;\">\r\n");
	ViewBuilder.Append("  <div style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("  <table class=\"fptable table-bordered\" style=\"font-size:13px;border:1px solid #b5afaf\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"title\">发文标题：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\" colspan=\"3\">" + echo(documentinfo.title) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"number\">文号：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\">" + echo(documentinfo.number) + "</td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"sortid\">发文类型：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("            " + echo(documentinfo.sortid) + "\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"signname\">签发人：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\">" + echo(documentinfo.signname) + "</td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"signdate\">签发日期：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\">" + echo(documentinfo.signdate) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"sendorg\">发文单位：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\">" + echo(documentinfo.sendorg) + "</td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"senddate\">发文日期：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\">" + echo(documentinfo.senddate) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"editor\">拟稿人：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\">" + echo(documentinfo.editor) + "</td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"editor_tel\">拟稿人联系方式：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\">" + echo(documentinfo.editor_tel) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"priority\">急缓：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\">\r\n");

	if (documentinfo.priority==0)
	{
	ViewBuilder.Append("                平急\r\n");
	}
	else if (documentinfo.priority==1)
	{
	ViewBuilder.Append("                加急\r\n");
	}
	else if (documentinfo.priority==2)
	{
	ViewBuilder.Append("                特急\r\n");
	}
	else if (documentinfo.priority==3)
	{
	ViewBuilder.Append("                特提\r\n");
	}//end if
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"limitday\">签收期限：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\">" + echo(documentinfo.limitday) + "天</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"sendto\">发：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\" colspan=\"3\">" + echo(documentinfo.sendto) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"mainto\">报：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\" colspan=\"3\">" + echo(documentinfo.mainto) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"copyto\">送：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\" colspan=\"3\">" + echo(documentinfo.copyto) + "</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\">发文正文：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\" colspan=\"3\">\r\n");
	ViewBuilder.Append("                <div id=\"file-container\">\r\n");

	loop__id=0;
	foreach(AttachInfo item in AttachBll.GetAttachList(documentinfo.attachid))
	{
	loop__id++;
	ViewBuilder.Append("                    <div class=\"attachment-wrapper\" id=\"attachment_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("                        <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                        <a class=\"dropdown-toggle\" href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\" target=\"download_attach\"><img width=\"16\" height=\"16\" src=\"" + echo(item.icon) + "\">" + echo(item.name) + "</a>\r\n");
	ViewBuilder.Append("                        <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                            <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\" target=\"download_attach\">下载</a></li>\r\n");
	ViewBuilder.Append("                            <li><a href=\"javascript:;\" onclick=\"TUtil.openUrl('" + echo(plupath) + "pdf/index.aspx?aid=" + echo(item.id) + "');\">阅读</a></li>\r\n");
	ViewBuilder.Append("                            <li><a href=\"" + echo(plupath) + "attach/download.aspx?attachid=" + echo(documentinfo.attachid) + "&filename=" + echo(documentinfo.title) + "_批量附件下载\" target=\"download_attach\">批量下载</a></li>\r\n");
	ViewBuilder.Append("                        </ul>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	}//end loop
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"content\">备注：</label></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;\" colspan=\"3\">\r\n");
	ViewBuilder.Append("                " + echo(documentinfo.content) + "\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<iframe id=\"download_attach\" name=\"download_attach\" width=\"0\" height=\"0\"></iframe>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").height(height - $('#page-navbar').outerHeight());\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").niceScroll({ cursorcolor: \"#ccc\",cursoropacitymin:1,cursorwidth:8 });\r\n");
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
