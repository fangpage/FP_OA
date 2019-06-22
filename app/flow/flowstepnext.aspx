<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Flow.Controller.flowstepnext" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Flow" %>
<%@ Import namespace="FP_Flow.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("    <title>流程下一步骤管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("    <meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(adminpath) + "statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(adminpath) + "statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(adminpath) + "statics/css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	string sorturl = "flowmanage.aspx";
	ViewBuilder.Append("            PageNav(\"" + echo(GetSortNav(sortinfo,sorturl)) + "|" + echo(flowinfo.name) + "," + echo(webpath) + "" + echo(curpath) + "flowsteplist.aspx?flowid=" + echo(flowid) + "|添加编辑步骤," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("            $(\"#btnadd\").click(function () {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"add\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("            $(\"#btnupdate\").click(function () {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"update\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        function DeleteItem(stepid) {\r\n");
	ViewBuilder.Append("            if (confirm(\"你确定要删除该步骤吗？\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#step\").val(stepid);\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("        <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <input type=\"hidden\" name=\"step\" id=\"step\" value=\"\"> \r\n");
	ViewBuilder.Append("        <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("        <div class=\"ntab4\">\r\n");
	ViewBuilder.Append("            <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("                <ul id=\"mytab1\">\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepadd.aspx?id=" + echo(stepid) + "\">步骤属性</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"active\"><a href=\"flowstepnext.aspx?stepid=" + echo(stepid) + "\">下一步骤</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepflag.aspx?stepid=" + echo(stepid) + "\">经办权限</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepitem.aspx?stepid=" + echo(stepid) + "\">主办字段</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepsubitem.aspx?stepid=" + echo(stepid) + "\">协办字段</a></li>\r\n");
	ViewBuilder.Append("                </ul>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <table style=\"background-color:white;width:100%\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("         <tr>\r\n");
	ViewBuilder.Append("            <td colspan=\"2\">\r\n");
	ViewBuilder.Append("            <div class=\"newslist\">\r\n");
	ViewBuilder.Append("                <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("                <ul>\r\n");
	ViewBuilder.Append("                    <li style=\"background: url(" + echo(adminpath) + "statics/images/refresh.gif) 2px 6px no-repeat\"><a href=\"flowstepnext.aspx?stepid=" + echo(stepid) + "\">刷新</a> </li>\r\n");
	ViewBuilder.Append("                    <li style=\"background: url(" + echo(adminpath) + "statics/images/return.gif) 2px 6px no-repeat\"><a href=\"flowsteplist.aspx?flowid=" + echo(flowid) + "\">返回</a></li>\r\n");
	ViewBuilder.Append("                    <li style=\"float:right; width:auto\"><strong>" + echo(flowstepinfo.step) + "." + echo(flowstepinfo.name) + "</strong></li>\r\n");
	ViewBuilder.Append("                </ul>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("          </tr>\r\n");
	ViewBuilder.Append("          <tr>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("           <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("           <tbody>\r\n");
	ViewBuilder.Append("            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  下一步骤序号\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  下一步骤名称\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  转交备注\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td width=\"150\">\r\n");
	ViewBuilder.Append("                  操作\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	loop__id=0;
	foreach(FlowStepInfo item in flowstepnextlist)
	{
	loop__id++;

	if (step==item.id)
	{
	ViewBuilder.Append("              <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    " + echo(item.step) + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    " + echo(item.name) + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                   <input type=\"text\" style=\"width:150px\" name=\"nexttext_" + echo(item.step) + "\" id=\"nexttext_" + echo(item.step) + "\" value=\"" + echo(item.note) + "\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <a id=\"btnupdate\" style=\"width: 30px; display: inline-block; color: #1317fc\" href=\"javascript:void()\">更新</a>\r\n");
	ViewBuilder.Append("                    <a style=\"width: 30px; display: inline-block; color: #1317fc\" href=\"?stepid=" + echo(stepid) + "\">取消</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    " + echo(item.step) + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    " + echo(item.name) + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    " + echo(item.note) + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <a style=\"width: 30px; display: inline-block; color: #1317fc\" href=\"?stepid=" + echo(stepid) + "&step=" + echo(item.id) + "\">编辑</a>\r\n");
	ViewBuilder.Append("                    <a style=\"width: 30px; display: inline-block; color: #1317fc\" href=\"javascript:DeleteItem(" + echo(item.id) + ")\">删除</a>\r\n");
	ViewBuilder.Append("                    <a style=\"width: 30px; display: inline-block; color: #1317fc\" href=\"javascript:void();\">条件</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	}//end if
	}//end loop

	if (flowsteplist.Count>0)
	{
	ViewBuilder.Append("            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td></td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <select id=\"nextstep\" name=\"nextstep\">\r\n");

	loop__id=0;
	foreach(FlowStepInfo item in flowsteplist)
	{
	loop__id++;

	if (item.id>0)
	{
	ViewBuilder.Append("                        <option value=\"" + echo(item.step) + "\">" + echo(item.step) + "." + echo(item.name) + "</option>\r\n");
	}
	else
	{
	ViewBuilder.Append("                        <option value=\"-1\">" + echo(item.step) + "." + echo(item.name) + "</option>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("                    </select>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <input type=\"text\" style=\"width:150px\" name=\"nexttext\" id=\"nexttext\" value=\"\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <a id=\"btnadd\" style=\"width: 30px; display: inline-block; color: #1317fc\" href=\"javascript:void()\">添加</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end if
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("          </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("   </form>\r\n");
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
