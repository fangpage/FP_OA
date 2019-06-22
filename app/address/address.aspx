<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Address.address" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Address" %>
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
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>通讯录</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
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
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "pager/pager.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/sidebar.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").height(height - $('#page-navbar').outerHeight());\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").niceScroll({ cursorcolor: \"#ccc\" ,cursoropacitymin:1,cursorwidth:8});\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"page-navbar\">\r\n");
	ViewBuilder.Append("  <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("    <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td><span class=\"td-nav-title\">" + echo(pagenav) + "</span></td>\r\n");
	ViewBuilder.Append("          <td><div class=\"pull-right\">\r\n");
	ViewBuilder.Append("              <form style=\"margin:0;margin-right:5px;\" class=\"form-search\" action=\"\" method=\"get\">\r\n");
	ViewBuilder.Append("                <input class=\"search-query\" placeholder=\"搜索\" style=\"margin-right:5px;\" name=\"keyword\" id=\"keyword\" type=\"text\" value=\"" + echo(keyword) + "\">\r\n");
	ViewBuilder.Append("                <button class=\"btn btn-primary\" id=\"btn_search\" type=\"submit\" name=\"btn_search\">搜索</button>\r\n");
	ViewBuilder.Append("              </form>\r\n");
	ViewBuilder.Append("            </div></td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\" style=\"height: 739px; overflow: hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("  <div style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("    <div class=\"list-view\">\r\n");
	ViewBuilder.Append("        <table class=\"items table table-bordered\">\r\n");
	ViewBuilder.Append("            <thead>\r\n");
	ViewBuilder.Append("              <tr>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;\">姓名</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;\">所在部门</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;\">手机</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;\">电话</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;\">邮箱</th>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	ViewBuilder.Append("            </thead>\r\n");
	ViewBuilder.Append("            <tbody>\r\n");

	loop__id=0;
	foreach(FullUserInfo item in userlist)
	{
	loop__id++;
	ViewBuilder.Append("              <tr onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#e2f9de'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\">\r\n");
	ViewBuilder.Append("                  " + echo(item.realname) + "\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\">" + echo(item.departname) + "</td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\">" + echo(item.mobile) + "</td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\">" + echo(item.phone) + "</td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\">" + echo(item.email) + "</td>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	}//end loop
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("        <div class=\"toolbar\">\r\n");
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
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
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
