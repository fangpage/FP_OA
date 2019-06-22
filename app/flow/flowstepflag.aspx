<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Flow.Controller.flowstepflag" %>
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
	ViewBuilder.Append("    <title>步骤经办权限</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("    <meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.min.css\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(adminpath) + "statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(adminpath) + "statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <link href=\"../css/datagrid.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" href=\"" + echo(plupath) + "ztree/zTreeStyle.css\" type=\"text/css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.core-3.5.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.excheck-3.5.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("    <script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(adminpath) + "statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        var setting = {\r\n");
	ViewBuilder.Append("            view: {\r\n");
	ViewBuilder.Append("                dblClickExpand: true,\r\n");
	ViewBuilder.Append("                showLine: true,\r\n");
	ViewBuilder.Append("                selectedMulti: false\r\n");
	ViewBuilder.Append("            },\r\n");
	ViewBuilder.Append("            check: {\r\n");
	ViewBuilder.Append("                enable: true,\r\n");
	ViewBuilder.Append("                chkboxType :  { \"Y\" : \"s\", \"N\" : \"s\" }\r\n");
	ViewBuilder.Append("            },\r\n");
	ViewBuilder.Append("            data: {\r\n");
	ViewBuilder.Append("                simpleData: {\r\n");
	ViewBuilder.Append("                    enable: true,\r\n");
	ViewBuilder.Append("                    idKey: \"id\",\r\n");
	ViewBuilder.Append("                    pIdKey: \"pId\",\r\n");
	ViewBuilder.Append("                    rootPId: \"\"\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        };\r\n");
	ViewBuilder.Append("        var zNodes = [\r\n");
	ViewBuilder.Append("            " + echo(zNodes) + "\r\n");
	ViewBuilder.Append("        ];\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            PageNav(\"" + echo(GetSortNav(sortinfo,pagename)) + "|步骤经办权限," + echo(rawurl) + "\");\r\n");
	ViewBuilder.Append("            var h = 390;\r\n");
	ViewBuilder.Append("            $(\"#table\").height(h);\r\n");
	ViewBuilder.Append("            $(\"#tree\").height(h - 40);\r\n");
	ViewBuilder.Append("            var zTree=$.fn.zTree.init($(\"#tree\"), setting, zNodes);\r\n");
	ViewBuilder.Append("            GetDepartName();\r\n");
	ViewBuilder.Append("            $.post(\"userajax.aspx\", {\r\n");
	ViewBuilder.Append("                users: '" + echo(flowstepinfo.users) + "'\r\n");
	ViewBuilder.Append("            }, function (data) {\r\n");
	ViewBuilder.Append("                $(\"#usernames\").html(data.uname);\r\n");
	ViewBuilder.Append("            }, \"json\");\r\n");
	ViewBuilder.Append("            $(\"#btncancle\").click(function () {\r\n");
	ViewBuilder.Append("                window.location.href = \"flowsteplist.aspx?flowid=" + echo(flowid) + "\";\r\n");
	ViewBuilder.Append("            })\r\n");
	ViewBuilder.Append("            var index1 = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("            $(\"#btndepartsearch\").click(function () {\r\n");
	ViewBuilder.Append("                index1 = $.layer({\r\n");
	ViewBuilder.Append("                    type: 1,\r\n");
	ViewBuilder.Append("                    shade: [0],\r\n");
	ViewBuilder.Append("                    title: '选择经办部门',\r\n");
	ViewBuilder.Append("                    maxmin: false,\r\n");
	ViewBuilder.Append("                    area: ['500px', '440px'],\r\n");
	ViewBuilder.Append("                    page: { dom: '#showdepart' }\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(\"#btncleardepart\").click(function () {\r\n");
	ViewBuilder.Append("                zTree.checkAllNodes(false);\r\n");
	ViewBuilder.Append("                $(\"#departname\").html(\"\");\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $('#btnclose').click(function () {\r\n");
	ViewBuilder.Append("                layer.close(index1);\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $('#btnok').click(function () {\r\n");
	ViewBuilder.Append("                GetDepartName();\r\n");
	ViewBuilder.Append("                layer.close(index1);\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $('#btnsave').click(function () {\r\n");
	ViewBuilder.Append("                GetCheckedAll();\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            var index = layer.getFrameIndex(window.name);\r\n");
	ViewBuilder.Append("            $('#btnusers').click(function(){\r\n");
	ViewBuilder.Append("                index=$.layer({\r\n");
	ViewBuilder.Append("                    type: 2,\r\n");
	ViewBuilder.Append("                    shade: [0],\r\n");
	ViewBuilder.Append("                    fix: false,\r\n");
	ViewBuilder.Append("                    title: '选择经办用户',\r\n");
	ViewBuilder.Append("                    maxmin: false,\r\n");
	ViewBuilder.Append("                    iframe: {src : 'userselect.aspx?users='+$(\"#users\").val()},\r\n");
	ViewBuilder.Append("                    area: ['500px' , '480px']\r\n");
	ViewBuilder.Append("                }); \r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(\"#btnclearuser\").click(function () {\r\n");
	ViewBuilder.Append("                $(\"#usernames\").html(\"\");\r\n");
	ViewBuilder.Append("                $(\"#users\").val(\"\");\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        function GetDepartName()\r\n");
	ViewBuilder.Append("        {\r\n");
	ViewBuilder.Append("            var treeObj = $.fn.zTree.getZTreeObj(\"tree\");\r\n");
	ViewBuilder.Append("            var nodes = treeObj.getCheckedNodes(true);\r\n");
	ViewBuilder.Append("            var msg = '';\r\n");
	ViewBuilder.Append("            for (var i = 0; i < nodes.length; i++) {\r\n");
	ViewBuilder.Append("                if(nodes[i].id!='')\r\n");
	ViewBuilder.Append("                {\r\n");
	ViewBuilder.Append("                    if(msg!='')\r\n");
	ViewBuilder.Append("                    {\r\n");
	ViewBuilder.Append("                        msg+=',';\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                    msg += nodes[i].name;\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            $(\"#departname\").html(msg);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        function GetCheckedAll() {\r\n");
	ViewBuilder.Append("            var treeObj = $.fn.zTree.getZTreeObj(\"tree\");\r\n");
	ViewBuilder.Append("            var nodes = treeObj.getCheckedNodes(true);\r\n");
	ViewBuilder.Append("            var msg = '';\r\n");
	ViewBuilder.Append("            for (var i = 0; i < nodes.length; i++) {\r\n");
	ViewBuilder.Append("                if(nodes[i].id!='')\r\n");
	ViewBuilder.Append("                {\r\n");
	ViewBuilder.Append("                    if(msg!='')\r\n");
	ViewBuilder.Append("                    {\r\n");
	ViewBuilder.Append("                        msg+=',';\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                    msg += nodes[i].id;\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            $(\"#departs\").val();\r\n");
	ViewBuilder.Append("            $(\"#departs\").val(msg);\r\n");
	ViewBuilder.Append("        }\r\n");
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
	ViewBuilder.Append("                    <li class=\"active\"><a href=\"flowstepflag.aspx?stepid=" + echo(stepid) + "\">经办权限</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepitem.aspx?stepid=" + echo(stepid) + "\">主办字段</a> </li>\r\n");
	ViewBuilder.Append("                    <li class=\"normal\"><a href=\"flowstepsubitem.aspx?stepid=" + echo(stepid) + "\">协办字段</a></li>\r\n");
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
	ViewBuilder.Append("                                <td class=\"newstitle\" bgcolor=\"#ffffff\">步骤经办权限：" + echo(flowstepinfo.name) + "</td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");
	ViewBuilder.Append("                        </tbody>\r\n");
	ViewBuilder.Append("                    </table>\r\n");
	ViewBuilder.Append("                    <table style=\"width:100%;\" cellpadding=\"2\" cellspacing=\"1\" class=\"border\">\r\n");
	ViewBuilder.Append("                    <tbody>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td class=\"td_class\">经办角色： </td>\r\n");
	ViewBuilder.Append("                        <td height=\"25\">\r\n");

	loop__id=0;
	foreach(RoleInfo roles in rolelist)
	{
	loop__id++;

	if (roles.id!=2&&roles.id!=3&&roles.id!=4)
	{
	ViewBuilder.Append("                            <input id=\"roles\" name=\"roles\" value=\"" + echo(roles.id) + "\" "+(FPUtils.IsContain(roles.id,flowstepinfo.roles)?"checked":"")+" type=\"checkbox\">" + echo(roles.name) + "\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td class=\"td_class\">经办部门： </td>\r\n");
	ViewBuilder.Append("                        <td height=\"25\">\r\n");
	ViewBuilder.Append("                            <input id=\"departs\" type=\"hidden\" name=\"departs\" value=\"\">\r\n");
	ViewBuilder.Append("                            <span id=\"departname\"></span>&nbsp;\r\n");
	ViewBuilder.Append("                            <span style=\"cursor:pointer;\" id=\"btndepartsearch\" class=\"label label-danger\">选择部门</span>&nbsp;<span style=\"cursor:pointer;\" id=\"btncleardepart\" class=\"label label-warning\">清空</span>\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td class=\"td_class\">经办岗位： </td>\r\n");
	ViewBuilder.Append("                        <td height=\"25\">\r\n");

	loop__id=0;
	foreach(GradeInfo item in gradelist)
	{
	loop__id++;
	ViewBuilder.Append("                              <input id=\"grades\" name=\"grades\" value=\"" + echo(item.id) + "\" "+(FPUtils.IsContain(item.id,flowstepinfo.grades)?"checked":"")+" type=\"checkbox\">" + echo(item.name) + "\r\n");
	}//end loop
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td class=\"td_class\">经办人员： </td>\r\n");
	ViewBuilder.Append("                        <td height=\"25\">\r\n");
	ViewBuilder.Append("                            <input id=\"rawuser\" name=\"rawuser\" value=\"1\" "+(flowstepinfo.rawuser==1?"checked":"")+" type=\"checkbox\">发始人\r\n");
	ViewBuilder.Append("                            <input id=\"users\" name=\"users\" value=\"" + echo(flowstepinfo.users) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                            <span id=\"usernames\"></span>&nbsp;\r\n");
	ViewBuilder.Append("                            <span style=\"cursor:pointer;\" id=\"btnusers\" class=\"label label-danger\">选择人员</span>&nbsp;<span style=\"cursor:pointer;\" id=\"btnclearuser\" class=\"label label-warning\">清空</span>\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                        <td height=\"25\">\r\n");
	ViewBuilder.Append("                            <input id=\"btnsave\" name=\"btnsave\" value=\"保存\" type=\"button\" class=\"btn btn-danger\">\r\n");
	ViewBuilder.Append("                            <input id=\"btncancle\" class=\"btn btn-primary\" name=\"btncancle\" value=\"返回\" type=\"button\">\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("                </table>\r\n");
	ViewBuilder.Append("        </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </td>\r\n");
	ViewBuilder.Append("    </tr>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    <div id=\"showdepart\" style=\"display:none\">\r\n");
	ViewBuilder.Append("     <table id=\"table\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" style=\"width: 485px; margin: 0px;\">\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("            <td style=\"width: 485px; border: solid 1px #93C7D4; vertical-align: top;\">\r\n");
	ViewBuilder.Append("                <ul id=\"tree\" class=\"ztree\" style=\"width: 485px; overflow: auto;\"></ul>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td height=\"25\" align=\"right\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnok\" value=\"确定\" id=\"btnok\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            <input type=\"button\" name=\"btnclose\" value=\"关闭\" id=\"btnclose\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("	</div>\r\n");
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
