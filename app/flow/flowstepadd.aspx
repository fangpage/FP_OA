<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Flow.Controller.flowstepadd" %>
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
	ViewBuilder.Append("    <title>添加流程步骤</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("    <meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(adminpath) + "statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(adminpath) + "statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <link href=\"../css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("                window.location.href = \"flowsteplist.aspx?flowid=" + echo(flowid) + "\";\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("            PageNav(\"" + echo(GetSortNav(sortinfo,pagename)) + "|添加编辑步骤," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("    <table class=\"ntcplist\" style=\"width:100%;color:#040000\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td>\r\n");

	if (id>0)
	{
	ViewBuilder.Append("        <div class=\"ntab4\">\r\n");
	ViewBuilder.Append("            <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("                <ul id=\"mytab1\">\r\n");
	ViewBuilder.Append("                    <li class=\"active\"><a href=\"flowstepadd.aspx?id=" + echo(id) + "\">步骤属性</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepnext.aspx?stepid=" + echo(id) + "\">下一步骤</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepflag.aspx?stepid=" + echo(id) + "\">经办权限</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepitem.aspx?stepid=" + echo(id) + "\">主办字段</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepsubitem.aspx?stepid=" + echo(id) + "\">协办字段</a></li>\r\n");
	ViewBuilder.Append("                </ul>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	}//end if
	ViewBuilder.Append("        <table style=\"background-color: white; width: 100%\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("                        <tbody>\r\n");
	ViewBuilder.Append("                            <tr>\r\n");
	ViewBuilder.Append("                                <td class=\"newstitle\" bgcolor=\"#ffffff\">添加编辑步骤：" + echo(flowinfo.name) + "</td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");
	ViewBuilder.Append("                        </tbody>\r\n");
	ViewBuilder.Append("                    </table>\r\n");
	ViewBuilder.Append("                    <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("                    <tbody>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td class=\"td_class\">步骤序号： </td>\r\n");
	ViewBuilder.Append("                        <td height=\"25\">\r\n");
	ViewBuilder.Append("                            <input style=\"width: 200px\" id=\"step\" name=\"step\" value=\"" + echo(flowstepinfo.step) + "\" readonly=\"readonly\">&nbsp;自动生成，无需输入\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td class=\"td_class\">步骤名称： </td>\r\n");
	ViewBuilder.Append("                        <td height=\"25\">\r\n");
	ViewBuilder.Append("                            <input style=\"width: 200px\" id=\"name\" name=\"name\" value=\"" + echo(flowstepinfo.name) + "\">\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td class=\"td_class\">步骤备注： </td>\r\n");
	ViewBuilder.Append("                        <td height=\"25\">\r\n");
	ViewBuilder.Append("                            <input style=\"width: 200px\" id=\"note\" name=\"note\" value=\"" + echo(flowstepinfo.note) + "\">\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                        <td height=\"25\">\r\n");
	ViewBuilder.Append("                            <input name=\"submit\" value=\"保存\" type=\"submit\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                            <input id=\"btncancle\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\"></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("                </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("</table>\r\n");
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
