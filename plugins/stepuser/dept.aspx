<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_StepUser.dept" %>
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
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/menu_left.css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"js/hover_tr.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        var $ = function (id) { return document.getElementById(id); };\r\n");
	ViewBuilder.Append("        var CUR_ID = \"3\";\r\n");
	ViewBuilder.Append("        function clickMenu(ID) {\r\n");
	ViewBuilder.Append("            var el = document.getElementById(\"module_\" + CUR_ID);\r\n");
	ViewBuilder.Append("            var link = $(\"link_\" + CUR_ID);\r\n");
	ViewBuilder.Append("            if (ID == CUR_ID) {\r\n");
	ViewBuilder.Append("                if (el.style.display == \"none\") {\r\n");
	ViewBuilder.Append("                    el.style.display = '';\r\n");
	ViewBuilder.Append("                    link.className = \"active\";\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                else {\r\n");
	ViewBuilder.Append("                    el.style.display = \"none\";\r\n");
	ViewBuilder.Append("                    link.className = \"\";\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else {\r\n");
	ViewBuilder.Append("                el.style.display = \"none\";\r\n");
	ViewBuilder.Append("                link.className = \"\";\r\n");
	ViewBuilder.Append("                $(\"module_\" + ID).style.display = \"\";\r\n");
	ViewBuilder.Append("                $(\"link_\" + ID).className = \"active\";\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            CUR_ID = ID;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        function select_user(INTEL) {\r\n");
	ViewBuilder.Append("            parent.user.location = 'selectuser.aspx?intel=' + INTEL + '&stepid=" + echo(stepid) + "&workid=" + echo(workid) + "';\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        var ctroltime = null, key = \"\";\r\n");
	ViewBuilder.Append("        function CheckSend() {\r\n");
	ViewBuilder.Append("            var kword = $(\"kword\");\r\n");
	ViewBuilder.Append("            if (kword.value == \"按用户名或姓名搜索...\")\r\n");
	ViewBuilder.Append("                kword.value = \"\";\r\n");
	ViewBuilder.Append("            if (kword.value == \"\" && $('search_icon').src.indexOf(\"images/quicksearch.gif\") == -1) {\r\n");
	ViewBuilder.Append("                $('search_icon').src = \"images/quicksearch.gif\";\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            if (key != kword.value && kword.value != \"\") {\r\n");
	ViewBuilder.Append("                key = kword.value;\r\n");
	ViewBuilder.Append("                parent.user.location = \"selectuser.aspx?stepid=" + echo(stepid) + "&workid=" + echo(workid) + "&keyword=\" + kword.value;\r\n");
	ViewBuilder.Append("                if ($('search_icon').src.indexOf(\"images/quicksearch.gif\") >= 0) {\r\n");
	ViewBuilder.Append("                    $('search_icon').src = \"images/closesearch.gif\";\r\n");
	ViewBuilder.Append("                    $('search_icon').title = \"清除关键字\";\r\n");
	ViewBuilder.Append("                    $('search_icon').onclick = function () { kword.value = '按用户名或姓名搜索...'; $('search_icon').src = \"images/quicksearch.gif\"; $('search_icon').title = \"\"; $('search_icon').onclick = null; };\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            ctroltime = setTimeout(CheckSend, 100);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <style type=\"text/css\">\r\n");
	ViewBuilder.Append("        .search {\r\n");
	ViewBuilder.Append("            background: #f3f3f3;\r\n");
	ViewBuilder.Append("            line-height: 30px;\r\n");
	ViewBuilder.Append("            border: 1px #ddd solid;\r\n");
	ViewBuilder.Append("            border-bottom: 0px;\r\n");
	ViewBuilder.Append("            margin-top: 5px;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("            .search input {\r\n");
	ViewBuilder.Append("                margin-left: 3px;\r\n");
	ViewBuilder.Append("                border: 0px;\r\n");
	ViewBuilder.Append("                color: #A0A0A0;\r\n");
	ViewBuilder.Append("                width: 142px;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            .search img {\r\n");
	ViewBuilder.Append("                cursor: pointer;\r\n");
	ViewBuilder.Append("                margin-left: 5px;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("    </style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body class=\"bodycolor\" style=\"padding-top: 0px;\">\r\n");
	ViewBuilder.Append("    <div class=\"search\">\r\n");
	ViewBuilder.Append("        <input type=\"text\" id=\"kword\" name=\"kword\" value=\"按用户名或姓名搜索...\" onfocus=\"ctroltime=setTimeout(CheckSend,100);\" onblur=\"clearTimeout(ctroltime);if(this.value=='')this.value='按用户名或姓名搜索...';\" class=\"SmallInput\">\r\n");
	ViewBuilder.Append("        <img id=\"search_icon\" src=\"images/quicksearch.gif\" align=\"absmiddle\">\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <ul>\r\n");
	ViewBuilder.Append("        <li><a href=\"javascript:select_user('1');\" id=\"link_1\"><span>全部经办人</span></a></li>\r\n");
	ViewBuilder.Append("        <li><a href=\"javascript:clickMenu('3');\" id=\"link_3\" class=\"active\" title=\"点击伸缩列表\"><span>按部门选择</span></a></li>\r\n");
	ViewBuilder.Append("        <div id=\"module_3\" class=\"moduleContainer\">\r\n");
	ViewBuilder.Append("            <table width=\"100%\">\r\n");
	ViewBuilder.Append("                <tbody>\r\n");

	if (isdepart)
	{
	ViewBuilder.Append("                    <tr class=\"TableHeader\">\r\n");
	ViewBuilder.Append("                        <td align=\"center\" style=\"cursor: pointer\" onclick=\"parent.user.location='selectuser.aspx?deptid=" + echo(departid) + "&workid=" + echo(workid) + "&stepid=" + echo(stepid) + "'\"><b>本部门</b></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	}//end if

	loop__id=0;
	foreach(Department item in departlist)
	{
	loop__id++;
	ViewBuilder.Append("                    <tr class=\"TableHeader\">\r\n");
	ViewBuilder.Append("                        <td align=\"center\" style=\"cursor: pointer\" onclick=\"parent.user.location='selectuser.aspx?deptid=" + echo(item.id) + "&workid=" + echo(workid) + "&stepid=" + echo(stepid) + "'\"><b>" + echo(item.name) + "</b></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	}//end loop
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <li><a href=\"javascript:clickMenu('4')\" id=\"link_4\"><span>按岗位选择</span></a></li>\r\n");
	ViewBuilder.Append("        <div id=\"module_4\" class=\"moduleContainer\">\r\n");
	ViewBuilder.Append("            <table width=\"100%\">\r\n");
	ViewBuilder.Append("                <tbody>\r\n");

	loop__id=0;
	foreach(GradeInfo item in gradelist)
	{
	loop__id++;
	ViewBuilder.Append("                    <tr class=\"TableHeader\">\r\n");
	ViewBuilder.Append("                        <td align=\"center\" style=\"cursor: pointer\" onclick=\"parent.user.location='selectuser.aspx?gradeid=" + echo(item.id) + "&workid=" + echo(workid) + "&stepid=" + echo(stepid) + "'\"><b>" + echo(item.name) + "</b></td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	}//end loop
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </ul>\r\n");
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
