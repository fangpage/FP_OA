<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_WorkFlow.Controller.flowlist" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_WorkFlow" %>
<%@ Import namespace="FP_WorkFlow.Model" %>
<%@ Import namespace="FP_Flow.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>流转步骤</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.min.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-yii.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/page.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ba-bbq/jquery.ba-bbq.js\"></");
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
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("            </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\" marginwidth=\"0\" marginheight=\"0\">\r\n");
	ViewBuilder.Append("<!--导航栏-->\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\" style=\"overflow: hidden; outline: none;padding-top:5px;\">\r\n");
	ViewBuilder.Append("   <div>\r\n");

	if (action!="view")
	{
	ViewBuilder.Append("    <div style=\"position:fixed;right:20px;top:9px;\">\r\n");
	ViewBuilder.Append("   </div>\r\n");
	}//end if
	ViewBuilder.Append("    <table class=\"items table table-bordered\" style=\"font-size:13px;\">\r\n");
	ViewBuilder.Append("        <thead>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <th style=\"width: 60px;text-align:center\">流转序号</th>\r\n");
	ViewBuilder.Append("            <th style=\"text-align:center;width:200px;\">流转步骤</th>\r\n");
	ViewBuilder.Append("            <th>步骤办理情况</th>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </thead>\r\n");
	ViewBuilder.Append("        <tbody>\r\n");

	loop__id=0;
	foreach(WorkFlowInfo item in workflowlist)
	{
	loop__id++;
	ViewBuilder.Append("        <tr class=\"odd\">\r\n");
	ViewBuilder.Append("            <td style=\"text-align:center;vertical-align:middle;color:#dd4b39;font-weight:bold;\">\r\n");
	ViewBuilder.Append("                第" + echo(item.step) + "步\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:left;vertical-align:middle;\">\r\n");
	ViewBuilder.Append("                <img alt=\"\" src=\"statics/images/next.gif\" width=\"16\" height=\"16\">" + echo(item.step_number) + "." + echo(item.stepname) + "\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <div class=\"item-center\">\r\n");

	loop__id=0;
	foreach(WorkFlowInfo item2 in GetFlowDataList(workinfo.postid,item.step))
	{
	loop__id++;

	if (item2.status==0)
	{
	ViewBuilder.Append("               <p><img src=\"statics/images/email.png\" style=\"vertical-align:text-bottom;margin-right:3px;\"><span style=\"color:#dd4b39;font-weight:bold;\">" + echo(item2.receive_name) + "&nbsp;" + echo(item2.isadmin_show) + "</span>\r\n");
	ViewBuilder.Append("                [<font color=\"#51a351\">未接收</font>]</p>\r\n");
	}
	else if (item2.status==1)
	{
	ViewBuilder.Append("               <p><img src=\"statics/images/email_open.png\" style=\"vertical-align:text-bottom;margin-right:3px;\"><span style=\"color:#dd4b39;font-weight:bold;\">" + echo(item2.receive_name) + "&nbsp;" + echo(item2.isadmin_show) + "</span>\r\n");
	ViewBuilder.Append("                [<font color=\"#51a351\">办理中，已用时：" + echo(item2.utime) + "</font>]<br>\r\n");
	ViewBuilder.Append("             开始于：" + echo(item2.starttime,"yyyy-MM-dd HH:mm:ss") + "</p>\r\n");
	}
	else if (item2.status>=2)
	{

	if (item2.starttime==null)
	{
	ViewBuilder.Append("                <p><img src=\"statics/images/email.png\" style=\"vertical-align:text-bottom;margin-right:3px;\"><span style=\"color:#dd4b39;font-weight:bold;\">" + echo(item2.receive_name) + "&nbsp;" + echo(item2.isadmin_show) + "</span>\r\n");
	ViewBuilder.Append("                [<font color=\"#51a351\">未处理</font>]</p>\r\n");
	continue;
	}//end if

	if (item2.endtime==null)
	{
	ViewBuilder.Append("                <p><img src=\"statics/images/email.png\" style=\"vertical-align:text-bottom;margin-right:3px;\"><span style=\"color:#dd4b39;font-weight:bold;\">" + echo(item2.receive_name) + "&nbsp;" + echo(item2.isadmin_show) + "</span>\r\n");
	ViewBuilder.Append("                [<font color=\"#51a351\">未完成</font>]</p>\r\n");
	continue;
	}//end if

	if (item2.isback==1||item2.isback==-2)
	{
	ViewBuilder.Append("                <p><img src=\"statics/images/email_open_image.png\" style=\"vertical-align:text-bottom;margin-right:3px;\"><span style=\"color:#dd4b39;font-weight:bold;\">" + echo(item2.receive_name) + "&nbsp;主办</span>\r\n");
	ViewBuilder.Append("                [<font color=\"#51a351\">已回退，回退意见：" + echo(item2.content) + "，用时：" + echo(item2.utime) + "</font>]<br>\r\n");
	ViewBuilder.Append("                开始于：" + echo(item2.starttime,"yyyy-MM-dd HH:mm:ss") + "，结束于：" + echo(item2.endtime,"yyyy-MM-dd HH:mm:ss") + "\r\n");
	ViewBuilder.Append("               </p>\r\n");
	}
	else
	{
	ViewBuilder.Append("               <p><img src=\"statics/images/email_open_image.png\" style=\"vertical-align:text-bottom;margin-right:3px;\"><span style=\"color:#dd4b39;font-weight:bold;\">" + echo(item2.receive_name) + "&nbsp;" + echo(item2.isadmin_show) + "</span>\r\n");
	ViewBuilder.Append("                [<font color=\"#51a351\">已办结，用时：" + echo(item2.utime) + "</font>]<br>\r\n");
	ViewBuilder.Append("                开始于：" + echo(item2.starttime,"yyyy-MM-dd HH:mm:ss") + "，结束于：" + echo(item2.endtime,"yyyy-MM-dd HH:mm:ss") + "\r\n");
	ViewBuilder.Append("               </p>\r\n");
	}//end if
	}//end if
	}//end loop
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	}//end loop
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">setTimeout('$(\"#loading_layer\").remove();$(\"body\").show();$(window).trigger(\"resize\");', 100)</");
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
