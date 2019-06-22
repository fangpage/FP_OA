<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Email.Controller.view" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Email" %>
<%@ Import namespace="FP_Email.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
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
	ViewBuilder.Append("<title>" + echo(emailinfo.subject) + "-阅读邮件</title>\r\n");
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
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    var parent = window.opener ? window.opener : window.dialogArguments;\r\n");
	ViewBuilder.Append("    try {\r\n");
	ViewBuilder.Append("        parent.update();\r\n");
	ViewBuilder.Append("    } catch (e) { }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("    <!--导航栏-->\r\n");
	ViewBuilder.Append("    <div>\r\n");
	ViewBuilder.Append("      <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("        <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td><h5>" + echo(emailinfo.subject) + "</h5></td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("                <div>\r\n");
	ViewBuilder.Append("                  <div class=\"pull-right btn-group\" data-toggle=\"buttons-radio\">\r\n");
	ViewBuilder.Append("                      <a style=\"margin-right:10px;\" class=\"btn btn-info\" href=\"create.aspx?id=" + echo(emailinfo.id) + "&action=reply\"><i class=\"icon-reply\"></i>回复</a>\r\n");
	ViewBuilder.Append("                      <a style=\"margin-right:10px;\" class=\"btn btn-info\" href=\"create.aspx?id=" + echo(emailinfo.id) + "&action=forward\"><i class=\"icon-redo-2\"></i>转发</a>\r\n");
	ViewBuilder.Append("                      <a onclick=\"window.close();\" class=\"btn btn-danger\">关闭</a>\r\n");
	ViewBuilder.Append("                  </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"content\" style=\"height: 740px; overflow: hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("      <div>\r\n");
	ViewBuilder.Append("        <div class=\"common_2col_content\" style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("          <div class=\"readmailinfo\" style=\"background: #e6f1f6;border-bottom:1px solid #d8e6ec;\">\r\n");
	ViewBuilder.Append("            <table class=\"table-condensed\">\r\n");
	ViewBuilder.Append("              <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td class=\"addrtitle\">发件人：</td>\r\n");
	ViewBuilder.Append("                  <td>\r\n");
	ViewBuilder.Append("                      <div class=\"user-label-container\">\r\n");
	ViewBuilder.Append("                        <a class=\"user-label\">" + echo(emailinfo.fromname) + "</a>\r\n");
	ViewBuilder.Append("                      </div>\r\n");
	ViewBuilder.Append("                  </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td class=\"addrtitle\">时　间：</td>\r\n");
	ViewBuilder.Append("                  <td>" + echo(emailinfo.postdatetime,"yyyy-MM-dd HH:mm:ss") + "</td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td class=\"addrtitle\">收件人：</td>\r\n");
	ViewBuilder.Append("                  <td>" + echo(emailinfo.touid_name) + "</td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");

	if (emailinfo.attachs>0)
	{
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <td class=\"addrtitle\" style=\"height:40px;\">附　件：</td>\r\n");
	ViewBuilder.Append("                  <td>\r\n");

	loop__id=0;
	foreach(AttachInfo item in attachlist)
	{
	loop__id++;
	ViewBuilder.Append("                   <div class=\"attachment-wrapper\" id=\"attachment_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("                      <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                        <a class=\"dropdown-toggle\" href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\" target=\"download_attach\"><img src=\"" + echo(item.icon) + "\">" + echo(item.name) + "</a>\r\n");
	ViewBuilder.Append("                        <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                          <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\" target=\"download_attach\">下载</a></li>\r\n");
	ViewBuilder.Append("                          <li><a href=\"javascript:;\" onclick=\"TUtil.openUrl('" + echo(plupath) + "pdf/index.aspx?aid=" + echo(item.id) + "');\">阅读</a></li>\r\n");
	ViewBuilder.Append("                          <li><a href=\"" + echo(plupath) + "attach/download.aspx?attachid=" + echo(emailinfo.attachid) + "&filename=" + echo(emailinfo.subject) + "_批量附件下载\" target=\"download_attach\">批量下载</a></li>\r\n");
	ViewBuilder.Append("                        </ul>\r\n");
	ViewBuilder.Append("                      </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	}//end loop
	ViewBuilder.Append("                  </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	}//end if
	ViewBuilder.Append("              </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("          <div id=\"contentDiv\">" + echo(emailinfo.content) + "</div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<iframe id=\"download_attach\" name=\"download_attach\" width=\"0\" height=\"0\"></iframe>\r\n");
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
