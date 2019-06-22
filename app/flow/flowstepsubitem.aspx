<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Flow.Controller.flowstepsubitem" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Flow" %>
<%@ Import namespace="FP_Flow.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<%@ Import namespace="FP_Form.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("    <title>步骤协办字段</title>\r\n");
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
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"statics/js/lab2.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            PageNav(\"" + echo(GetSortNav(sortinfo,pagename)) + "|协办字段," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("            $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("                window.location.href = \"flowsteplist.aspx?flowid=" + echo(flowid) + "\";\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("            $(\"#btnsave\").click(function () {\r\n");
	ViewBuilder.Append("                $(\"#s2 option\").attr(\"selected\", \"selected\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("    <table class=\"ntcplist\" style=\"width:100%;\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("        <td>\r\n");
	ViewBuilder.Append("        <div class=\"ntab4\">\r\n");
	ViewBuilder.Append("            <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("                <ul id=\"mytab1\">\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepadd.aspx?id=" + echo(stepid) + "\">步骤属性</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepnext.aspx?stepid=" + echo(stepid) + "\">下一步骤</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepflag.aspx?stepid=" + echo(stepid) + "\">经办权限</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepitem.aspx?stepid=" + echo(stepid) + "\">主办字段</a></li>\r\n");
	ViewBuilder.Append("                    <li class=\"active\"><a href=\"flowstepsubitem.aspx?stepid=" + echo(stepid) + "\">协办字段</a></li>\r\n");
	ViewBuilder.Append("                </ul>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <table style=\"background-color: white; width: 100%\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                    <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("                        <tbody>\r\n");
	ViewBuilder.Append("                            <tr>\r\n");
	ViewBuilder.Append("                                <td class=\"newstitle\" bgcolor=\"#ffffff\">步骤协办可写字段：" + echo(flowstepinfo.name) + "</td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");
	ViewBuilder.Append("                        </tbody>\r\n");
	ViewBuilder.Append("                    </table>\r\n");
	ViewBuilder.Append("                    <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("                    <tbody>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("				        <td colspan=\"2\">\r\n");
	ViewBuilder.Append("                            <table cellpadding=\"0\" cellspacing=\"8\">\r\n");
	ViewBuilder.Append("			                    <tr>\r\n");
	ViewBuilder.Append("				                    <td align=\"center\">本步骤协办可写字段</td>\r\n");
	ViewBuilder.Append("				                    <td>&nbsp;</td>\r\n");
	ViewBuilder.Append("				                    <td align=\"center\">备选字段</td>\r\n");
	ViewBuilder.Append("			                    </tr>\r\n");
	ViewBuilder.Append("			                    <tr>\r\n");
	ViewBuilder.Append("				                    <td>\r\n");
	ViewBuilder.Append("					                    <select id=\"s2\" name=\"s2\" style=\"width:150px;height:220px;\" multiple=\"multiple\">\r\n");

	loop__id=0;
	foreach(FormFieldInfo item in flowfieldlist)
	{
	loop__id++;

	if (FPUtils.IsContain(item.id,flowstepinfo.subitem))
	{
	ViewBuilder.Append("<option value=\"" + echo(item.id) + "\">" + echo(item.name) + "</option>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("                              </select>\r\n");
	ViewBuilder.Append("				                    </td>\r\n");
	ViewBuilder.Append("				                    <td>\r\n");
	ViewBuilder.Append("					                    <p><input id=\"b1\" type=\"button\" class=\"s1\" style=\"width:50px;\" value=\"&lt;--\"></p>\r\n");
	ViewBuilder.Append("					                    <p><input type=\"button\" id=\"b2\" class=\"s1\" style=\"width:50px;\" value=\"&lt;&lt;--\"></p>\r\n");
	ViewBuilder.Append("					                    <p><input type=\"button\" id=\"b3\" class=\"s1\" style=\"width:50px;\" value=\"--&gt;\"></p>\r\n");
	ViewBuilder.Append("					                    <p><input type=\"button\" id=\"b4\" class=\"s1\" style=\"width:50px;\" value=\"--&gt;&gt;\"></p>\r\n");
	ViewBuilder.Append("				                    </td>\r\n");
	ViewBuilder.Append("				                    <td>\r\n");
	ViewBuilder.Append("                              <select id=\"s1\" name=\"s1\" style=\"width:150px; height:220px;\" multiple=\"multiple\">\r\n");

	loop__id=0;
	foreach(FormFieldInfo item in flowfieldlist)
	{
	loop__id++;

	if (FPUtils.IsContain(item.id,flowstepinfo.subitem))
	{
	ViewBuilder.Append("<option value=\"" + echo(item.id) + "\">" + echo(item.name) + "</option>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("					                    </select>\r\n");
	ViewBuilder.Append("                                    </td>\r\n");
	ViewBuilder.Append("			                    </tr>\r\n");
	ViewBuilder.Append("		                    </table>\r\n");
	ViewBuilder.Append("				        </td>\r\n");
	ViewBuilder.Append("			        </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td height=\"18\" colspan=\"2\" align=\"left\">\r\n");
	ViewBuilder.Append("                            点击条目时，可以组合Ctrl或Shift键进行多选\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                        <td height=\"25\">\r\n");
	ViewBuilder.Append("                            <input id=\"btnsave\" name=\"btnsave\" value=\"保存\" type=\"button\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                            <input id=\"btncancle\" class=\"adminsubmit_short\" name=\"btncancle\" value=\"返回\" type=\"button\">\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("                </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
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
