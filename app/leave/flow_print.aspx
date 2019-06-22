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
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" > \r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title>表单打印</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        function printExt() {\r\n");
	ViewBuilder.Append("            window.frames['form_view'].print();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");

	if (isie>0)
	{
	ViewBuilder.Append("    <object id=\"LODOP\" classid=\"clsid:2105C259-1E0C-4534-8141-A753534CB4CA\" width=\"0\" height=\"0\"><embed id=\"LODOP_EM\" type=\"application/x-print-lodop\" width=\"0\" height=\"0\" pluginspage=\"/plugins/lodop/install_lodop.exe\"></object>\r\n");
	}//end if
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<frameset rows=\"*,40\" cols=\"*\" frameborder=\"yes\">\r\n");
	ViewBuilder.Append("    <frame src=\"form_print.aspx?id=" + echo(id) + "\" name=\"form_view\" scrolling=\"yes\">\r\n");
	ViewBuilder.Append("    <frame src=\"form_print_control.aspx?id=" + echo(id) + "\" name=\"form_control\" scrolling=\"no\" frameborder=\"no\">\r\n");
	ViewBuilder.Append("</frameset>\r\n");
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
