<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Leave.Controller.leave_list" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Leave" %>
<%@ Import namespace="FP_WorkFlow.Model" %>
<%@ Import namespace="FP_Flow.Model" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!--[if IE]>\r\n");
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("    <title>待办请假申请</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("    <meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-datepicker.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.bootbox.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.notify.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-prompts.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modal.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modalmanager.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "ba-bbq/jquery.ba-bbq.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "pager/pager.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/search.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/sidebar.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        function update() {\r\n");
	ViewBuilder.Append("            window.location.href = '" + echo(pageurl) + "';\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("    <div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("        <div>\r\n");
	ViewBuilder.Append("            <!--侧边栏-->\r\n");
	ViewBuilder.Append("<div class=\"sidebar\" style=\"height: 780px; overflow-y: hidden; outline: none;\" tabindex=\"5001\">\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_logo T_icon\"><img src=\"" + echo(setupinfo.icon) + "\" style=\"width:64px;height:64px;\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_content T_bg\" style=\"padding-top:10px;\">\r\n");
	ViewBuilder.Append("    <ul id=\"news_menu\" class=\"nav nav-list\">\r\n");

	if (isperm)
	{
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="leave_add.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"leave_add.aspx?flowid=" + echo(leave_flowid) + "\"><i class=\"icon-pencil-2\"></i>新建请假申请</a></li>\r\n");
	}//end if
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="leave_inbox.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"leave_inbox.aspx\"><i class=\"icon-clock-3\"></i>待办请假申请<span class=\"badge badge-important pull-right\">" + echo(countinfo.count) + "</span></a></li>\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="leave_list.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"leave_list.aspx\"><i class=\"icon-file\"></i>已办请假申请</a></li>\r\n");
	ViewBuilder.Append("    </ul>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_buttons\"> </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("            <!--导航栏-->\r\n");
	ViewBuilder.Append("            <div style=\"margin-left: 180px\">\r\n");
	ViewBuilder.Append("                <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("                    <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("                        <tbody>\r\n");
	ViewBuilder.Append("                            <tr>\r\n");
	ViewBuilder.Append("                                <td><span class=\"td-nav-title\">待办请假申请</span></td>\r\n");
	ViewBuilder.Append("                                <td></td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");
	ViewBuilder.Append("                        </tbody>\r\n");
	ViewBuilder.Append("                    </table>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <form id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("                <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                <input id=\"delid\" name=\"delid\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                <div class=\"content\" style=\"margin-left: 180px; height: 740px; overflow: hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("                    <div style=\"padding: 5px 10px;\">\r\n");
	ViewBuilder.Append("                        <div id=\"news-grid\" class=\"grid-view\">\r\n");
	ViewBuilder.Append("                            <div class=\"toolbar\">\r\n");
	ViewBuilder.Append("                                <div style=\"width: 500px; float: left; margin-top: 5px;\">\r\n");
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("<div class=\"pull-right\">\r\n");
	ViewBuilder.Append("    <div style=\"float:left;display:inline-block;margin-right:8px;height:30px;line-height:30px;\">共" + echo(pager.total) + "条</div>\r\n");
	ViewBuilder.Append("    <div class=\"fpager\">\r\n");
	ViewBuilder.Append("        <div class=\"fpager-pages\">\r\n");
	ViewBuilder.Append("        <ul>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-prev\"><a href=\"" + seturl("pageindex="+pager.prepage)+ "\" title=\"上一页\">«</a></li>\r\n");

	if (pager.startpage>2)
	{
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex=1")+ "\">1</a></li>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-ellipsis disabled\"><a>...</a></li>\r\n");
	}//end if
	for (int i = pager.startpage; i <= pager.endpage; i++){

	if (i==pager.pageindex)
	{
	ViewBuilder.Append("            <li class=\"fpager-page active\"><a href=\"" + seturl("pageindex="+i)+ "\">" + echo(i) + "</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex="+i)+ "\">" + echo(i) + "</a></li>\r\n");
	}//end if
	}//end for

	if (pager.endpage<pager.pagecount-2)
	{
	ViewBuilder.Append("            <li class=\"fpager-ellipsis disabled\"><a>...</a></li>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex="+pager.pagecount)+ "\">" + echo(pager.pagecount) + "</a></li>\r\n");
	}//end if
	ViewBuilder.Append("            <li class=\"fpager-next\"><a href=\"" + seturl("pageindex="+pager.nextpage)+ "\" title=\"下一页\">»</a></li>\r\n");
	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <table class=\"items table table-bordered\">\r\n");
	ViewBuilder.Append("                                <thead>\r\n");
	ViewBuilder.Append("                                    <tr>\r\n");
	ViewBuilder.Append("                                        <th style=\"text-align:center;\" class=\"ellipsis\">请假标题</th>\r\n");
	ViewBuilder.Append("                                        <th style=\"text-align: center; width: 100px;\">请假类型</th>\r\n");
	ViewBuilder.Append("                                        <th style=\"width: 140px; text-align: center;\">开始时间</th>\r\n");
	ViewBuilder.Append("                                        <th style=\"width: 140px; text-align: center;\">结束时间</th>\r\n");
	ViewBuilder.Append("                                        <th style=\"width: 155px; text-align: center;\">操作</th>\r\n");
	ViewBuilder.Append("                                    </tr>\r\n");
	ViewBuilder.Append("                                </thead>\r\n");
	ViewBuilder.Append("                                <tbody class=\"tbl\">\r\n");

	loop__id=0;
	foreach(WorkFlowInfo item in leavelist)
	{
	loop__id++;
	ViewBuilder.Append("                                    <tr class=\""+(loop__id%2==0?"odd":"even")+"\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#e2f9de'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                                        <td class=\"ellipsis\">\r\n");
	ViewBuilder.Append("                                            <a title=\"" + echo(item.title) + "\" class=\"subject\" target=\"_blank\" href=\"workview.aspx?id=" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("                                                <img src=\"statics/images/email_open_image.png\" style=\"vertical-align: text-bottom; margin-right: 3px;\">" + echo(item.title) + "</a>\r\n");
	ViewBuilder.Append("                                        </td>\r\n");
	ViewBuilder.Append("                                        <td class=\"ellipsis\">\r\n");
	ViewBuilder.Append("                                            <a title=\"\" rel=\"tooltip\" class=\"subject\" target=\"_blank\" href=\"workview.aspx?id=" + echo(item.id) + "\" data-original-title=\"第" + echo(item.step) + "步：主办\">第" + echo(item.step) + "步：主办</a>\r\n");
	ViewBuilder.Append("                                        </td>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: center;\">" + echo(item.postdatetime,"yyyy-MM-dd HH:mm") + "</td>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: center;\">" + echo(item.postdatetime,"yyyy-MM-dd HH:mm") + "</td>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: center;\">\r\n");

	if (item.uid==userid)
	{
	ViewBuilder.Append("                                            <a class=\"delete td-link-icon\" href=\"javascript:void();\" data=\"" + echo(item.id) + "\"><i class=\"icon-remove\"></i>删除</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                            <span style=\"color: #dcdbdb\"><i class=\"icon-remove\"></i>删除</span>\r\n");
	}//end if
	ViewBuilder.Append("                                        </td>\r\n");
	ViewBuilder.Append("                                    </tr>\r\n");
	}//end loop
	ViewBuilder.Append("                                </tbody>\r\n");
	ViewBuilder.Append("                            </table>\r\n");
	ViewBuilder.Append("                            <div class=\"toolbar\">\r\n");
	ViewBuilder.Append("<div class=\"pull-right\">\r\n");
	ViewBuilder.Append("    <div style=\"float:left;display:inline-block;margin-right:8px;height:30px;line-height:30px;\">共" + echo(pager.total) + "条</div>\r\n");
	ViewBuilder.Append("    <div class=\"fpager\">\r\n");
	ViewBuilder.Append("        <div class=\"fpager-pages\">\r\n");
	ViewBuilder.Append("        <ul>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-prev\"><a href=\"" + seturl("pageindex="+pager.prepage)+ "\" title=\"上一页\">«</a></li>\r\n");

	if (pager.startpage>2)
	{
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex=1")+ "\">1</a></li>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-ellipsis disabled\"><a>...</a></li>\r\n");
	}//end if
	for (int i = pager.startpage; i <= pager.endpage; i++){

	if (i==pager.pageindex)
	{
	ViewBuilder.Append("            <li class=\"fpager-page active\"><a href=\"" + seturl("pageindex="+i)+ "\">" + echo(i) + "</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex="+i)+ "\">" + echo(i) + "</a></li>\r\n");
	}//end if
	}//end for

	if (pager.endpage<pager.pagecount-2)
	{
	ViewBuilder.Append("            <li class=\"fpager-ellipsis disabled\"><a>...</a></li>\r\n");
	ViewBuilder.Append("            <li class=\"fpager-page\"><a href=\"" + seturl("pageindex="+pager.pagecount)+ "\">" + echo(pager.pagecount) + "</a></li>\r\n");
	}//end if
	ViewBuilder.Append("            <li class=\"fpager-next\"><a href=\"" + seturl("pageindex="+pager.nextpage)+ "\" title=\"下一页\">»</a></li>\r\n");
	ViewBuilder.Append("        </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </form>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.datepicker.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-datepicker.zh-CN.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            var windows = $(\".windows\", parent.document);\r\n");
	ViewBuilder.Append("            for (var i = 0; i < windows.length; i++) {\r\n");
	ViewBuilder.Append("                var win = windows[i];\r\n");
	ViewBuilder.Append("                var win_id = $(win).attr(\"id\");\r\n");
	ViewBuilder.Append("                if (win_id.indexOf('app_workflow') != -1) {\r\n");
	ViewBuilder.Append("                    $(win).find(\".win_title .title\").html('公文办理 -> 待办理公文')\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            $('[rel=tooltip]').tooltip({ 'container': 'body', 'template': '<div class=\\\"tooltip\\\"><div class=\\\"tooltip-shadow\\\"><div class=\\\"tooltip-container\\\"><div class=\\\"tooltip-arrow\\\"><em><\\/em><span><\\/span><\\/div><div class=\\\"tooltip-inner\\\"><\\/div><\\/div><\\/div><\\/div>', 'animation': false });\r\n");
	ViewBuilder.Append("            $('#startdate').datepicker({ 'dateFormat': 'yy-mm-dd', 'language': 'zh-CN', 'format': 'yyyy-mm-dd', 'weekStart': 1 });\r\n");
	ViewBuilder.Append("            $('#enddate').datepicker({ 'dateFormat': 'yy-mm-dd', 'language': 'zh-CN', 'format': 'yyyy-mm-dd', 'weekStart': 1 });\r\n");
	ViewBuilder.Append("            //打开高组搜索\r\n");
	ViewBuilder.Append("            $(\"#btnadv\").click(function () {\r\n");
	ViewBuilder.Append("                $(\"#advSearchModal\").modal(\"show\");\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            //关闭高级搜索\r\n");
	ViewBuilder.Append("            $(\"#btnclose\").click(function () {\r\n");
	ViewBuilder.Append("                $(\"#advSearchModal\").modal('hide');\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $('.subject').live('click', function () {\r\n");
	ViewBuilder.Append("                TUtil.openUrl(this.href);\r\n");
	ViewBuilder.Append("                return false;\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            //删除工作\r\n");
	ViewBuilder.Append("            $('#news-grid a.delete.td-link-icon').click(function () {\r\n");
	ViewBuilder.Append("                var cid = $(this).attr(\"data\");\r\n");
	ViewBuilder.Append("                window.confirm('确定要删除吗?删除后将无法恢复。', function (ret) {\r\n");
	ViewBuilder.Append("                    if (ret == false) return;\r\n");
	ViewBuilder.Append("                    $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                    $(\"#delid\").val(cid);\r\n");
	ViewBuilder.Append("                    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $('#expandBtn').click(function () {\r\n");
	ViewBuilder.Append("                if ($(this).find('i').hasClass('icon-arrow-up')) {\r\n");
	ViewBuilder.Append("                    $(this).html('展开<i class=\"icon-arrow-down\"></i>');\r\n");
	ViewBuilder.Append("                    $('#advanced_from').find('tbody').hide();\r\n");
	ViewBuilder.Append("                } else {\r\n");
	ViewBuilder.Append("                    $(this).html('收起<i class=\"icon-arrow-up\"></i>');\r\n");
	ViewBuilder.Append("                    $('#advanced_from').find('tbody').show();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(window).resize(function () {\r\n");
	ViewBuilder.Append("                var height = $(window).height();\r\n");
	ViewBuilder.Append("                $(\".sidebar\").height(height);\r\n");
	ViewBuilder.Append("                if ($(\".td-nav\").length > 0) {\r\n");
	ViewBuilder.Append("                    $(\".content\").height(height - $(\".td-nav\").height());\r\n");
	ViewBuilder.Append("                } else {\r\n");
	ViewBuilder.Append("                    $(\".content\").height(height);\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("            $(\".content\").niceScroll({ cursorcolor: \"#ccc\", cursoropacitymin: 1, cursorwidth: 8 });\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
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
