<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Document.Controller.docdeal" %>
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
	ViewBuilder.Append("<div id=\"container-scroller\" style=\"overflow: hidden; outline: none;\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("  <div class=\"page\">\r\n");
	ViewBuilder.Append("  <div class=\"box\">\r\n");
	ViewBuilder.Append("    <ul class=\"event_list\">\r\n");

	loop__id=0;
	foreach(DocumentInfo item in doclist)
	{
	loop__id++;

	if (item.uid>0)
	{
	ViewBuilder.Append("        <li class=\"first\"><div class=\"left_s\" style=\"font-weight:bold;\">" + echo(item.departname) + "</div>\r\n");
	ViewBuilder.Append("          <div class=\"p\">\r\n");
	ViewBuilder.Append("              <div class=\"content\">\r\n");
	ViewBuilder.Append("              <strong><font color=\"#51a351\">发&nbsp;起&nbsp;人&nbsp;：" + echo(item.fromuname) + "</font></strong><font color=\"#51a351\">，发始于：" + echo(item.postdatetime,"yyyy年MM月dd日 HH:mm:ss") + "</font><br>\r\n");
	ViewBuilder.Append("             </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </li>\r\n");
	}
	else if (item.status<=1&&item.uid==0)
	{
	ViewBuilder.Append("        <li class=\"li\">\r\n");

	if (item.departid==departid)
	{
	ViewBuilder.Append("            <div class=\"left_s\" style=\"font-weight:bold;color:#0094ff\">" + echo(item.departname) + "</div>\r\n");
	}
	else
	{
	ViewBuilder.Append("            <div class=\"left_s\" style=\"font-weight:bold;\">" + echo(item.departname) + "</div>\r\n");
	}//end if
	ViewBuilder.Append("          <div class=\"p\"><div class=\"content\">\r\n");
	ViewBuilder.Append("              [<font color=\"#51a351\">未签收</font>]\r\n");
	ViewBuilder.Append("           </div></div>\r\n");
	ViewBuilder.Append("        </li>\r\n");
	}
	else if (item.status>=2&&item.uid==0)
	{
	ViewBuilder.Append("        <li class=\"li\">\r\n");

	if (FPUtils.IsContain(item.departid,departs))
	{
	ViewBuilder.Append("<div class=\"left_s\" style=\"font-weight:bold;color:#0094ff\">" + echo(item.departname) + "</div>\r\n");
	}//end if
	else
	{
	ViewBuilder.Append("<div class=\"left_s\" style=\"font-weight:bold;\">" + echo(item.departname) + "</div>\r\n");
	}//end if
	ViewBuilder.Append("          <div class=\"p\">\r\n");
	ViewBuilder.Append("           <div class=\"content\">\r\n");

	if (item.txtsign!="")
	{
	ViewBuilder.Append("            <strong>" + echo(item.txtsign) + "：</strong>\r\n");
	}
	else
	{
	ViewBuilder.Append("            <strong>" + echo(item.receivename) + "：</strong>\r\n");
	}//end if
	ViewBuilder.Append("            [<font color=\"#51a351\">已签收，签收于：" + echo(item.endtime,"yyyy年MM月dd日 HH:mm:ss") + "</font>]，用时：" + echo(DateDiff(item.starttime,item.endtime)) + "\r\n");
	List<AttachInfo> attachlist = AttachBll.GetAttachList(item.dealattachid);

	if (attachlist.Count>0)
	{
	ViewBuilder.Append("            <br>\r\n");
	ViewBuilder.Append("            <hr style=\"margin:0;height:1px;\">\r\n");
	ViewBuilder.Append("            <strong>办理附件：</strong>\r\n");

	loop__id=0;
	foreach(AttachInfo att in attachlist)
	{
	loop__id++;
	ViewBuilder.Append("            <div class=\"attachment-wrapper\" id=\"attachment_" + echo(att.id) + "\">\r\n");
	ViewBuilder.Append("                <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                <a class=\"dropdown-toggle\" target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(att.id) + "\"><img src=\"" + echo(webpath) + "common/file/" + echo(FormatExt(att.filename)) + ".gif\">" + echo(att.name) + "</a>\r\n");
	ViewBuilder.Append("                <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                    <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(att.id) + "\">下载</a></li>\r\n");
	ViewBuilder.Append("                    <li><a target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(att.id) + "\">阅读</a></li>\r\n");

	if (documentinfo.status<3)
	{
	ViewBuilder.Append("                    <li><a target=\"_blank\" href=\"" + echo(plupath) + "ntko/index.aspx?aid=" + echo(att.id) + "\">编辑</a></li>\r\n");
	ViewBuilder.Append("                    <li><a onclick=\"javascript:Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=" + echo(att.id) + "');return false;\" href=\"#\">删除</a></li>\r\n");
	}//end if
	ViewBuilder.Append("                </ul>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	}//end loop
	}//end if
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </li>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("    </ul>\r\n");
	ViewBuilder.Append("    <div class=\"clearfix\"></div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</div>\r\n");
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
	ViewBuilder.Append("        $(\"#scrollTop\").click(function () {\r\n");
	ViewBuilder.Append("            nice.scrollTop(0);\r\n");
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
