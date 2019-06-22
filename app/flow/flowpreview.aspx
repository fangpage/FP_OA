<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Flow.Controller.flowpreview" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Flow" %>
<%@ Import namespace="FP_Flow.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>流程图</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"flowdesign/lib/jquery-ui-1.8.4.custom/css/smoothness/jquery-ui-1.8.4.custom.css\" rel=\"stylesheet\"></link>\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"flowdesign/css.css\" rel=\"stylesheet\"></link>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"flowdesign/lib/raphael-min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"flowdesign/lib/jquery-ui-1.8.4.custom/js/jquery-1.4.2.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"flowdesign/lib/jquery-ui-1.8.4.custom/js/jquery-ui-1.8.4.custom.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"flowdesign/myflow.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"flowdesign/myflow.jpdl4.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"flowdesign/myflow.editors.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("	$(function () {\r\n");
	ViewBuilder.Append("		$('#myflow')\r\n");
	ViewBuilder.Append("		.myflow($.extend(true, {\r\n");
	ViewBuilder.Append("			basePath: \"\",\r\n");
	ViewBuilder.Append("			restore: eval(\"(" + echo(flowinfo.restore) + ")\"),\r\n");
	ViewBuilder.Append("			editable: false\r\n");
	ViewBuilder.Append("		}, { })\r\n");
	ViewBuilder.Append("		);\r\n");
	ViewBuilder.Append("	});\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow:hidden\">\r\n");
	ViewBuilder.Append("<div id=\"myflow\"></div>\r\n");
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
