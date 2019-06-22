<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Flow.Controller.flowadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Flow" %>
<%@ Import namespace="FP_Flow.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<%@ Import namespace="FangPage.WMS.Config" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>添加工作流程</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(adminpath) + "statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"flowmanage.aspx?sortid=" + echo(sortid) + "\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submit1\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"save\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(\"#submit2\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"saveas\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $('#btnselectform').click(function () {\r\n");
	ViewBuilder.Append("            index = $.layer({\r\n");
	ViewBuilder.Append("                type: 2,\r\n");
	ViewBuilder.Append("                shade: [0],\r\n");
	ViewBuilder.Append("                fix: false,\r\n");
	ViewBuilder.Append("                title: '选择流程表单',\r\n");
	ViewBuilder.Append("                maxmin: false,\r\n");
	ViewBuilder.Append("                iframe: { src: '" + echo(apppath) + "form/formselect.aspx?channel=workform'},\r\n");
	ViewBuilder.Append("                area: ['500px', '460px']\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_clear\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#formid\").html(\"\");\r\n");
	ViewBuilder.Append("            $(\"#formname\").val(\"\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        PageNav(\"" + echo(GetSortNav(sortinfo,pagename)) + "|添加编辑流程," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("  <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("  <table class=\"ntcplist\" style=\"width:100%;\">\r\n");
	ViewBuilder.Append("   <tr>\r\n");
	ViewBuilder.Append("        <td>\r\n");

	if (id>0)
	{
	ViewBuilder.Append("<div class=\"ntab4\">\r\n");
	ViewBuilder.Append("            <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("                <ul id=\"mytab1\">\r\n");
	ViewBuilder.Append("                    <li class=\"active\"><a href=\"flowadd.aspx?id=" + echo(id) + "\">流程属性</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowflag.aspx?id=" + echo(id) + "\">流程权限</a> </li>\r\n");
	ViewBuilder.Append("                </ul>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	}//end if
	ViewBuilder.Append("        <table style=\"background-color: white; width: 100%\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("                  <tbody>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"newstitle\" bgcolor=\"#ffffff\">添加编辑流程</td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                  </tbody>\r\n");
	ViewBuilder.Append("                </table>\r\n");
	ViewBuilder.Append("                <table style=\"width:100%;\" class=\"border\">\r\n");
	ViewBuilder.Append("                  <tbody>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"td_class\">流程名称： </td>\r\n");
	ViewBuilder.Append("                      <td height=\"25\">\r\n");
	ViewBuilder.Append("                          <input type=\"text\" style=\"width: 200px\" id=\"name\" name=\"name\" value=\"" + echo(flowinfo.name) + "\">\r\n");
	ViewBuilder.Append("                      </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"td_class\">流程应用： </td>\r\n");
	ViewBuilder.Append("                      <td height=\"25\">\r\n");
	ViewBuilder.Append("                          <select id=\"guid\" name=\"guid\" style=\"width:202px;\">\r\n");
	ViewBuilder.Append("                            <option value=\"0\">选择流程应用</option>\r\n");

	loop__id=0;
	foreach(AppConfig item in applist)
	{
	loop__id++;
	ViewBuilder.Append("<option value=\"" + echo(item.guid) + "\" "+(flowinfo.guid==item.guid?"selected":"")+">" + echo(item.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("                          </select>\r\n");
	ViewBuilder.Append("                      </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"td_class\">流程类型： </td>\r\n");
	ViewBuilder.Append("                      <td height=\"25\">\r\n");
	ViewBuilder.Append("                          <select id=\"type\" name=\"type\" style=\"width:202px;\">\r\n");
	ViewBuilder.Append("                            <option value=\"0\" "+(flowinfo.type==0?"selected":"")+">固定流程</option>\r\n");
	ViewBuilder.Append("                            <option value=\"1\" "+(flowinfo.type==1?"selected":"")+">自由流程</option>\r\n");
	ViewBuilder.Append("                            <option value=\"2\" "+(flowinfo.type==2?"selected":"")+">任务交办</option>\r\n");
	ViewBuilder.Append("                          </select>\r\n");
	ViewBuilder.Append("                      </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"td_class\">流程分类： </td>\r\n");
	ViewBuilder.Append("                      <td height=\"25\">\r\n");
	ViewBuilder.Append("                          <select id=\"typeid\" name=\"typeid\" style=\"width:202px;\">\r\n");
	ViewBuilder.Append("                            <option value=\"0\">选择分类</option>\r\n");

	loop__id=0;
	foreach(TypeInfo item in typelist)
	{
	loop__id++;
	ViewBuilder.Append("<option value=\"" + echo(item.id) + "\" "+(flowinfo.typeid==item.id?"selected":"")+">" + echo(item.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("                          </select>\r\n");
	ViewBuilder.Append("                      </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"td_class\">流程表单： </td>\r\n");
	ViewBuilder.Append("                      <td height=\"25\">\r\n");
	ViewBuilder.Append("                          <input style=\"width: 200px\" id=\"formid\" name=\"formid\" value=\"" + echo(flowinfo.formid) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                          <input style=\"width: 200px;height:25px\" id=\"formname\" name=\"formname\" value=\"" + echo(flowinfo.FormInfo.SortInfo.name) + ">>" + echo(flowinfo.FormInfo.name) + "\" readonly=\"readonly\">\r\n");
	ViewBuilder.Append("                          <input id=\"btnselectform\" class=\"adminsubmit_short\" name=\"btnselectform\" value=\"选择\" type=\"button\">\r\n");
	ViewBuilder.Append("                          <input id=\"btn_clear\" class=\"adminsubmit_short\" name=\"btn_clear\" value=\"清空\" type=\"button\">\r\n");
	ViewBuilder.Append("                      </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"td_class\">流程描述： </td>\r\n");
	ViewBuilder.Append("                      <td height=\"25\">\r\n");
	ViewBuilder.Append("                          <input type=\"text\" style=\"width: 200px\" id=\"desc\" name=\"desc\" value=\"" + echo(flowinfo.desc) + "\">\r\n");
	ViewBuilder.Append("                      </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"td_class\">转办地址： </td>\r\n");
	ViewBuilder.Append("                      <td height=\"25\">\r\n");
	ViewBuilder.Append("                          <input type=\"text\" style=\"width: 200px\" id=\"transferurl\" name=\"transferurl\" value=\"" + echo(flowinfo.transferurl) + "\">\r\n");
	ViewBuilder.Append("                      </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"td_class\">允许转办： </td>\r\n");
	ViewBuilder.Append("                      <td height=\"25\">\r\n");
	ViewBuilder.Append("                          <input id=\"istransfer1\" name=\"istransfer\" value=\"1\" "+(flowinfo.istransfer==1?"checked":"")+" type=\"radio\">是&nbsp;\r\n");
	ViewBuilder.Append("                          <input id=\"istransfer0\" name=\"istransfer\" value=\"0\" "+(flowinfo.istransfer==0?"checked":"")+" type=\"radio\">否\r\n");
	ViewBuilder.Append("                      </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"td_class\">流程状态： </td>\r\n");
	ViewBuilder.Append("                      <td height=\"25\">\r\n");
	ViewBuilder.Append("                          <input id=\"status1\" name=\"status\" value=\"1\" \r\n");

	if (flowinfo.status==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">开启&nbsp;\r\n");
	ViewBuilder.Append("                          <input id=\"status0\" name=\"status\" value=\"0\" \r\n");

	if (flowinfo.status==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" type=\"radio\">关闭\r\n");
	ViewBuilder.Append("                      </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                      <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                      <td height=\"25\">\r\n");
	ViewBuilder.Append("                        <input name=\"submit1\" id=\"submit1\" value=\"保存\" type=\"button\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                        <input name=\"submit2\" id=\"submit2\" value=\"另存为\" type=\"button\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                        <input id=\"btncancle\" name=\"btncancle\" value=\"返回\" type=\"button\" class=\"adminsubmit_short\"></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                  </tbody>\r\n");
	ViewBuilder.Append("                </table>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </td>\r\n");
	ViewBuilder.Append("</tr>\r\n");
	ViewBuilder.Append("</table>\r\n");
	ViewBuilder.Append("</form>\r\n");
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
