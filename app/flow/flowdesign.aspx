<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Flow.Controller.flowdesign" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Flow" %>
<%@ Import namespace="FP_Flow.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>[" + echo(flowinfo.name) + "]流程视图</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"flowdesign/lib/jquery-ui-1.8.4.custom/css/smoothness/jquery-ui-1.8.4.custom.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"flowdesign/css.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"flowdesign/lib/raphael-min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"flowdesign/lib/jquery-ui-1.8.4.custom/js/jquery.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"flowdesign/lib/jquery-ui-1.8.4.custom/js/jquery-ui.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"flowdesign/myflow.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"flowdesign/myflow.jpdl4.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"flowdesign/myflow.editors.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#myflow')\r\n");
	ViewBuilder.Append("		.myflow(\r\n");
	ViewBuilder.Append("		{\r\n");
	ViewBuilder.Append("			basePath: \"\",\r\n");
	ViewBuilder.Append("			restore: eval(\"(" + echo(flowinfo.restore) + ")\"),\r\n");
	ViewBuilder.Append("			tools: {\r\n");
	ViewBuilder.Append("				save: {\r\n");
	ViewBuilder.Append("					onclick: function (data) {\r\n");
	ViewBuilder.Append("					    $(\"#restore\").val(data);\r\n");
	ViewBuilder.Append("					    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("					}\r\n");
	ViewBuilder.Append("				}\r\n");
	ViewBuilder.Append("			}\r\n");
	ViewBuilder.Append("		});\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("        <input id=\"restore\" name=\"restore\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <div id=\"myflow_tools\" style=\"position: absolute; top: 10px; left: 10px; background-color: #fff; width: 70px; cursor: default; padding: 3px;\" class=\"ui-widget-content\">\r\n");
	ViewBuilder.Append("        <div id=\"myflow_tools_handle\" style=\"text-align: center;\" class=\"ui-widget-header\">工具箱</div>\r\n");
	ViewBuilder.Append("        <div class=\"node\" id=\"myflow_save\"><img src=\"flowdesign/img/save.gif\">&nbsp;&nbsp;保存</div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div id=\"myflow\"></div>\r\n");
	ViewBuilder.Append("    </form>\r\n");
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
