<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_StepUser.selectuser" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_StepUser" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title></title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=10,chrome=1\">\r\n");
	ViewBuilder.Append("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\">\r\n");
	ViewBuilder.Append("    <!--[if lte IE 8]>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"js/ccorrect_btn.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("    <style type=\"text/css\">\r\n");
	ViewBuilder.Append("        .menulines {\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    </style>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"js/utility.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"js/ispirit.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"js/user_select.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        jQuery.noConflict();\r\n");
	ViewBuilder.Append("        var line_count = '2';\r\n");
	ViewBuilder.Append("        var parent_window = getOpenner();\r\n");
	ViewBuilder.Append("        var top_flag = 0;\r\n");
	ViewBuilder.Append("        var op_user = jQuery(parent_window).find('#PRCS_OP_USER2'); //主办\r\n");
	ViewBuilder.Append("        var host_op_block_div = jQuery(parent_window).find('#host_op_block_div2');\r\n");
	ViewBuilder.Append("        var prcs_user = jQuery(parent_window).find('#PRCS_USER2');//经办\r\n");
	ViewBuilder.Append("        var prcs_op_block_div = jQuery(parent_window).find('#prcs_op_block_div2');\r\n");
	ViewBuilder.Append("        var DEL_IMG0 = '<img src=\"" + echo(plupath) + "stepuser/images/remove.png\" align=\"absmiddle\" onclick=cancel_user(this,0,\"2\")>';\r\n");
	ViewBuilder.Append("        var DEL_IMG1 = '<img src=\"" + echo(plupath) + "stepuser/images/remove.png\" align=\"absmiddle\" onclick=cancel_user(this,1,\"2\")>';\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body class=\"bodycolor\" onload=\"begin_set();\" style=\"\">\r\n");
	ViewBuilder.Append("    <table width=\"100%\" class=\"TableBlock\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"TableHeader\">\r\n");
	ViewBuilder.Append("                <td colspan=\"2\" align=\"center\"><b>全部经办人</b></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"TableData\">\r\n");
	ViewBuilder.Append("                <td onclick=\"javascript:add_all();\" style=\"cursor: pointer\" align=\"center\" colspan=\"2\">全部添加</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr class=\"TableData\">\r\n");
	ViewBuilder.Append("                <td onclick=\"javascript:del_all();\" style=\"cursor: pointer\" align=\"center\" colspan=\"2\">全部删除</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(UserInfo item in userlist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"TableData\">\r\n");
	ViewBuilder.Append("                <td title=\"设为主办人\" nowrap=\"\" class=\"menulines_op\" id=\"" + echo(item.id) + "_op\" name=\"" + echo(item.realname) + "\" width=\"80\" align=\"center\" onclick=\"javascript:click_op('" + echo(item.id) + "_op')\" style=\"cursor: pointer\">\r\n");
	ViewBuilder.Append("                    <input type=\"checkbox\" id=\"opbox_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("                    主办人 </td>\r\n");
	ViewBuilder.Append("                <td title=\"" + echo(item.departname) + "\" class=\"menulines\" id=\"" + echo(item.id) + "\" name=\"" + echo(item.realname) + "\" width=\"90%\" align=\"left\" onclick=\"javascript:click_user('" + echo(item.id) + "')\" style=\"cursor: pointer; border-color: black; background-color: rgb(0, 63, 191); color: white; font-weight: bold;\">" + echo(item.realname) + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
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
