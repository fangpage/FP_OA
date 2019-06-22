<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Email.Controller.trash" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Email" %>
<%@ Import namespace="FP_Email.Model" %>
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
	ViewBuilder.Append("<title>已删除-内部邮件</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/bootstrap-datepicker.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "jquery/jquery.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "bootstrap/js/bootstrap.bootbox.min.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "bootstrap/js/bootstrap.notify.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "bootstrap/js/bootstrap-prompts.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "bootstrap/js/bootstrap.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modal.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modalmanager.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "ba-bbq/jquery.ba-bbq.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "pager/pager.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"/oa/public/css/sidebar.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"/oa/public/css/fp-bootstrap.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"/oa/public/css/base.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"/oa/public/css/global.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"/oa/public/js/util.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    var winType = 'modal';\r\n");
	ViewBuilder.Append("    if (window.ActiveXObject) {\r\n");
	ViewBuilder.Append("        var ua = navigator.userAgent.toLowerCase();\r\n");
	ViewBuilder.Append("        var ieVersion = ua.match(/msie ([\\d.]+)/)[1];\r\n");
	ViewBuilder.Append("        if (ieVersion === '8.0') {\r\n");
	ViewBuilder.Append("            winType = '';\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function update() {\r\n");
	ViewBuilder.Append("        window.location.href = '" + echo(pageurl) + "';\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"statics/css/global.css\">\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("    <!--侧边栏-->\r\n");
	ViewBuilder.Append("<div class=\"sidebar\" style=\"height: 780px; overflow-y: hidden; outline: none;\" tabindex=\"5001\">\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_logo T_icon\"><img src=\"" + echo(setupinfo.icon) + "\" style=\"width:64px;height:64px;\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_content T_bg\" style=\"padding-top:10px;\">\r\n");
	ViewBuilder.Append("        <div style=\"margin: 5px 0; width: 100%; text-align: center;\" class=\"btn-group\">\r\n");
	ViewBuilder.Append("        <a style=\"cursor: pointer; padding-left: 15px; padding-right: 15px;\" class=\"btn btn-success\" href=\"inbox.aspx\"><i class=\"icon-download-2\"></i>收信</a>\r\n");
	ViewBuilder.Append("        <a style=\"cursor: pointer; padding-left: 15px; padding-right: 15px;\" class=\"btn btn-success\" href=\"create.aspx\"><i class=\"icon-pencil-5\"></i>写信</a></div>\r\n");
	ViewBuilder.Append("        <div id=\"emailboxNode\">\r\n");
	ViewBuilder.Append("            <ul class=\"nav nav-list email_box\">\r\n");
	ViewBuilder.Append("                <li \r\n");

	if (pagename=="inbox.aspx")
	{
	ViewBuilder.Append(" class=\"move active\" \r\n");
	}//end if
	ViewBuilder.Append(">\r\n");
	ViewBuilder.Append("                <a href=\"inbox.aspx\" title=\"收件箱 \" data-node=\"inbox\"><i class=\"icon-download\"></i>收件箱<span class=\"badge badge-important pull-right\">" + echo(countinfo.count) + "</span></a>\r\n");
	ViewBuilder.Append("                </li>\r\n");
	ViewBuilder.Append("                <li \r\n");

	if (pagename=="drafts.aspx")
	{
	ViewBuilder.Append(" class=\"move active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"drafts.aspx\" title=\"草稿箱\" data-node=\"drafts\"><i class=\"icon-drawer\"></i>草稿箱</a> </li>\r\n");
	ViewBuilder.Append("                <li \r\n");

	if (pagename=="sentbox.aspx")
	{
	ViewBuilder.Append(" class=\"move active\" \r\n");
	}//end if
	ViewBuilder.Append(">\r\n");
	ViewBuilder.Append("                    <a href=\"sentbox.aspx\" title=\"已发送\" data-node=\"sent\"><i class=\"icon-upload\"></i>已发送</a>\r\n");
	ViewBuilder.Append("                </li>\r\n");
	ViewBuilder.Append("                <li \r\n");

	if (pagename=="trash.aspx")
	{
	ViewBuilder.Append(" class=\"move active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"trash.aspx\" title=\"已删除\" data-node=\"trash\"><i class=\"icon-remove-2\"></i>已删除</a> </li>\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_buttons\"></div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("    <!--导航栏-->\r\n");
	ViewBuilder.Append("    <div style=\"margin-left:180px\">\r\n");
	ViewBuilder.Append("      <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("        <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td><span class=\"td-nav-title\">已删除</span></td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("<div class=\"pull-right\" style=\"margin-top:-5px;\">\r\n");
	ViewBuilder.Append("    <form style=\"margin:0;margin-right:5px;\" class=\"form-search\" id=\"frmsearch\" action=\"\" name=\"frmsearch\" method=\"get\">\r\n");
	ViewBuilder.Append("    <input class=\"search-query\" placeholder=\"根据主题/发件人/收件人搜索\" style=\"margin-right:5px;\" name=\"keyword\" id=\"keyword\" type=\"text\" value=\"" + echo(keyword) + "\">\r\n");
	ViewBuilder.Append("    <button class=\"btn btn-primary\" id=\"btnsearch\" type=\"submit\" name=\"btnsearch\">搜索</button>\r\n");
	ViewBuilder.Append("    <button class=\"btn btn-danger\" id=\"btnadv\" type=\"button\" name=\"btnadv\">高级搜索</button>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"advSearchModal\" class=\"modal hide fade\">\r\n");
	ViewBuilder.Append("<div class=\"modal-header\"><a class=\"close\" data-dismiss=\"modal\">×</a>\r\n");
	ViewBuilder.Append("    <h4 style=\"height:20px;width:30%;display: inline-block;\">高级搜索</h4>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<form class=\"form-horizontal\" id=\"frmadv\" name=\"frmadv\" action=\"\" method=\"get\">\r\n");
	ViewBuilder.Append("<input type=\"hidden\" value=\"adv\" name=\"searchtype\" id=\"searchtype\">\r\n");
	ViewBuilder.Append("<div class=\"modal-body clearfix\" style=\"max-height:200px !important;\">\r\n");
	ViewBuilder.Append("    <div class=\"control-group \">\r\n");
	ViewBuilder.Append("        <label class=\"control-label\" for=\"subject\">邮件搜索</label>\r\n");
	ViewBuilder.Append("        <div class=\"controls\">\r\n");
	ViewBuilder.Append("        <input id=\"keyword2\" name=\"keyword\" placeholder=\"根据主题/发件人/收件人搜索\" value=\"" + echo(keyword) + "\" type=\"text\">\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"control-group \">\r\n");
	ViewBuilder.Append("        <label class=\"control-label\" for=\"startdate\">开始日期</label>\r\n");
	ViewBuilder.Append("        <div class=\"controls\">\r\n");
	ViewBuilder.Append("        <div class=\"input-prepend\"><span class=\"add-on\"><i class=\"icon-calendar\"></i></span>\r\n");
	ViewBuilder.Append("            <input type=\"text\" autocomplete=\"off\" name=\"startdate\" id=\"startdate\" value=\"" + echo(startdate) + "\" style=\"width:180px;\">\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"control-group \">\r\n");
	ViewBuilder.Append("        <label class=\"control-label\" for=\"enddate\">结束日期</label>\r\n");
	ViewBuilder.Append("        <div class=\"controls\">\r\n");
	ViewBuilder.Append("        <div class=\"input-prepend\"><span class=\"add-on\"><i class=\"icon-calendar\"></i></span>\r\n");
	ViewBuilder.Append("            <input type=\"text\" autocomplete=\"off\" name=\"enddate\" id=\"enddate\" value=\"" + echo(enddate) + "\" style=\"width:180px;\">\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div class=\"modal-footer\" style=\"text-align:center\">\r\n");
	ViewBuilder.Append("    <button style=\"margin-right:4px;\" class=\"btn btn-danger\" id=\"btn_ok\" name=\"btn_ok\" type=\"submit\">确定</button>\r\n");
	ViewBuilder.Append("    <button class=\"btn\" id=\"btnclose\" name=\"btnclose\" type=\"button\">关闭</button>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"content\" style=\"margin-left: 180px; height: 740px; overflow: hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("      <form id=\"frmpost\" name=\"frmpost\" method=\"post\" action=\"\">\r\n");
	ViewBuilder.Append("      <input type=\"hidden\" value=\"\" name=\"action\" id=\"action\">\r\n");
	ViewBuilder.Append("      <div style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("        <div id=\"email_list\" class=\"grid-view\">\r\n");
	ViewBuilder.Append("          <div class=\"toolbar\">\r\n");
	ViewBuilder.Append("            <div class=\"btn-group\">\r\n");
	ViewBuilder.Append("                <a id=\"batch_restore\" class=\"btn\">还原</a>\r\n");
	ViewBuilder.Append("                <a id=\"batch_clear\" class=\"btn\">彻底删除</a>\r\n");
	ViewBuilder.Append("                <a id=\"all_read\" data-node=\"trash\" class=\"btn\">全部已读</a>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"btn-group\">\r\n");
	ViewBuilder.Append("              <a data-toggle=\"dropdown\" class=\"btn dropdown-toggle\" href=\"#\">标记为 <span class=\"caret\"></span></a>\r\n");
	ViewBuilder.Append("              <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                <li><a id=\"batch_read\" tabindex=\"-1\">已读邮件</a></li>\r\n");
	ViewBuilder.Append("                <li><a id=\"batch_unread\" tabindex=\"-1\">未读邮件</a></li>\r\n");
	ViewBuilder.Append("              </ul>\r\n");
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
	ViewBuilder.Append("                <th style=\"width:100%;\">主题</th>\r\n");
	ViewBuilder.Append("                <th style=\"width: 80px;text-align:center;\">发件人</th>\r\n");
	ViewBuilder.Append("                <th style=\"width: 160px;text-align:center;\">时间</th>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	ViewBuilder.Append("            </thead>\r\n");
	ViewBuilder.Append("            <tbody>\r\n");

	loop__id=0;
	foreach(EmailInfo item in emaillist)
	{
	loop__id++;
	ViewBuilder.Append("              <tr onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#e2f9de'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td class=\"notopen\" style=\"text-align:center;\">\r\n");
	ViewBuilder.Append("                    <input value=\"" + echo(item.id) + "\" id=\"chkid_" + echo(item.id) + "\" type=\"checkbox\" name=\"chkid\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td class=\"ellipsis\" style=\"cursor: pointer;\">\r\n");

	if (item.status==1)
	{
	ViewBuilder.Append("                    <i class=\"ico-read\" title=\"已阅\"></i>\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <i class=\"ico-unread\" title=\"未阅\"></i>\r\n");
	}//end if
	ViewBuilder.Append("                    <span title=\"" + echo(item.subject) + "\">" + echo(item.subject) + "</span>\r\n");

	if (item.attachs>0)
	{
	ViewBuilder.Append("                    <i title=\"有附件\" class=\"icon-attachment\"></i>\r\n");
	}//end if
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td class=\"notopen\" style=\"text-align:center;\">" + echo(item.fromname) + "</td>\r\n");
	ViewBuilder.Append("                <td class=\"notopen\" style=\"text-align:center;\">" + echo(item.postdatetime,"yyyy-MM-dd HH:mm:ss") + "</td>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
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
	ViewBuilder.Append("     </form>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.datepicker.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-datepicker.zh-CN.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        var windows = $(\".windows\", parent.document);\r\n");
	ViewBuilder.Append("        for (var i = 0; i < windows.length; i++) {\r\n");
	ViewBuilder.Append("            var win = windows[i];\r\n");
	ViewBuilder.Append("            var win_id = $(win).attr(\"id\");\r\n");
	ViewBuilder.Append("            if (win_id.indexOf('app_email') != -1) {\r\n");
	ViewBuilder.Append("                $(win).find(\".win_title .title\").html('内部邮件 -> 已删除')\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        $('[rel=tooltip]').tooltip({ 'container': 'body', 'template': '<div class=\\\"tooltip\\\"><div class=\\\"tooltip-shadow\\\"><div class=\\\"tooltip-container\\\"><div class=\\\"tooltip-arrow\\\"><em><\\/em><span><\\/span><\\/div><div class=\\\"tooltip-inner\\\"><\\/div><\\/div><\\/div><\\/div>', 'animation': false });\r\n");
	ViewBuilder.Append("        $('#startdate').datepicker({ 'dateFormat': 'yy-mm-dd', 'language': 'zh-CN', 'format': 'yyyy-mm-dd', 'weekStart': 1 });\r\n");
	ViewBuilder.Append("        $('#enddate').datepicker({ 'dateFormat': 'yy-mm-dd', 'language': 'zh-CN', 'format': 'yyyy-mm-dd', 'weekStart': 1 });\r\n");
	ViewBuilder.Append("        //打开高组搜索\r\n");
	ViewBuilder.Append("        $(\"#btnadv\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#advSearchModal\").modal(\"show\");\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //关闭高级搜索\r\n");
	ViewBuilder.Append("        $(\"#btnclose\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#advSearchModal\").modal('hide');\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //全选\r\n");
	ViewBuilder.Append("        $(\"#chkall\").click(function () {\r\n");
	ViewBuilder.Append("            var checked = this.checked;\r\n");
	ViewBuilder.Append("            $(\"input[name='chkid']:enabled\").each(function () { this.checked = checked; });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //查看邮件\r\n");
	ViewBuilder.Append("        $(\"#email_list tr td:not(.notopen)\").on({\r\n");
	ViewBuilder.Append("            \"click\": function () {\r\n");
	ViewBuilder.Append("                var id = $(this).parents(\"tr\").find('input').val();\r\n");
	ViewBuilder.Append("                TUtil.openUrl('view.aspx?id=' + id);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //批量还原邮件事件\r\n");
	ViewBuilder.Append("        $('#batch_restore').live(\"click\", function () {\r\n");
	ViewBuilder.Append("            var ids = getIds();\r\n");
	ViewBuilder.Append("            if (ids.length > 0) {\r\n");
	ViewBuilder.Append("                window.confirm('您确定要还原所选的邮件吗？', function (ret) {\r\n");
	ViewBuilder.Append("                    if (ret == true) {\r\n");
	ViewBuilder.Append("                        $(\"#action\").val(\"restore\");\r\n");
	ViewBuilder.Append("                        $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $.notify({ type: 'error', message: { text: '没有选中任何邮件，请重新选择', icon: 'icon-info' } }).show();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //批量彻底删除邮件\r\n");
	ViewBuilder.Append("        $('#batch_clear').live(\"click\", function () {\r\n");
	ViewBuilder.Append("            var ids = getIds();\r\n");
	ViewBuilder.Append("            if (ids.length > 0) {\r\n");
	ViewBuilder.Append("                window.confirm('您确定要彻底删除所选的邮件吗？删除后将无法进恢复。', function (ret) {\r\n");
	ViewBuilder.Append("                    if (ret == true) {\r\n");
	ViewBuilder.Append("                        $(\"#action\").val(\"clear\");\r\n");
	ViewBuilder.Append("                        $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $.notify({ type: 'error', message: { text: '没有选中任何邮件，请重新选择', icon: 'icon-info' } }).show();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //邮件全部标记为已读事件\r\n");
	ViewBuilder.Append("        $('#all_read').live(\"click\", function () {\r\n");
	ViewBuilder.Append("            if ($(\"#email_list tbody tr\").length == 0) {\r\n");
	ViewBuilder.Append("                $.notify({ type: 'error', message: { text: '暂无邮件！', icon: 'icon-checkmark' } }).show();\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"allread\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //邮件批量标记为已读事件\r\n");
	ViewBuilder.Append("        $('#batch_read').live(\"click\", function () {\r\n");
	ViewBuilder.Append("            var box_id = $(this).attr('data-node');\r\n");
	ViewBuilder.Append("            if (ids.length > 0) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"read\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $.notify({ type: 'error', message: { text: '没有选中任何邮件，请重新选择', icon: 'icon-checkmark' } }).show();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //邮件批量标记为未读事件\r\n");
	ViewBuilder.Append("        $('#batch_unread').live(\"click\", function () {\r\n");
	ViewBuilder.Append("            var ids = getIds();\r\n");
	ViewBuilder.Append("            if (ids.length > 0) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"unread\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $.notify({ type: 'error', message: { text: '没有选中任何邮件，请重新选择', icon: 'icon-checkmark' } }).show();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        function getIds() {\r\n");
	ViewBuilder.Append("            var ids = new Array();\r\n");
	ViewBuilder.Append("            $('input[name=\"chkid\"]').each(function () {\r\n");
	ViewBuilder.Append("                if ($(this).attr('checked'))\r\n");
	ViewBuilder.Append("                    ids.push($(this).val());\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            return ids;\r\n");
	ViewBuilder.Append("        }\r\n");
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
