<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Flow.Controller.flowshow" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Flow.Model" %>
<%@ Import namespace="FP_Document.Model" %>
<%@ Import namespace="FP_Flow" %>

<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2015-07-22 00:25:05*/
	base.OnInitComplete(e);
	int loop__id=0;
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>流程图</title>\r\n");
	ViewBuilder.Append("	" + meta.ToString() + "\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"flowdesign/lib/jquery-ui-1.8.4.custom/css/smoothness/jquery-ui-1.8.4.custom.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link type=\"text/css\" href=\"flowdesign/css.css\" rel=\"stylesheet\">\r\n");
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
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#myflow')\r\n");
	ViewBuilder.Append("                    .myflow($.extend(true, {\r\n");
	ViewBuilder.Append("                        basePath: \"\",\r\n");
	ViewBuilder.Append("                        restore: eval(\"(" + flowinfo.restore.ToString().Trim() + ")\"),\r\n");
	ViewBuilder.Append("                        editable: false\r\n");
	ViewBuilder.Append("                    }, { })\r\n");
	ViewBuilder.Append("                    );\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow:hidden\">\r\n");
	ViewBuilder.Append("<div id=\"myflow\"></div>\r\n");
	ViewBuilder.Append("</body>\r\n");
	ViewBuilder.Append("</html>\r\n");

	Response.Write(ViewBuilder.ToString());
}
</script>
