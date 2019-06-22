<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Flow.Controller.flowlist" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Flow.Model" %>
<%@ Import namespace="FP_Flow" %>

<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2015-07-24 12:05:01*/
	base.OnInitComplete(e);
	int loop__id=0;
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<title>流程列表</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + plupath.ToString() + "bootstrap/css/bootstrap.min.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + plupath.ToString() + "bootstrap/css/bootstrap-yii.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + plupath.ToString() + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + plupath.ToString() + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + plupath.ToString() + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/page.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.ba-bbq.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "bootstrap/js/bootstrap.bootbox.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "bootstrap/js/bootstrap.notify.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "bootstrap/js/bootstrap-prompts.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "bootstrap/js/bootstrap.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "bootstrap/js/bootstrap-modal.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "bootstrap/js/bootstrap-modalmanager.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/td-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.nicescroll.js\"></");
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
	ViewBuilder.Append("   <div id=\"yw0\">\r\n");

	if (action!="view")
	{

	ViewBuilder.Append("    <div style=\"position:fixed;right:20px;top:9px;\">\r\n");
	ViewBuilder.Append("   </div>\r\n");

	}	//end if

	ViewBuilder.Append("    <table class=\"items table table-bordered\" style=\"font-size:13px;\">\r\n");
	ViewBuilder.Append("        <thead>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <th style=\"width: 100px;text-align:center\">流程步骤</th>\r\n");
	ViewBuilder.Append("            <th style=\"text-align:center;width:200px;\">流程名称</th>\r\n");
	ViewBuilder.Append("            <th>流程办理情况</th>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("        </thead>\r\n");
	ViewBuilder.Append("        <tbody>\r\n");

	loop__id=0;
	foreach(FlowStepInfo item in flowsteplist)
	{
	loop__id++;

	ViewBuilder.Append("        <tr class=\"odd\">\r\n");
	ViewBuilder.Append("            <td style=\"text-align:center;vertical-align:middle;\">\r\n");
	ViewBuilder.Append("                第<font color=\"#dd4b39\">" + item.step.ToString().Trim() + "</font>步\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:center;vertical-align:middle;\">\r\n");
	ViewBuilder.Append("                " + item.name.ToString().Trim() + "\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <div class=\"item-center\">\r\n");
	string sad = "";
	

	loop__id=0;
	foreach(FlowDataInfo item2 in GetFlowDataList(flowdatainfo.postid,item.step))
	{
	loop__id++;


	if (item2.isadmin==1)
	{

	 sad = "主办";
	

	}
	else if (item2.isadmin==0)
	{

	 sad = "协办";
	

	}	//end if


	if (item2.status==0)
	{

	ViewBuilder.Append("               <p><img src=\"statics/images/email.png\" style=\"vertical-align:text-bottom;margin-right:3px;\"><font color=\"#dd4b39\">" + item2.RserInfo.realname.ToString().Trim() + "&nbsp" + sad.ToString() + "</font>\r\n");
	ViewBuilder.Append("                [<font color=\"#51a351\">未接收</font>]</p>\r\n");

	}
	else if (item2.status==1)
	{

	ViewBuilder.Append("               <p><img src=\"statics/images/email_open.png\" style=\"vertical-align:text-bottom;margin-right:3px;\"><font color=\"#dd4b39\">" + item2.RserInfo.realname.ToString().Trim() + "&nbsp" + sad.ToString() + "</font>\r\n");
	ViewBuilder.Append("                [<font color=\"#51a351\">办理中,已用时：" + DateDiff(item2.starttime,DateTime.Now).ToString() + "</font>]<br>\r\n");
	ViewBuilder.Append("             开始于：" + FangPage.MVC.FPUtils.GetDate(item2.starttime,"yyyy-MM-dd HH:mm:ss") + "</p>\r\n");

	}
	else if (item2.status>=2)
	{


	if (item2.isadmin==2)
	{

	ViewBuilder.Append("                <p><img src=\"statics/images/email_open_image.png\" style=\"vertical-align:text-bottom;margin-right:3px;\"><font color=\"#dd4b39\">" + item2.RserInfo.realname.ToString().Trim() + "&nbsp委托</font>\r\n");
	ViewBuilder.Append("                [<font color=\"#51a351\">" + item2.UserInfo.realname.ToString().Trim() + ",用时：" + DateDiff(item2.starttime,item2.endtime).ToString() + "</font>]<br>\r\n");
	ViewBuilder.Append("                开始于：" + FangPage.MVC.FPUtils.GetDate(item2.starttime,"yyyy-MM-dd HH:mm:ss") + "<br>\r\n");
	ViewBuilder.Append("                结束于：" + FangPage.MVC.FPUtils.GetDate(item2.endtime,"yyyy-MM-dd HH:mm:ss") + "\r\n");
	ViewBuilder.Append("               </p>\r\n");

	}
	else
	{

	ViewBuilder.Append("               <p><img src=\"statics/images/email_open_image.png\" style=\"vertical-align:text-bottom;margin-right:3px;\"><font color=\"#dd4b39\">" + item2.RserInfo.realname.ToString().Trim() + "&nbsp" + sad.ToString() + "</font>\r\n");
	ViewBuilder.Append("                [<font color=\"#51a351\">已办结,用时：" + DateDiff(item2.starttime,item2.endtime).ToString() + "</font>]<br>\r\n");
	ViewBuilder.Append("                开始于：" + FangPage.MVC.FPUtils.GetDate(item2.starttime,"yyyy-MM-dd HH:mm:ss") + "<br>\r\n");
	ViewBuilder.Append("                结束于：" + FangPage.MVC.FPUtils.GetDate(item2.endtime,"yyyy-MM-dd HH:mm:ss") + "\r\n");
	ViewBuilder.Append("               </p>\r\n");

	}	//end if


	}	//end if


	}	//end loop

	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");

	}	//end loop

	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">setTimeout('$(\"#loading_layer\").remove();$(\"body\").show();$(window).trigger(\"resize\");', 100)</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<div id=\"container-absolute\"> </div>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
