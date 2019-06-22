<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Web.LoginController" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Web" %>
<script runat="server">
protected override void View()
{
	base.View();
	string id = FPRequest.GetString("id");
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title>表单打印控制</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    function form_export_html()\r\n");
	ViewBuilder.Append("    {\r\n");
	ViewBuilder.Append("      parent.form_view.location=\"form_print.aspx?id=" + echo(id) + "&html=1\";\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function form_export()\r\n");
	ViewBuilder.Append("    {\r\n");
	ViewBuilder.Append("      parent.form_view.focus();\r\n");
	ViewBuilder.Append("      parent.form_view.WebBrowser.ExecWB(4,1);\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"form1\" name=\"form1\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("    <div style=\"float:right;\">\r\n");
	ViewBuilder.Append("     <input type=\"button\" value=\"打印预览\" class=\"btn btn-primary\" onclick=\"parent.printExt();\">\r\n");
	ViewBuilder.Append("	<input type=\"button\" value=\"导出HTML\" class=\"btn btn-danger\" onclick=\"form_export_html();\">\r\n");
	ViewBuilder.Append("	<input type=\"button\" value=\"关闭\" class=\"btn\" onclick=\"parent.close();\">\r\n");
	ViewBuilder.Append("    </div>\r\n");
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
