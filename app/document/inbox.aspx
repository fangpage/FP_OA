<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Document.Controller.inbox" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Document" %>
<%@ Import namespace="FP_Document.Model" %>
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
	ViewBuilder.Append("<title>收文处理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-datepicker.css\">\r\n");
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
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/search.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/sidebar.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("  function update(url) {\r\n");
	ViewBuilder.Append("    if (url) {\r\n");
	ViewBuilder.Append("      window.location.href =url;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    else {\r\n");
	ViewBuilder.Append("      window.location.href = '" + echo(pageurl) + "';\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("  }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("    <!--侧边栏-->\r\n");
	ViewBuilder.Append("<div class=\"sidebar\" style=\"height:780px; overflow-y: hidden; outline: none;\">\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_logo T_icon\"><img src=\"" + echo(setupinfo.icon) + "\" style=\"width:64px;height:64px;\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_content T_bg\" style=\"padding-top:10px;\">\r\n");
	ViewBuilder.Append("    <ul id=\"news_menu\" class=\"nav nav-list\">\r\n");

	if (isperm)
	{
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="create.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"create.aspx\"><i class=\"icon-pencil-2\"></i>新建发文</a></li>\r\n");
	}//end if
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="inbox.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"inbox.aspx\"><i class=\"icon-clock-3\"></i>收文处理<span class=\"badge badge-important pull-right\">" + echo(countinfo.count) + "</span></a></li>\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="sendlist.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"sendlist.aspx\"><i class=\"icon-file\"></i>发文处理</a></li>\r\n");
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
	ViewBuilder.Append("              <td><span class=\"td-nav-title\">收文处理</span></td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("<div class=\"pull-right\" style=\"margin-top: -5px;\">\r\n");
	ViewBuilder.Append("    <form style=\"margin: 0; margin-right: 5px;\" class=\"form-search\" id=\"frmsearch\" action=\"\" name=\"frmsearch\" method=\"get\">\r\n");
	ViewBuilder.Append("        <input id=\"title0\" name=\"title\" value=\"" + echo(title) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <input id=\"number0\" name=\"number\" value=\"" + echo(number) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <input id=\"sendorg0\" name=\"sendorg\" value=\"" + echo(sendorg) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <input id=\"startdate0\" name=\"startdate\" value=\"" + echo(startdate) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <input id=\"enddate0\" name=\"enddate\" value=\"" + echo(enddate) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("        <input class=\"search-query\" style=\"margin-right: 5px;\" name=\"keyword\" id=\"keyword\" placeholder=\"根据标题/文号/发文单位\" type=\"text\" value=\"" + echo(keyword) + "\">\r\n");
	ViewBuilder.Append("        <button class=\"btn btn-primary\" id=\"btnsearch\" type=\"submit\" name=\"btnsearch\">搜索</button>\r\n");
	ViewBuilder.Append("        <button class=\"btn btn-danger\" id=\"btnadv\" type=\"button\" name=\"btnadv\">高级搜索</button>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"advSearchModal\" class=\"modal hide fade\">\r\n");
	ViewBuilder.Append("    <form class=\"form-horizontal\" id=\"frmadv\" name=\"frmadv\" action=\"\" method=\"get\">\r\n");
	ViewBuilder.Append("    <input id=\"keyword1\" name=\"keyword\" value=\"" + echo(keyword) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("    <div class=\"modal-header\">\r\n");
	ViewBuilder.Append("        <a class=\"close\" data-dismiss=\"modal\">×</a>\r\n");
	ViewBuilder.Append("        <h4 style=\"height: 20px; width: 30%; display: inline-block;\">高级搜索</h4>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"modal-body clearfix\" style=\"max-height: 200px !important;\">\r\n");
	ViewBuilder.Append("            <input type=\"hidden\" value=\"adv\" name=\"searchtype\" id=\"searchtype\">\r\n");
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"subject\">发文标题</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                    <input id=\"title\" name=\"title\" value=\"" + echo(title) + "\" type=\"text\">\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"subject\">发文文号</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                    <input id=\"number\" name=\"number\" value=\"" + echo(number) + "\" type=\"text\">\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"subject\">发文单位</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                    <input id=\"sendorg\" name=\"sendorg\" value=\"" + echo(sendorg) + "\" type=\"text\">\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"Email_start_date\">开始日期</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                    <div class=\"input-prepend\">\r\n");
	ViewBuilder.Append("                        <span class=\"add-on\"><i class=\"icon-calendar\"></i></span>\r\n");
	ViewBuilder.Append("                        <input type=\"text\" autocomplete=\"off\" name=\"startdate\" id=\"startdate\" style=\"width: 180px;\">\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"control-group \">\r\n");
	ViewBuilder.Append("                <label class=\"control-label\" for=\"Email_end_date\">结束日期</label>\r\n");
	ViewBuilder.Append("                <div class=\"controls\">\r\n");
	ViewBuilder.Append("                    <div class=\"input-prepend\">\r\n");
	ViewBuilder.Append("                        <span class=\"add-on\"><i class=\"icon-calendar\"></i></span>\r\n");
	ViewBuilder.Append("                        <input type=\"text\" autocomplete=\"off\" name=\"enddate\" id=\"enddate\" style=\"width: 180px;\">\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"modal-footer\" style=\"text-align: center\">\r\n");
	ViewBuilder.Append("        <button style=\"margin-right: 4px;\" class=\"btn btn-danger\" id=\"btn_search_ok\" name=\"btn_search_ok\" type=\"submit\">确定</button>\r\n");
	ViewBuilder.Append("        <button class=\"btn\" id=\"btnclose\" name=\"btnclose\" type=\"button\">关闭</button>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("    <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("    <div class=\"content\" style=\"margin-left: 180px; height: 740px; overflow: hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("      <div style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("        <div id=\"news-grid\" class=\"grid-view\">\r\n");
	ViewBuilder.Append("          <div class=\"toolbar\">\r\n");
	ViewBuilder.Append("            <div class=\"btn-group\">\r\n");
	ViewBuilder.Append("                <a id=\"btn_all\" class=\"btn\" href=\"inbox.aspx\"><i class=\"icon-quill\" \r\n");

	if (status==0)
	{
	ViewBuilder.Append(" style=\"color:#0094ff\" \r\n");
	}//end if
	ViewBuilder.Append("></i>全部收文</a>\r\n");
	ViewBuilder.Append("                <a id=\"btn_nosign\" class=\"btn\" href=\"inbox.aspx?status=-1\"><i class=\"icon-quill\" \r\n");

	if (status==-1)
	{
	ViewBuilder.Append(" style=\"color:#0094ff\" \r\n");
	}//end if
	ViewBuilder.Append("></i>未签收的</a>\r\n");
	ViewBuilder.Append("                <a id=\"btn_signed\" class=\"btn\" href=\"inbox.aspx?status=1\"><i class=\"icon-quill\" \r\n");

	if (status==1)
	{
	ViewBuilder.Append(" style=\"color:#0094ff\" \r\n");
	}//end if
	ViewBuilder.Append("></i>已签收的</a>\r\n");
	ViewBuilder.Append("            </div>\r\n");
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
	ViewBuilder.Append("                <th style=\"width:20px;text-align:center;\"><input type=\"checkbox\" value=\"0\" name=\"chkall\" id=\"chkall\"></th>\r\n");
	ViewBuilder.Append("                <th class=\"ellipsis\" style=\"text-align:center;\">发文标题</th>\r\n");
	ViewBuilder.Append("                <th class=\"ellipsis\" style=\"text-align:center;width:160px;\">发文单位</th>\r\n");
	ViewBuilder.Append("                <th style=\"width:140px;text-align:center;\">到达时间</th>\r\n");
	ViewBuilder.Append("                <th style=\"width:60px;text-align:center;\">状态</th>\r\n");
	ViewBuilder.Append("                <th style=\"width:60px;text-align:center;\">操作</th>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	ViewBuilder.Append("            </thead>\r\n");
	ViewBuilder.Append("            <tbody>\r\n");

	loop__id=0;
	foreach(DocumentInfo item in doclist)
	{
	loop__id++;
	string ostr = "email.png";

	if (item.status==1)
	{
	 ostr = "email_open.png";
	}
	else if (item.status==2)
	{
	 ostr = "email_readed.png";
	}//end if
	ViewBuilder.Append("            <tr onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#e2f9de'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("            <td style=\"text-align:center;\"><input value=\"" + echo(item.id) + "\" id=\"chkid_" + echo(item.id) + "\" type=\"checkbox\" name=\"chkid\"></td>\r\n");
	ViewBuilder.Append("            <td class=\"ellipsis\">\r\n");
	ViewBuilder.Append("                <a class=\"subject\" href=\"docview.aspx?id=" + echo(item.id) + "\" target=\"_blank\"><img src=\"statics/images/" + echo(ostr) + "\" style=\"vertical-align:text-bottom;margin-right:3px;\">" + echo(item.title) + "</a>\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td class=\"ellipsis\" style=\"text-align:center;\"><a href=\"docview.aspx?id=" + echo(item.id) + "\" class=\"subject\">" + echo(item.sendorg) + "</a></td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:center;\">" + echo(item.postdatetime,"yyyy-MM-dd HH:mm") + "</td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:center;\">\r\n");

	if (item.status>=2)
	{
	ViewBuilder.Append("                <span class=\"label label-info\">已签收</span>\r\n");
	}
	else
	{
	ViewBuilder.Append("                <span class=\"label label-important\">未签收</span>\r\n");
	}//end if
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <td style=\"text-align:center;\">\r\n");

	if (item.status>1)
	{
	ViewBuilder.Append("                <a data=\"" + echo(item.id) + "\" class=\"workchange label label-info\" href=\"#\"><i class=\"icon-fan\"></i>转办</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                <a class=\"subject label label-important\" href=\"docview.aspx?id=" + echo(item.id) + "\"><i class=\"icon-pencil\"></i>签收</a>\r\n");
	}//end if
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	ViewBuilder.Append("            </tbody>\r\n");
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
	ViewBuilder.Append("        <h4 style=\"height: 20px; width: 30%; display: inline-block;\">转办公文</h4>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <form class=\"form-horizontal\" id=\"frmchange\" name=\"frmchange\" action=\"worktransfer.aspx\" method=\"post\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"docid\" id=\"docid\" value=\"\">\r\n");
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
	ViewBuilder.Append("        $('#News_start_date').datepicker({ 'dateFormat': 'yy-mm-dd', 'language': 'zh-CN', 'format': 'yyyy-mm-dd', 'weekStart': 1 });\r\n");
	ViewBuilder.Append("        $('#News_end_date').datepicker({ 'dateFormat': 'yy-mm-dd', 'language': 'zh-CN', 'format': 'yyyy-mm-dd', 'weekStart': 1 });\r\n");
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
	ViewBuilder.Append("        $(\"#chkall\").click(function () {\r\n");
	ViewBuilder.Append("            var checked = this.checked;\r\n");
	ViewBuilder.Append("            $(\"input[name='chkid']:enabled\").each(function () { this.checked = checked; });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('.workchange').live('click', function () {\r\n");
	ViewBuilder.Append("            $(\"#docid\").val($(this).attr('data'));\r\n");
	ViewBuilder.Append("            $(\"#changeModel\").modal('show');\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(document).on(\"click\", \"#btn_change_ok\", function (e) {\r\n");
	ViewBuilder.Append("            var tid = $(\"#tid\").val();\r\n");
	ViewBuilder.Append("            var docid = $(\"#docid\").val();\r\n");
	ViewBuilder.Append("            TUtil.openUrl('transfer.aspx?tid=' + tid + '&docid=' + docid);\r\n");
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
	ViewBuilder.Append("        $(window).trigger(\"resize\"); $(\".content\").niceScroll({ cursorcolor: \"#ccc\", cursoropacitymin: 1, cursorwidth: 8 });\r\n");
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
