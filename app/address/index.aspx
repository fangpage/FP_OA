<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Address.index" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Address" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!--[if IE]>\r\n");
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>通信录</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-yii.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "ztree/zTreeStyle.css\">\r\n");
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
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.all-3.5.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.exhide-3.5.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/sidebar.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar\" style=\"height: 780px; overflow-y: hidden; outline: none;\">\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_content T_bg\" style=\"padding-top:10px;\">\r\n");
	ViewBuilder.Append("    <ul id=\"orgTree\" class=\"ztree\">\r\n");
	ViewBuilder.Append("    </ul>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_buttons\"></div>\r\n");
	ViewBuilder.Append("   </div>\r\n");
	ViewBuilder.Append("    <div class=\"content\" style=\"margin-left: 180px; height: 780px;\">\r\n");
	ViewBuilder.Append("      <iframe name=\"rightFrame\" id=\"rightFrame\" noresize=\"noresize\" src=\"address.aspx\" frameborder=\"0\" style=\"height: 780px;\"></iframe>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            var width = $(window).width();\r\n");
	ViewBuilder.Append("            $(\".sidebar, .content\").height(height);\r\n");
	ViewBuilder.Append("            $(\"#rightFrame\").height(height);\r\n");
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
	ViewBuilder.Append("        $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("        var setting = {\r\n");
	ViewBuilder.Append("            view: {\r\n");
	ViewBuilder.Append("                dblClickExpand: true,\r\n");
	ViewBuilder.Append("                showLine: true,\r\n");
	ViewBuilder.Append("                selectedMulti: false\r\n");
	ViewBuilder.Append("            },\r\n");
	ViewBuilder.Append("            data: {\r\n");
	ViewBuilder.Append("                simpleData: {\r\n");
	ViewBuilder.Append("                    enable: true,\r\n");
	ViewBuilder.Append("                    idKey: \"id\",\r\n");
	ViewBuilder.Append("                    pIdKey: \"pId\",\r\n");
	ViewBuilder.Append("                    rootPId: \"\"\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        var zNodes = [\r\n");
	ViewBuilder.Append("            " + echo(zNodes) + "\r\n");
	ViewBuilder.Append("        ];\r\n");
	ViewBuilder.Append("        var zTree = $.fn.zTree.init($('#orgTree'), setting, zNodes);\r\n");
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
