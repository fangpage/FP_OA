<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Document.Controller.docnew" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Document" %>
<%@ Import namespace="FP_Document.Model" %>

<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2015-10-12 12:06:07*/
	base.OnInitComplete(e);
	int loop__id=0;
	ViewBuilder.Append("<!--[if IE]>\r\n");
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>新建公文</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + plupath.ToString() + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + plupath.ToString() + "bootstrap/css/bootstrap-yii.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + plupath.ToString() + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + plupath.ToString() + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + plupath.ToString() + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "bootstrap/js/bootstrap.bootbox.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "bootstrap/js/bootstrap.notify.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "bootstrap/js/bootstrap-prompts.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "bootstrap/js/bootstrap.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "bootstrap/js/bootstrap-modal.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "bootstrap/js/bootstrap-modalmanager.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + plupath.ToString() + "jquery/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/td-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/sidebar.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append(".sidebar {\r\n");
	ViewBuilder.Append("	width:150px;\r\n");
	ViewBuilder.Append("} \r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<a id=\"scrollTop\"></a>\r\n");
	ViewBuilder.Append("<!--导航栏-->\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div>\r\n");

	ViewBuilder.Append("<div class=\"sidebar\" style=\"height:780px; overflow-y: hidden; outline: none;\">\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_logo T_icon\"><span class=\"icon-pencil-5\"></span></div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_content T_bg\" style=\"padding-top:10px;\">\r\n");
	ViewBuilder.Append("    <a style=\"width:100px;margin:5px auto;\" class=\"btn btn-success btn-block\" id=\"btn_create\" href=\"docnew.aspx\"><i class=\"icon-pencil-2\"></i>新建公文</a>\r\n");
	ViewBuilder.Append("    <ul id=\"news_menu\" class=\"nav nav-list\">\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="inbox.aspx")
	{

	ViewBuilder.Append(" class=\"active\" \r\n");

	}	//end if

	ViewBuilder.Append("><a href=\"inbox.aspx\"><i class=\"icon-clock-3\"></i>待办公文<span class=\"badge badge-important pull-right\">" + count[0].ToString().Trim() + "</span></a></li>\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="doclist.aspx")
	{

	ViewBuilder.Append(" class=\"active\" \r\n");

	}	//end if

	ViewBuilder.Append("><a href=\"doclist.aspx\"><i class=\"icon-file\"></i>已办公文</a></li>\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="sendlist.aspx")
	{

	ViewBuilder.Append(" class=\"active\" \r\n");

	}	//end if

	ViewBuilder.Append("><a href=\"sendlist.aspx\"><i class=\"icon-file\"></i>发文管理</a></li>\r\n");
	ViewBuilder.Append("    </ul>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_buttons\"> </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#btn_create').live('click', function () {\r\n");
	ViewBuilder.Append("            TUtil.openUrl(this.href);\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");


	ViewBuilder.Append("    <div class=\"content\" style=\"margin-left: 150px; height: 780px;\">\r\n");
	ViewBuilder.Append("     <iframe name=\"rightFrame\" id=\"rightFrame\" noresize=\"noresize\" src=\"create.aspx\" frameborder=\"0\" style=\"height: 780px;\"></iframe>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"container-absolute\"> </div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    jQuery(function ($) {\r\n");
	ViewBuilder.Append("        $(\"#sort-list li\").click(function () { $(this).addClass(\"active\").siblings().removeClass(\"active\") })\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            var width = $(window).width();\r\n");
	ViewBuilder.Append("            $(\".sidebar, .content\").height(height);\r\n");
	ViewBuilder.Append("            $(\"#rightFrame\").height(height - $(\".td-nav\").height());\r\n");
	ViewBuilder.Append("            $(\"#rightFrame\").width(width - $(\".sidebar\").outerWidth());\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        if ($.browser.msie && 8 === parseInt($.browser.version)) {\r\n");
	ViewBuilder.Append("            var iframeObj = document.getElementById(\"rightFrame\");\r\n");
	ViewBuilder.Append("            if (iframeObj.attachEvent) {\r\n");
	ViewBuilder.Append("                iframeObj.attachEvent(\"onload\", function () {\r\n");
	ViewBuilder.Append("                    TUtil.ie8FixIcon();\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                iframeObj.addEventListener(\"onload\", function () {\r\n");
	ViewBuilder.Append("                    TUtil.ie8FixIcon();\r\n");
	ViewBuilder.Append("                }, false);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        $(window).trigger(\"resize\"); if ($(\".sidebar\").find(\".ztree\").length > 0) {\r\n");
	ViewBuilder.Append("            $(\".sidebar\").niceScroll({ cursorcolor: \"#ccc\", cursoropacitymin: 1, cursorwidth: 8 });\r\n");
	ViewBuilder.Append("        } else {\r\n");
	ViewBuilder.Append("            $(\".sidebar\").niceScroll({ cursorcolor: \"#ccc\", horizrailenabled: false, cursoropacitymin: 1, cursorwidth: 8 });\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
