<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Flow.Controller.upload" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Flow.Model" %>
<%@ Import namespace="FP_Document.Model" %>
<%@ Import namespace="FP_Flow" %>

<script runat="server">
override protected void OnInitComplete(EventArgs e)
{
	/*方配软件技术有限公司(WMS框架)，官方网站：http://www.fangpage.com，生成时间：2015-07-16 11:52:09*/
	base.OnInitComplete(e);
	int loop__id=0;

	Response.Write(ViewBuilder.ToString());
}
</script>
