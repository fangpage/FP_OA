<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_WorkFlow.Controller.workdraft" %>
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
	ViewBuilder.Append("<!--[if IE]>\r\n");
	ViewBuilder.Append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\">\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("    <title>新建工作类型表</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("    <meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.min.css\">\r\n");
	ViewBuilder.Append("    <link href=\"/css/bootstrap-theme.min.css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("    <!--[if lte IE 6]>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-ie6.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/ie.css\">\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-yii.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
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
	ViewBuilder.Append("    <!--[if lte IE 6]>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-ie.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "ba-bbq/jquery.ba-bbq.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/pager.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/draft.css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            $(window).resize(function () {\r\n");
	ViewBuilder.Append("                var height = $(window).height();\r\n");
	ViewBuilder.Append("                $(\"#container-scroller\").height(height - $('#page-navbar').outerHeight());\r\n");
	ViewBuilder.Append("                $(\"#container-scroller\").niceScroll({ cursorcolor: \"#ccc\", cursoropacitymin: 1, cursorwidth: 8 });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        function update() {\r\n");
	ViewBuilder.Append("            window.location.href = '" + echo(pageurl) + "';\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("    <div id=\"page-navbar\">\r\n");
	ViewBuilder.Append("        <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("            <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("                <tbody>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td><span class=\"td-nav-title\">新建公文类型表</span></td>\r\n");
	ViewBuilder.Append("                        <td>\r\n");
	ViewBuilder.Append("                            <div class=\"pull-right\">\r\n");
	ViewBuilder.Append("                                <form style=\"margin: 0; margin-right: 5px;\" class=\"form-search\" action=\"\" method=\"get\">\r\n");
	ViewBuilder.Append("                                    <input class=\"search-query\" placeholder=\"工作类型名称\" style=\"margin-right: 5px;\" name=\"keyword\" id=\"keyword\" type=\"text\" value=\"" + echo(keyword) + "\">\r\n");
	ViewBuilder.Append("                                    <button class=\"btn btn-primary\" id=\"btn_search\" type=\"submit\" name=\"btn_search\">搜索</button>\r\n");
	ViewBuilder.Append("                                </form>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div id=\"container-scroller\" style=\"height: 739px; overflow: hidden; outline: none;\">\r\n");
	ViewBuilder.Append("        <div style=\"padding: 5px 10px;\">\r\n");
	ViewBuilder.Append("            <div class=\"list-view\">\r\n");
	ViewBuilder.Append("                <div class=\"items\">\r\n");

	loop__id=0;
	foreach(FlowInfo item in flowlist)
	{
	loop__id++;
	ViewBuilder.Append("                    <div class=\"view\">\r\n");
	ViewBuilder.Append("                        <div class=\"view-item\">\r\n");
	ViewBuilder.Append("                            <div class=\"view-item-left\">\r\n");
	ViewBuilder.Append("                                <h4 class=\"ellipsis\" style=\"color: #428bca;\">\r\n");

	if (item.type==1)
	{
	ViewBuilder.Append("                                    <a class=\"subject\" style=\"text-decoration: none\" title=\"" + echo(item.name) + "\" href=\"taskadd.aspx?flowid=" + echo(item.id) + "\">" + echo(item.name) + "</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                    <a style=\"text-decoration: none\" title=\"" + echo(item.name) + "\" href=\"workadd.aspx?flowid=" + echo(item.id) + "\">" + echo(item.name) + "</a>\r\n");
	}//end if
	ViewBuilder.Append("                                </h4>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"view-item-center pull-left\">\r\n");

	if (item.formid>0&&item.type==0)
	{
	ViewBuilder.Append("                                <a class=\"view-item-link\" href=\"" + echo(apppath) + "form/formpreview.aspx?id=" + echo(item.formid) + "\" title=\"点击查看表单模板\"><i class=\"icon-table\"></i>查看表单</a>\r\n");
	}//end if

	if (item.steps>1&&item.type==0)
	{
	ViewBuilder.Append("                                <a class=\"view-item-link\" href=\"" + echo(apppath) + "flow/flowpreview.aspx?id=" + echo(item.id) + "\" title=\"点击查看流程设计图\"><i class=\"icon-network\"></i>查看流程</a>\r\n");
	}//end if
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"view-item-right\">\r\n");

	if (item.type==1)
	{
	ViewBuilder.Append("                                <a class=\"subject btn btn-success\" href=\"taskadd.aspx?flowid=" + echo(item.id) + "\">新建工作</a>\r\n");
	}
	else if (item.type==2)
	{
	ViewBuilder.Append("                                <a class=\"subject btn btn-success\" href=\"taskjbadd.aspx?flowid=" + echo(item.id) + "\">新建工作</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                <a class=\"btn btn-success\" href=\"workadd.aspx?flowid=" + echo(item.id) + "\">新建工作</a>\r\n");
	}//end if
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	}//end loop
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            $(document).on(\"click\", \".list-view .view-item-link\", function (e) {\r\n");
	ViewBuilder.Append("                TUtil.openUrl(this.href, \"\", \"\", 800, 600);\r\n");
	ViewBuilder.Append("                e.preventDefault();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(document).on(\"click\", \".list-view .subject\", function (e) {\r\n");
	ViewBuilder.Append("                TUtil.openUrl(this.href);\r\n");
	ViewBuilder.Append("                e.preventDefault();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
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
