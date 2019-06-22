<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_WorkFlow.Controller.workmanage" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_WorkFlow" %>
<%@ Import namespace="FP_WorkFlow.Model" %>
<%@ Import namespace="FP_Flow.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta content=\"text/html; charset=utf-8\" http-equiv=\"content-type\">\r\n");
	ViewBuilder.Append("<title>工作管理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(adminpath) + "statics/css/admin.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(adminpath) + "statics/css/datagrid.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        //全选\r\n");
	ViewBuilder.Append("        $('#checkall').click(function () {\r\n");
	ViewBuilder.Append("            $('input[name=chkid]').attr(\"checked\", this.checked);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"input[name=chkid]\").click(function () {\r\n");
	ViewBuilder.Append("            var $chks = $(\"input[name='chkid']\");\r\n");
	ViewBuilder.Append("            $(\"#checkall\").prop(\"checked\", $chks.length == $chks.filter(\":checked\").length ? true : false);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //删除\r\n");
	ViewBuilder.Append("        $(\"#btn_remove\").click(function () {\r\n");
	ViewBuilder.Append("            if ($(\"input[name=chkid]\").prop(\"checked\")) {\r\n");
	ViewBuilder.Append("                if (confirm(\"你确定要删除吗？\")) {\r\n");
	ViewBuilder.Append("                    $(\"#action\").val(\"remove\");\r\n");
	ViewBuilder.Append("                    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                alert(\"请选择你要删除的项\");\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        //彻底删除\r\n");
	ViewBuilder.Append("        $(\"#btn_delete\").click(function () {\r\n");
	ViewBuilder.Append("            if ($(\"input[name=chkid]\").prop(\"checked\")) {\r\n");
	ViewBuilder.Append("                if (confirm(\"你确定要删除吗？删除之后将无法进行恢复\")) {\r\n");
	ViewBuilder.Append("                    $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                alert(\"请选择你要彻底删除的项\");\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //删除恢复\r\n");
	ViewBuilder.Append("        $(\"#btn_recovery\").click(function () {\r\n");
	ViewBuilder.Append("            if ($(\"input[name=chkid]\").prop(\"checked\")) {\r\n");
	ViewBuilder.Append("                if (confirm(\"你确定要执行恢复操作吗？\")) {\r\n");
	ViewBuilder.Append("                    $(\"#action\").val(\"recovery\");\r\n");
	ViewBuilder.Append("                    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                alert(\"请选择你要执行恢复的项\");\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //标为已读\r\n");
	ViewBuilder.Append("        $(\"#btn_readed\").click(function () {\r\n");
	ViewBuilder.Append("            if ($(\"input[name=chkid]\").prop(\"checked\")) {\r\n");
	ViewBuilder.Append("                if (confirm(\"确定标为已读吗？\")) {\r\n");
	ViewBuilder.Append("                    $(\"#action\").val(\"readed\");\r\n");
	ViewBuilder.Append("                    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                alert(\"请选择你要标为已读的项\");\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //标为办结\r\n");
	ViewBuilder.Append("        $(\"#btn_complete\").click(function () {\r\n");
	ViewBuilder.Append("            if ($(\"input[name=chkid]\").prop(\"checked\")) {\r\n");
	ViewBuilder.Append("                if (confirm(\"确定要标为办结吗？\")) {\r\n");
	ViewBuilder.Append("                    $(\"#action\").val(\"complete\");\r\n");
	ViewBuilder.Append("                    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                alert(\"请选择你要标为办结的项\");\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //标为结束\r\n");
	ViewBuilder.Append("        $(\"#btn_over\").click(function () {\r\n");
	ViewBuilder.Append("            if ($(\"input[name=chkid]\").prop(\"checked\")) {\r\n");
	ViewBuilder.Append("                if (confirm(\"确定要标为结束吗？\")) {\r\n");
	ViewBuilder.Append("                    $(\"#action\").val(\"over\");\r\n");
	ViewBuilder.Append("                    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                alert(\"请选择你要标为结束的项\");\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //查看详情\r\n");
	ViewBuilder.Append("        $('.subject').live('click', function () {\r\n");
	ViewBuilder.Append("            TUtil.openUrl(this.href);\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //搜索\r\n");
	ViewBuilder.Append("        var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("        $(\"#btn_search\").click(function () {\r\n");
	ViewBuilder.Append("            index = $.layer({\r\n");
	ViewBuilder.Append("                type: 1,\r\n");
	ViewBuilder.Append("                shade: [0],\r\n");
	ViewBuilder.Append("                fix: false,\r\n");
	ViewBuilder.Append("                title: '工作搜索',\r\n");
	ViewBuilder.Append("                maxmin: false,\r\n");
	ViewBuilder.Append("                page: { dom: '#showsearch' },\r\n");
	ViewBuilder.Append("                area: ['400px', '273px']\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //取消搜索\r\n");
	ViewBuilder.Append("        $('#btn_cancel').click(function () {\r\n");
	ViewBuilder.Append("            layer.close(index);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //确定搜索\r\n");
	ViewBuilder.Append("        $('#btn_ok').click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"ok\");\r\n");
	ViewBuilder.Append("            $(\"#frmsearch\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");

	if (sortid>0)
	{
	ViewBuilder.Append("        PageNav(\"" + echo(GetSortNav(sortinfo,pagename)) + "\");\r\n");
	}
	else
	{
	ViewBuilder.Append("        PageNav(\"工作管理," + echo(rawpath) + "workmanage.aspx\");\r\n");
	}//end if
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("        <input type=\"hidden\" name=\"action\" id=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("        <table class=\"ntcplist\">\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td colspan=\"2\">\r\n");
	ViewBuilder.Append("                    <div class=\"newslist\">\r\n");
	ViewBuilder.Append("                        <div class=\"newsicon\">\r\n");
	ViewBuilder.Append("                            <ul>\r\n");
	ViewBuilder.Append("                                <li style=\"background: url(" + echo(adminpath) + "statics/images/clear.gif) 2px 6px no-repeat\"><a id=\"btn_remove\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("                                <li style=\"background: url(" + echo(adminpath) + "statics/images/delete.gif) 2px 6px no-repeat\"><a id=\"btn_delete\" href=\"#\">彻底删除</a></li>\r\n");
	ViewBuilder.Append("                                <li style=\"background: url(" + echo(adminpath) + "statics/images/return.gif) 2px 6px no-repeat\"><a id=\"btn_recovery\" href=\"#\">删除恢复</a></li>\r\n");
	ViewBuilder.Append("                                <li style=\"background: url(" + echo(adminpath) + "statics/images/folder.gif) 2px 6px no-repeat\"><a id=\"btn_readed\" href=\"#\">标为已读</a></li>\r\n");
	ViewBuilder.Append("                                <li style=\"background: url(" + echo(adminpath) + "statics/images/copy.gif) 2px 6px no-repeat\"><a id=\"btn_complete\" href=\"#\">标为办结</a></li>\r\n");
	ViewBuilder.Append("                                <li style=\"background: url(" + echo(adminpath) + "statics/images/have.png) 2px 6px no-repeat\"><a id=\"btn_over\" href=\"#\">标为结束</a></li>\r\n");
	ViewBuilder.Append("                                <li style=\"background: url(" + echo(adminpath) + "statics/images/search.png) 2px 6px no-repeat\"><a id=\"btn_search\" href=\"#\">搜索</a></li>\r\n");
	ViewBuilder.Append("                                <li style=\"background: url(" + echo(adminpath) + "statics/images/refresh.gif) 2px 6px no-repeat\"><a id=\"btn_refresh\" href=\"" + echo(pagename) + "?sortid=" + echo(sortid) + "\">刷新</a></li>\r\n");
	ViewBuilder.Append("                                <li style=\"float: right; width: auto\">\r\n");
	ViewBuilder.Append("                                    <strong>\r\n");

	if (sortinfo.id>0)
	{
	ViewBuilder.Append("                                        工作管理->" + echo(sortinfo.name) + "\r\n");
	}
	else
	{
	ViewBuilder.Append("                                        工作管理\r\n");
	}//end if
	ViewBuilder.Append("                                    </strong>\r\n");
	ViewBuilder.Append("                                </li>\r\n");
	ViewBuilder.Append("                            </ul>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td colspan=\"2\">\r\n");
	ViewBuilder.Append("                    <table class=\"datalist\" border=\"1\" rules=\"all\" cellspacing=\"0\">\r\n");
	ViewBuilder.Append("                        <tbody>\r\n");
	ViewBuilder.Append("                            <tr class=\"thead\">\r\n");
	ViewBuilder.Append("                                <td width=\"50\">\r\n");
	ViewBuilder.Append("                                    <input id=\"checkall\" name=\"checkall\" type=\"checkbox\">全选\r\n");
	ViewBuilder.Append("                                </td>\r\n");
	ViewBuilder.Append("                                <td>工作标题</td>\r\n");
	ViewBuilder.Append("                                <td width=\"150\">流程名称</td>\r\n");
	ViewBuilder.Append("                                <td width=\"80\">发起人</td>\r\n");
	ViewBuilder.Append("                                <td width=\"150\">发起时间</td>\r\n");
	ViewBuilder.Append("                                <td width=\"50\">状态</td>\r\n");
	ViewBuilder.Append("                                <td width=\"60\">操作</td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");

	loop__id=0;
	foreach(WorkFlowInfo item in worklist)
	{
	loop__id++;
	ViewBuilder.Append("                            <tr class=\"tlist\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#cbe3f4'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                                <td>\r\n");
	ViewBuilder.Append("                                    <input id=\"chkid\" name=\"chkid\" value=\"" + echo(item.id) + "\" type=\"checkbox\">\r\n");
	ViewBuilder.Append("                                </td>\r\n");
	ViewBuilder.Append("                                <td align=\"left\">\r\n");

	if (item.status==0)
	{
	ViewBuilder.Append("                                    <i class=\"ico-unread\" title=\"未读\"></i>\r\n");
	}
	else if (item.status==1)
	{
	ViewBuilder.Append("                                    <i class=\"ico-read\" title=\"已读\"></i>\r\n");
	}
	else if (item.status==2)
	{
	ViewBuilder.Append("                                    <i class=\"ico-send\" title=\"已办理\"></i>\r\n");
	}//end if

	if (item.type==1)
	{
	ViewBuilder.Append("                                    <a class=\"subject\" href=\"taskview.aspx?id=" + echo(item.id) + "\">" + echo(item.title) + "</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                    <a class=\"subject\" href=\"workview.aspx?id=" + echo(item.id) + "\">" + echo(item.title) + "</a>\r\n");
	}//end if
	ViewBuilder.Append("                                </td>\r\n");
	ViewBuilder.Append("                                <td align=\"center\">" + echo(item.flowname) + "</td>\r\n");
	ViewBuilder.Append("                                <td align=\"center\">" + echo(item.rawname) + "</td>\r\n");
	ViewBuilder.Append("                                <td align=\"center\">" + echo(item.postdatetime,"yyyy-MM-dd HH:mm:dd") + "</td>\r\n");
	ViewBuilder.Append("                                <td align=\"center\">\r\n");

	if (item.isdelete==1)
	{
	ViewBuilder.Append("                                    <span style=\"color: #ff6a00\">已删除</span>\r\n");
	}
	else
	{

	if (item.status==2)
	{
	ViewBuilder.Append("                                    <span style=\"color: #ff6a00\">已办理</span>\r\n");
	}
	else if (item.status==3)
	{
	ViewBuilder.Append("                                    <span style=\"color: #808080\">已结束</span>\r\n");
	}
	else if (item.status==4)
	{
	ViewBuilder.Append("                                    <span style=\"color: #0026ff\">已完成</span>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                    <span style=\"color: #ff0000\">办理中</span>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("                                </td>\r\n");
	ViewBuilder.Append("                                <td>\r\n");

	if (item.type==1)
	{
	ViewBuilder.Append("                                    <a class=\"subject\" href=\"taskview.aspx?id=" + echo(item.id) + "\">查看</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                    <a class=\"subject\" href=\"workview.aspx?id=" + echo(item.id) + "\">查看</a>\r\n");
	}//end if
	ViewBuilder.Append("                                </td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");
	}//end loop
	ViewBuilder.Append("                        </tbody>\r\n");
	ViewBuilder.Append("                    </table>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td align=\"left\">共有" + echo(pager.total) + "条记录，页次：" + echo(pager.pageindex) + "/" + echo(pager.pagecount) + "，" + echo(pager.pagesize) + "条每页</td>\r\n");
	ViewBuilder.Append("                <td align=\"right\">\r\n");
	ViewBuilder.Append("                    <div class=\"pages\">" + echo(pager.pagenum) + "</div>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("    <div id=\"showsearch\" style=\"display: none\">\r\n");
	ViewBuilder.Append("        <form id=\"frmsearch\" method=\"get\" name=\"frmsearch\" action=\"\">\r\n");
	ViewBuilder.Append("            <input type=\"hidden\" name=\"sortid\" id=\"sortid\" value=\"" + echo(sortid) + "\">\r\n");
	ViewBuilder.Append("            <table style=\"width: 400px; height: 163px;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("                <tbody>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td style=\"width: 80px; text-align: right;\">工作标题： </td>\r\n");
	ViewBuilder.Append("                        <td align=\"left\">\r\n");
	ViewBuilder.Append("                            <input name=\"title\" type=\"text\" value=\"" + echo(title) + "\" id=\"title\" style=\"height: 21px; width: 250px;\"></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td style=\"width: 80px; text-align: right;\">发起人： </td>\r\n");
	ViewBuilder.Append("                        <td align=\"left\">\r\n");
	ViewBuilder.Append("                            <input name=\"author\" type=\"text\" value=\"" + echo(author) + "\" id=\"author\" style=\"height: 21px; width: 250px;\"></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td height=\"80\" colspan=\"2\" align=\"center\">\r\n");
	ViewBuilder.Append("                            <input type=\"button\" name=\"btnok\" value=\"确定\" id=\"btn_ok\" class=\"adminsubmit_short\">&nbsp;&nbsp;\r\n");
	ViewBuilder.Append("                            <input type=\"button\" name=\"btnback\" value=\"取消\" id=\"btn_cancel\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("        </form>\r\n");
	ViewBuilder.Append("    </div>\r\n");
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
