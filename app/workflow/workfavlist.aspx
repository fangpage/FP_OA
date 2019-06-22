<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_WorkFlow.Controller.workfavlist" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_WorkFlow" %>
<%@ Import namespace="FP_WorkFlow.Model" %>
<%@ Import namespace="FP_Flow.Model" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FP_Transfer" %>
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
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>已关注工作</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-datepicker.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.bootbox.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.notify.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-prompts.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modal.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modalmanager.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ba-bbq/jquery.ba-bbq.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "pager/pager.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/search.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/sidebar.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    function update() {\r\n");
	ViewBuilder.Append("        window.location.href = '" + echo(pageurl) + "';\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("    <!--侧边栏-->\r\n");
	ViewBuilder.Append("<div class=\"sidebar\" style=\"height: 780px; overflow-y: hidden; outline: none;\" tabindex=\"5001\">\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_logo T_icon\"><img src=\"" + echo(setupinfo.icon) + "\" style=\"width:64px;height:64px;\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_content T_bg\" style=\"padding-top:10px;\">\r\n");
	ViewBuilder.Append("    <ul id=\"news_menu\" class=\"nav nav-list\">\r\n");

	if (isperm)
	{
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="worknew.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"worknew.aspx\"><i class=\"icon-pencil-2\"></i>创建新工作</a></li>\r\n");
	}//end if
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="workinbox.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"workinbox.aspx\"><i class=\"icon-clock-3\"></i>待办理工作<span class=\"badge badge-important pull-right\">" + echo(countinfo.count) + "</span></a></li>\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="worklist.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"worklist.aspx\"><i class=\"icon-file\"></i>已办理工作</a></li>\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="workfavlist.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"workfavlist.aspx\"><i class=\"icon-star\"></i>已关注工作</a></li>\r\n");
	ViewBuilder.Append("    </ul>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_buttons\"> </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("    <!--导航栏-->\r\n");
	ViewBuilder.Append("    <div style=\"margin-left:180px\">\r\n");
	ViewBuilder.Append("      <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("        <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td><span class=\"td-nav-title\">已关注工作</span></td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("<div class=\"pull-right\" style=\"margin-top: -5px;\">\r\n");
	ViewBuilder.Append("    <form style=\"margin: 0; margin-right: 5px;\" class=\"form-search\" id=\"frmsearch\" action=\"\" name=\"frmsearch\" method=\"get\">\r\n");
	ViewBuilder.Append("        <input id=\"title0\" name=\"title\" value=\"" + echo(title) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <input id=\"poster0\" name=\"poster\" value=\"" + echo(poster) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <input id=\"touser0\" name=\"touser\" value=\"" + echo(touser) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <input id=\"startdate0\" name=\"startdate\" value=\"" + echo(startdate) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <input id=\"enddate0\" name=\"enddate\" value=\"" + echo(enddate) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <input class=\"search-query\" placeholder=\"根据标题或发起人搜索\" style=\"margin-right: 5px;\" name=\"keyword\" id=\"keyword\" type=\"text\" value=\"" + echo(keyword) + "\">\r\n");
	ViewBuilder.Append("        <button class=\"btn btn-primary\" id=\"btnsearch\" type=\"submit\" name=\"btnsearch\">搜索</button>\r\n");
	ViewBuilder.Append("        <button class=\"btn btn-danger\" id=\"btnadv\" type=\"button\" name=\"btnadv\">高级搜索</button>\r\n");
	ViewBuilder.Append("        <a style=\"margin-right:3px;\" class=\"btn\" href=\"" + echo(pageurl) + "\">刷新</a>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"advSearchModal\" class=\"modal hide fade\">\r\n");
	ViewBuilder.Append("    <div class=\"modal-header\">\r\n");
	ViewBuilder.Append("        <a class=\"close\" data-dismiss=\"modal\">×</a>\r\n");
	ViewBuilder.Append("        <h4 style=\"height: 20px; width: 30%; display: inline-block;\">高级搜索</h4>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("<form class=\"form-horizontal\" id=\"frmadv\" name=\"frmadv\" action=\"\" method=\"get\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" value=\"adv\" name=\"searchtype\" id=\"searchtype\">\r\n");
	ViewBuilder.Append("    <input id=\"keyword1\" name=\"keyword\" value=\"" + echo(keyword) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("    <div class=\"modal-body clearfix\" style=\"max-height: 200px !important;\">\r\n");
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"title\">工作标题</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                    <input id=\"title\" name=\"title\" value=\"" + echo(title) + "\" type=\"text\">\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"title\">发起人</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                    <input id=\"poster\" name=\"poster\" value=\"" + echo(poster) + "\" type=\"text\">\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");

	if (pagename=="worklist.aspx")
	{
	ViewBuilder.Append("           <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"title\">接收人</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                    <input id=\"touser\" name=\"touser\" value=\"" + echo(touser) + "\" type=\"text\">\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	}//end if

	if (flowlist.Count>0)
	{
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"title\">工作类型</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                  <select name=\"flowid\" id=\"flowid\">\r\n");
	ViewBuilder.Append("                    <option value=\"0\" \r\n");

	if (flowid==0)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">全部</option>\r\n");

	loop__id=0;
	foreach(FlowInfo item in flowlist)
	{
	loop__id++;
	ViewBuilder.Append("                    <option value=\"" + echo(item.id) + "\" \r\n");

	if (item.id==flowid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(item.name) + "</option>\r\n");
	}//end if
	ViewBuilder.Append("                  </select>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	}//end if

	if (typelist.Count>0)
	{
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"title\">工作分类</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                  <select name=\"typeid\" id=\"typeid\">\r\n");
	ViewBuilder.Append("                    <option value=\"0\" \r\n");

	if (typeid==0)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">全部</option>\r\n");

	loop__id=0;
	foreach(TypeInfo item in typelist)
	{
	loop__id++;
	ViewBuilder.Append("                    <option value=\"" + echo(item.id) + "\" \r\n");

	if (item.id==typeid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(item.name) + "</option>\r\n");
	}//end if
	ViewBuilder.Append("                  </select>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	}//end if
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"startdate\">开始日期</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                    <div class=\"input-prepend\">\r\n");
	ViewBuilder.Append("                        <span class=\"add-on\"><i class=\"icon-calendar\"></i></span>\r\n");
	ViewBuilder.Append("                        <input type=\"text\" autocomplete=\"off\" name=\"startdate\" id=\"startdate\" value=\"" + echo(startdate) + "\" style=\"width: 180px;\">\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"enddate\">结束日期</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                    <div class=\"input-prepend\">\r\n");
	ViewBuilder.Append("                        <span class=\"add-on\"><i class=\"icon-calendar\"></i></span>\r\n");
	ViewBuilder.Append("                        <input type=\"text\" autocomplete=\"off\" name=\"enddate\" id=\"enddate\" value=\"" + echo(enddate) + "\" style=\"width: 180px;\">\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"modal-footer\" style=\"text-align: center\">\r\n");
	ViewBuilder.Append("        <button style=\"margin-right: 4px;\" class=\"btn btn-danger\" id=\"btn_search_ok\" name=\"btn_search_ok\" type=\"submit\">确定</button>\r\n");
	ViewBuilder.Append("        <button class=\"btn\" id=\"btnclose\" name=\"btnclose\" type=\"button\">关闭</button>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("    <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("    <input id=\"delid\" name=\"delid\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("    <div class=\"content\" style=\"margin-left: 180px; height: 740px; overflow: hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("      <div style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("        <div id=\"news-grid\" class=\"grid-view\">\r\n");
	ViewBuilder.Append("          <div class=\"toolbar\">\r\n");
	ViewBuilder.Append("              <div style=\"width:500px;float:left;margin-top:5px;\">\r\n");
	ViewBuilder.Append("                <table>\r\n");
	ViewBuilder.Append("                <tbody>\r\n");
	ViewBuilder.Append("                   <tr>\r\n");
	ViewBuilder.Append("                    <td style=\"border-left:none;\">\r\n");

	if (status==0)
	{
	ViewBuilder.Append("                        <span class=\"label label-info\">全部</span>&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                        <a href=\"" + seturl("status=0")+ "\">全部</a>&nbsp;\r\n");
	}//end if

	if (status==1)
	{
	ViewBuilder.Append("                        <span class=\"label label-info\">未接收的</span>&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                        <a title=\"\" href=\"" + seturl("status=1")+ "\">未接收的</a>&nbsp;\r\n");
	}//end if

	if (status==2)
	{
	ViewBuilder.Append("                        <span class=\"label label-info\">已接收的</span>&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                        <a title=\"\" href=\"" + seturl("status=2")+ "\">已接收的</a>&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                        |&nbsp;\r\n");

	if (workby==0)
	{
	ViewBuilder.Append("                        <span class=\"label label-info\">全部</span>&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                        <a href=\"" + seturl("workby=0")+ "\">全部</a>&nbsp;\r\n");
	}//end if

	if (workby==1)
	{
	ViewBuilder.Append("                        <span class=\"label label-info\">我发起的</span>&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                        <a title=\"\" href=\"" + seturl("workby=1")+ "\">我发起的</a>&nbsp;\r\n");
	}//end if

	if (workby==2)
	{
	ViewBuilder.Append("                        <span class=\"label label-info\">我主办的</span>&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                        <a title=\"\" href=\"" + seturl("workby=2")+ "\">我主办的</a>&nbsp;\r\n");
	}//end if

	if (workby==3)
	{
	ViewBuilder.Append("                        <span class=\"label label-info\">我协办的</span>&nbsp;\r\n");
	}
	else
	{
	ViewBuilder.Append("                        <a title=\"\" href=\"" + seturl("workby=3")+ "\">我协办的</a>&nbsp;\r\n");
	}//end if
	ViewBuilder.Append("                    </td>\r\n");
	ViewBuilder.Append("                   </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("              </table>\r\n");
	ViewBuilder.Append("             </div>\r\n");
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
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("          <table class=\"items table table-bordered\">\r\n");
	ViewBuilder.Append("            <thead>\r\n");
	ViewBuilder.Append("              <tr>\r\n");
	ViewBuilder.Append("                <th style=\"width: 40px; text-align: center;\">序号</th>\r\n");
	ViewBuilder.Append("                <th class=\"ellipsis\">工作标题</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;width:80px;\">发起人</th>\r\n");
	ViewBuilder.Append("                <th style=\"width:110px;text-align:center;\">操作</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;width:200px;\">流程步骤</th>\r\n");
	ViewBuilder.Append("                <th style=\"width:140px;text-align:center;\">办结时间</th>\r\n");
	ViewBuilder.Append("                <th style=\"width:60px;text-align:center;\">流程状态</th>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	ViewBuilder.Append("            </thead>\r\n");
	ViewBuilder.Append("            <tbody class=\"tbl\">\r\n");

	loop__id=0;
	foreach(WorkFlowInfo item in _worklist)
	{
	loop__id++;

	if (loop__id%2==0)
	{
	ViewBuilder.Append("              <tr class=\"odd\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#e2f9de'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	}
	else
	{
	ViewBuilder.Append("              <tr class=\"even\" onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#e2f9de'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	}//end if
	ViewBuilder.Append("                <td class=\"ellipsis\" style=\"text-align: center;\">" + echo(((pager.pageindex-1)*pager.pagesize+loop__id)) + "</td>\r\n");
	ViewBuilder.Append("                <td class=\"ellipsis\">\r\n");
	string ostr = "email.png";

	if (item.status==1)
	{
	 ostr = "email_open.png";
	}
	else if (item.status>=2)
	{
	 ostr = "ico-send.png";
	}//end if

	if (item.type==1)
	{
	ViewBuilder.Append("                    <a class=\"subject\" href=\"taskview.aspx?id=" + echo(item.id) + "\" title=\"" + echo(item.title) + "\"><img src=\"statics/images/" + echo(ostr) + "\" style=\"vertical-align:text-bottom;margin-right:3px;\"><img src=\"statics/images/star1.png\" style=\"vertical-align:text-bottom;margin-right:3px;\">" + echo(item.title) + "</a>\r\n");
	}
	else if (item.type==2)
	{
	ViewBuilder.Append("                    <a class=\"subject\" href=\"taskjbview.aspx?id=" + echo(item.id) + "\" title=\"" + echo(item.title) + "\"><img src=\"statics/images/" + echo(ostr) + "\" style=\"vertical-align:text-bottom;margin-right:3px;\"><img src=\"statics/images/star1.png\" style=\"vertical-align:text-bottom;margin-right:3px;\">" + echo(item.title) + "</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <a class=\"subject\" href=\"workview.aspx?id=" + echo(item.id) + "\" title=\"" + echo(item.title) + "\"><img src=\"statics/images/" + echo(ostr) + "\" style=\"vertical-align:text-bottom;margin-right:3px;\"><img src=\"statics/images/star1.png\" style=\"vertical-align:text-bottom;margin-right:3px;\">" + echo(item.title) + "</a>\r\n");
	}//end if
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td class=\"ellipsis\" style=\"text-align:center;\"><span title=\"" + echo(item.rawname) + "\">" + echo(item.rawname) + "</span></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\">\r\n");

	if (item.status<=1)
	{

	if (item.isadmin==1)
	{

	if (item.type==1&&item.uid==0)
	{
	ViewBuilder.Append("                    <a class=\"subject td-link-icon label label-important\" href=\"taskview.aspx?id=" + echo(item.id) + "\"><i class=\"icon-pencil-5\"></i>主办</a>\r\n");
	}
	else if (item.type==1&&item.uid==userid)
	{
	ViewBuilder.Append("                    <a class=\"subject td-link-icon label label-important\" href=\"taskadd.aspx?id=" + echo(item.id) + "\"><i class=\"icon-pencil-5\"></i>主办</a>\r\n");
	}
	else if (item.type==2&&item.uid==userid)
	{
	ViewBuilder.Append("                    <a class=\"subject td-link-icon label label-important\" href=\"taskjbview.aspx?id=" + echo(item.id) + "\"><i class=\"icon-pencil-5\"></i>主办</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <a class=\"subject td-link-icon label label-important\" href=\"workflow.aspx?id=" + echo(item.id) + "\"><i class=\"icon-pencil-5\"></i>主办</a>\r\n");
	}//end if
	}
	else
	{

	if (item.type==1&&item.uid==0)
	{
	ViewBuilder.Append("                    <a class=\"subject td-link-icon label label-info\" href=\"taskview.aspx?id=" + echo(item.id) + "\"><i class=\"icon-pencil-5\"></i>会签</a>\r\n");
	}
	else if (item.type==1&&item.uid==userid)
	{
	ViewBuilder.Append("                    <a class=\"subject td-link-icon label label-info\" href=\"taskadd.aspx?id=" + echo(item.id) + "\"><i class=\"icon-pencil-5\"></i>会签</a>\r\n");
	}
	else if (item.type==2&&item.uid==userid)
	{
	ViewBuilder.Append("                    <a class=\"subject td-link-icon label label-info\" href=\"taskjbview.aspx?id=" + echo(item.id) + "\"><i class=\"icon-pencil-5\"></i>会签</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <a class=\"subject td-link-icon label label-info\" href=\"workflow.aspx?id=" + echo(item.id) + "\"><i class=\"icon-pencil-5\"></i>会签</a>\r\n");
	}//end if
	}//end if
	}
	else
	{
	ViewBuilder.Append("                    <a data=\"" + echo(item.id) + "\" class=\"workchange\" href=\"#\"><i class=\"icon-fan\"></i>转办</a>\r\n");
	}//end if

	if (item.uid==userid)
	{
	ViewBuilder.Append("                    <a class=\"delete td-link-icon\" href=\"javascript:void();\" data=\"" + echo(item.id) + "\"><i class=\"icon-remove\"></i>删除</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <span style=\"color:#dcdbdb\"><i class=\"icon-remove\"></i>删除</span>\r\n");
	}//end if
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td class=\"ellipsis\">\r\n");
	string astr = "(主办)";

	if (item.isadmin==0)
	{
	 astr = "(会签)";
	}//end if

	if (item.type==1)
	{
	ViewBuilder.Append("                   <a class=\"subject\" href=\"taskview.aspx?id=" + echo(item.id) + "\" title=\"" + echo(astr) + "第" + echo(item.step) + "步：" + FPUtils.RemoveHtml(item.content) + "\">" + echo(astr) + "第" + echo(item.step) + "步：" + FPUtils.RemoveHtml(item.content) + "</a>\r\n");
	}
	else if (item.type==2)
	{
	ViewBuilder.Append("                    <a class=\"subject\" href=\"taskjbview.aspx?id=" + echo(item.id) + "\" title=\"" + echo(astr) + "第" + echo(item.step) + "步：" + FPUtils.RemoveHtml(item.content) + "\">" + echo(astr) + "第" + echo(item.step) + "步：" + FPUtils.RemoveHtml(item.content) + "</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                   <a class=\"subject\" href=\"workview.aspx?id=" + echo(item.id) + "&action=flowlist\" title=\"" + echo(astr) + "第" + echo(item.step) + "步：" + echo(item.stepname) + "\">" + echo(astr) + "第" + echo(item.step) + "步：" + echo(item.stepname) + "</a>\r\n");
	}//end if
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td class=\"ellipsis\" style=\"text-align:center;\">" + echo(item.endtime,"yyyy-MM-dd HH:mm") + "</td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\">\r\n");

	if (item.status==2)
	{
	ViewBuilder.Append("                  <span class=\"label label-important\"><b>执行中</b></span>\r\n");
	}
	else if (item.status==3)
	{
	ViewBuilder.Append("                  <span class=\"label label-info\"><b>已结束</b></span>\r\n");
	}
	else if (item.status==4)
	{
	ViewBuilder.Append("                  <span class=\"label label-success\"><b>已完成</b></span>\r\n");
	}
	else
	{
	ViewBuilder.Append("                  <span class=\"label label-important\"><b>未处理</b></span>\r\n");
	}//end if
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	}//end loop
	ViewBuilder.Append("            </tr></tbody>\r\n");
	ViewBuilder.Append("          </table>\r\n");
	ViewBuilder.Append("          <div class=\"toolbar\">\r\n");
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
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("  <div id=\"changeModel\" class=\"modal hide fade\">\r\n");
	ViewBuilder.Append("    <div class=\"modal-header\">\r\n");
	ViewBuilder.Append("        <a class=\"close\" data-dismiss=\"modal\">×</a>\r\n");
	ViewBuilder.Append("        <h4 style=\"height: 20px; width: 30%; display: inline-block;\">转办工作</h4>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <form class=\"form-horizontal\" id=\"frmchange\" name=\"frmchange\" action=\"worktransfer.aspx\" method=\"post\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"workid\" id=\"workid\" value=\"\">\r\n");
	ViewBuilder.Append("        <div class=\"modal-body clearfix\" style=\"max-height: 200px !important;\">\r\n");
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"title\">转办流程：</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                    <select id=\"tid\" name=\"tid\">\r\n");
	ViewBuilder.Append("                        <option value=\"0\">选择转办流程</option>\r\n");

	loop__id=0;
	foreach(Transfer item in transferlist)
	{
	loop__id++;
	ViewBuilder.Append("                        <option value=\"" + echo(item.id) + "\">" + echo(item.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("                    </select>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"modal-footer\" style=\"text-align: center\">\r\n");
	ViewBuilder.Append("            <button style=\"margin-right: 4px;\" class=\"btn btn-danger\" id=\"btn_change_ok\" name=\"btn_change_ok\" type=\"button\">确定</button>\r\n");
	ViewBuilder.Append("            <button class=\"btn\" id=\"btn_change_close\" name=\"btn_change_close\" type=\"button\">关闭</button>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.datepicker.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-datepicker.zh-CN.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#startdate').datepicker({ 'dateFormat': 'yy-mm-dd', 'language': 'zh-CN', 'format': 'yyyy-mm-dd', 'weekStart': 1 });\r\n");
	ViewBuilder.Append("        $('#enddate').datepicker({ 'dateFormat': 'yy-mm-dd', 'language': 'zh-CN', 'format': 'yyyy-mm-dd', 'weekStart': 1 });\r\n");
	ViewBuilder.Append("        //打开高级搜索\r\n");
	ViewBuilder.Append("        $(\"#btnadv\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#advSearchModal\").modal(\"show\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //关闭高级搜索\r\n");
	ViewBuilder.Append("        $(\"#btnclose\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#advSearchModal\").modal('hide');\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('.subject').live('click', function () {\r\n");
	ViewBuilder.Append("            TUtil.openUrl(this.href);\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#expandBtn').click(function () {\r\n");
	ViewBuilder.Append("            if ($(this).find('i').hasClass('icon-arrow-up')) {\r\n");
	ViewBuilder.Append("                $(this).html('展开<i class=\"icon-arrow-down\"></i>');\r\n");
	ViewBuilder.Append("                $('#advanced_from').find('tbody').hide();\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $(this).html('收起<i class=\"icon-arrow-up\"></i>');\r\n");
	ViewBuilder.Append("                $('#advanced_from').find('tbody').show();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //删除工作\r\n");
	ViewBuilder.Append("        $('#news-grid a.delete.td-link-icon').click(function () {\r\n");
	ViewBuilder.Append("            var cid = $(this).attr(\"data\");\r\n");
	ViewBuilder.Append("            window.confirm('确定要删除吗?删除后将无法恢复。', function (ret) {\r\n");
	ViewBuilder.Append("                if (ret == false) return;\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#delid\").val(cid);\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('.workchange').live('click', function () {\r\n");
	ViewBuilder.Append("            $(\"#workid\").val($(this).attr('data'));\r\n");
	ViewBuilder.Append("            $(\"#changeModel\").modal('show');\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(document).on(\"click\", \"#btn_change_ok\", function (e) {\r\n");
	ViewBuilder.Append("            var tid = $(\"#tid\").val();\r\n");
	ViewBuilder.Append("            var workid=$(\"#workid\").val();\r\n");
	ViewBuilder.Append("            TUtil.openUrl('worktransfer.aspx?tid=' + tid + '&workid=' + workid);\r\n");
	ViewBuilder.Append("            e.preventDefault();\r\n");
	ViewBuilder.Append("            $(\"#changeModel\").modal('hide');\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_change_close\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#changeModel\").modal('hide');\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\".sidebar\").height(height);\r\n");
	ViewBuilder.Append("            if ($(\".td-nav\").length > 0) {\r\n");
	ViewBuilder.Append("                $(\".content\").height(height - $(\".td-nav\").height());\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $(\".content\").height(height);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("        $(\".content\").niceScroll({ cursorcolor: \"#ccc\", cursoropacitymin: 1, cursorwidth: 8 });\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
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
