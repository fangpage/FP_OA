<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Email.Controller.create" %>
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
	ViewBuilder.Append("<!--<![endif]-->\r\n");
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("    <title>新建邮件</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("    <meta name=\"renderer\" content=\"webkit\">\r\n");
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
	ViewBuilder.Append("    <link href=\"statics/css/global.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(plupath) + "editor/themes/default/default.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("    <script src=\"" + echo(plupath) + "editor/kindeditor.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script src=\"" + echo(plupath) + "editor/lang/zh_CN.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("    <script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link href=\"" + echo(plupath) + "uploadify/uploadify.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("    <script src=\"" + echo(plupath) + "uploadify/jquery.uploadify.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script src=\"/oa/public/js/attachment.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            $(\"#btnsend\").click(function () {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"send\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(\"#btnsave\").click(function () {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"save\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            KindEditor.create('#content', {\r\n");
	ViewBuilder.Append("                resizeType: 1,\r\n");
	ViewBuilder.Append("                uploadJson: '" + echo(plupath) + "editor/uploadajax.aspx?sortid=0',\r\n");
	ViewBuilder.Append("                fileManagerJson: '" + echo(plupath) + "editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("                items: ['fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',\r\n");
	ViewBuilder.Append("                        'removeformat', '|', 'image', 'flash', 'media', '|', 'link', 'unlink'],\r\n");
	ViewBuilder.Append("                afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        function selectoropen(url) {\r\n");
	ViewBuilder.Append("            TUtil.openUrl(url, winType, \"selectorwindow\", \"600\", \"400\")\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        function selectorclear(fid, fname) {\r\n");
	ViewBuilder.Append("            $(\"#\" + fid) && $(\"#\" + fid).val(\"\");\r\n");
	ViewBuilder.Append("            $(\"#\" + fname) && $(\"#\" + fname).val(\"\");\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("    <div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("        <div>\r\n");
	ViewBuilder.Append("            <div>\r\n");
	ViewBuilder.Append("                <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("                    <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("                        <tbody>\r\n");
	ViewBuilder.Append("                            <tr>\r\n");
	ViewBuilder.Append("                                <td><span class=\"td-nav-title\">新建邮件</span></td>\r\n");
	ViewBuilder.Append("                                <td>\r\n");
	ViewBuilder.Append("                                    <div class=\"pull-right\">\r\n");
	ViewBuilder.Append("                                        <button class=\"btn btn-success\" style=\"margin-right: 3px;\" id=\"btnsend\" name=\"btnsend\" type=\"button\">立刻发送</button>\r\n");
	ViewBuilder.Append("                                        <button class=\"btn btn-primary\" style=\"margin-right: 3px;\" id=\"btnsave\" name=\"btnsave\" type=\"button\">存草稿</button>\r\n");

	if (tid!=""||action!="")
	{
	ViewBuilder.Append("                                        <a onclick=\"window.close();\" style=\"margin-right: 3px;\" class=\"btn\" id=\"btn_close\">关闭</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                        <a class=\"btn\" style=\"margin-right: 6px;\" href=\"" + echo(backurl) + "\">返回</a>\r\n");
	}//end if
	ViewBuilder.Append("                                    </div>\r\n");
	ViewBuilder.Append("                                </td>\r\n");
	ViewBuilder.Append("                            </tr>\r\n");
	ViewBuilder.Append("                        </tbody>\r\n");
	ViewBuilder.Append("                    </table>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"content\" style=\"height: 740px; overflow: hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("                <div style=\"padding: 5px 10px;\">\r\n");
	ViewBuilder.Append("                    <div>\r\n");
	ViewBuilder.Append("                        <form id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\" class=\"form-horizontal MultiFile-intercepted\" enctype=\"multipart/form-data\">\r\n");
	ViewBuilder.Append("                            <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                            <table class=\"items table table-bordered\" style=\"font-size: 13px;\">\r\n");
	ViewBuilder.Append("                                <tbody>\r\n");
	ViewBuilder.Append("                                    <tr>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: right\" width=\"100\" valign=\"middle\"><label class=\"control-label required\" for=\"title\">收件人：</label></td>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: left;\">\r\n");
	ViewBuilder.Append("                                            <input name=\"users\" id=\"users\" value=\"" + echo(emailinfo.touid) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                                            <textarea class=\"span6\" rows=\"2\" id=\"users_name\" name=\"users_name\" style=\"margin-bottom: 0; width: 340px;\" readonly=\"readOnly\">" + echo(emailinfo.touid_name) + "</textarea>\r\n");
	ViewBuilder.Append("                                            <a style=\"margin: 0 4px; vertical-align: bottom;\" onclick=\"selectoropen('" + echo(plupath) + "selectuser/selectuser.aspx')\" class=\"btn btn-success btn-small\" title=\"添加收件人\">添加</a>\r\n");
	ViewBuilder.Append("                                            <a style=\"margin: 0 4px; vertical-align: bottom;\" onclick=\"selectorclear('users','users_name')\" class=\"btn btn-small\" title=\"清空收件人\">清空</a>\r\n");
	ViewBuilder.Append("                                        </td>\r\n");
	ViewBuilder.Append("                                    </tr>\r\n");
	ViewBuilder.Append("                                    <tr>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: right\" width=\"100\">\r\n");
	ViewBuilder.Append("                                            <label class=\"control-label required\" for=\"title\">邮件主题：</label></td>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: left;\">\r\n");
	ViewBuilder.Append("                                            <input name=\"subject\" id=\"subject\" type=\"text\" style=\"width: 450px;\" value=\"" + echo(emailinfo.subject) + "\"></td>\r\n");
	ViewBuilder.Append("                                    </tr>\r\n");
	ViewBuilder.Append("                                    <tr>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: right\" valign=\"middle\">\r\n");
	ViewBuilder.Append("                                            <label class=\"control-label required\">邮件内容：</label></td>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: left\">\r\n");
	ViewBuilder.Append("                                            <textarea id=\"content\" name=\"content\" style=\"width: 98%; height: 300px\" cols=\"20\" rows=\"2\">" + echo(emailinfo.content) + "</textarea>\r\n");
	ViewBuilder.Append("                                        </td>\r\n");
	ViewBuilder.Append("                                    </tr>\r\n");
	ViewBuilder.Append("                                    <tr>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: right\" width=\"100\">\r\n");
	ViewBuilder.Append("                                            <label class=\"control-label required\" for=\"title\">邮件附件：</label></td>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: left;\">\r\n");
	ViewBuilder.Append("                                            <div>\r\n");
	ViewBuilder.Append("                                                <input id=\"attachid\" name=\"attachid\" value=\"" + echo(emailinfo.attachid) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                                                <input name=\"file_upload\" id=\"file_upload\" type=\"file\" multiple=\"multiple\" value=\"\">\r\n");
	ViewBuilder.Append("                                                <div id=\"file-container\">\r\n");

	loop__id=0;
	foreach(AttachInfo item in attachlist)
	{
	loop__id++;
	ViewBuilder.Append("                                                    <div class=\"attachment-wrapper\" id=\"attachment_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("                                                        <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                                                            <a class=\"dropdown-toggle\" href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\" target=\"download_attach\">\r\n");
	ViewBuilder.Append("                                                                <img width=\"16\" height=\"16\" src=\"" + echo(item.icon) + "\">" + echo(item.name) + "\r\n");
	ViewBuilder.Append("                                                            </a>\r\n");
	ViewBuilder.Append("                                                            <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                                                                <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\" target=\"download_attach\">下载</a></li>\r\n");
	ViewBuilder.Append("                                                                <li><a href=\"javascript:;\" onclick=\"TUtil.openUrl('" + echo(plupath) + "pdf/index.aspx?aid=" + echo(item.id) + "');\">阅读</a></li>\r\n");
	ViewBuilder.Append("                                                                <li><a href=\"javascript:;\" onclick=\"TUtil.openUrl('" + echo(plupath) + "ntko/index.aspx?aid=" + echo(item.id) + "');\">编辑</a></li>\r\n");
	ViewBuilder.Append("                                                                <li><a href=\"javascript:;\" onclick=\"Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=" + echo(item.id) + "');return false;\">删除</a></li>\r\n");
	ViewBuilder.Append("                                                            </ul>\r\n");
	ViewBuilder.Append("                                                        </div>\r\n");
	ViewBuilder.Append("                                                    </div>\r\n");
	}//end loop
	ViewBuilder.Append("                                                </div>\r\n");
	ViewBuilder.Append("                                            </div>\r\n");
	ViewBuilder.Append("                                        </td>\r\n");
	ViewBuilder.Append("                                    </tr>\r\n");
	ViewBuilder.Append("                                    <tr>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: right\" width=\"100\">\r\n");
	ViewBuilder.Append("                                            <label class=\"control-label required\" for=\"title\">重要程度：</label></td>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: left;\">\r\n");
	ViewBuilder.Append("                                            <select class=\"span2\" name=\"important\" id=\"important\">\r\n");
	ViewBuilder.Append("                                                <option value=\"0\" \r\n");

	if (emailinfo.important==0)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">一般邮件</option>\r\n");
	ViewBuilder.Append("                                                <option value=\"1\" \r\n");

	if (emailinfo.important==1)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">重要邮件</option>\r\n");
	ViewBuilder.Append("                                                <option value=\"2\" \r\n");

	if (emailinfo.important==2)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">非常重要</option>\r\n");
	ViewBuilder.Append("                                            </select>\r\n");
	ViewBuilder.Append("                                        </td>\r\n");
	ViewBuilder.Append("                                    </tr>\r\n");
	ViewBuilder.Append("                                    <tr>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: right\" width=\"100\">\r\n");
	ViewBuilder.Append("                                            <label class=\"control-label required\">提醒消息：</label></td>\r\n");
	ViewBuilder.Append("                                        <td style=\"text-align: left;\">\r\n");
	ViewBuilder.Append("                                            <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                                                <input type=\"checkbox\" style=\"margin-top: 4px;\" value=\"1\" checked=\"checked\" name=\"ismsg\" id=\"ismsg\">\r\n");
	ViewBuilder.Append("                                                <label for=\"ismsg\">系统消息提醒</label></label>\r\n");
	ViewBuilder.Append("                                            <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                                                <input type=\"checkbox\" style=\"margin-top: 4px;\" value=\"1\" name=\"issms\" id=\"issms\">\r\n");
	ViewBuilder.Append("                                                <label for=\"issms\">手机短信提醒</label></label>\r\n");
	ViewBuilder.Append("                                        </td>\r\n");
	ViewBuilder.Append("                                    </tr>\r\n");
	ViewBuilder.Append("                                </tbody>\r\n");
	ViewBuilder.Append("                            </table>\r\n");
	ViewBuilder.Append("                        </form>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <iframe id=\"download_attach\" name=\"download_attach\" width=\"0\" height=\"0\"></iframe>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            $('#file_upload').uploadify({\r\n");
	ViewBuilder.Append("                'swf': '" + echo(plupath) + "uploadify/uploadify.swf',\r\n");
	ViewBuilder.Append("                'uploader': '" + echo(plupath) + "attach/upload.aspx',\r\n");
	ViewBuilder.Append("                \"formData\": { 'token': '" + echo(token) + "', 'attachid': '" + echo(emailinfo.attachid) + "', 'app': '" + echo(setupinfo.markup) + "', 'postid': '" + echo(emailinfo.id) + "' },\r\n");
	ViewBuilder.Append("                'fileTypeExts': '" + echo(AttachBll.GetAttachTypeExts()) + "',\r\n");
	ViewBuilder.Append("                'onUploadSuccess': function (file, data) {\r\n");
	ViewBuilder.Append("                    var obj = (new Function(\"return \" + data))();\r\n");
	ViewBuilder.Append("                    if (obj.errcode == 0) {\r\n");
	ViewBuilder.Append("                        var html = \"<div class=\\\"attachment-wrapper\\\" id=\\\"attachment_\" + obj.aid + \"\\\">\";\r\n");
	ViewBuilder.Append("                        html += \"<div class=\\\"dropdown clearfix\\\">\";\r\n");
	ViewBuilder.Append("                        html += \"<a class=\\\"dropdown-toggle\\\" href=\\\"" + echo(plupath) + "attach/download.aspx?aid=\" + obj.aid + \"\\\" target=\\\"download_attach\\\"><img src=\\\"\" + obj.icon + \"\\\" />\" + obj.name + \"</a>\";\r\n");
	ViewBuilder.Append("                        html += \"<ul class=\\\"dropdown-menu\\\">\";\r\n");
	ViewBuilder.Append("                        html += \"<li><a href=\\\"" + echo(plupath) + "attach/download.aspx?aid=\" + obj.aid + \"\\\" target=\\\"download_attach\\\">下载</a></li>\";\r\n");
	ViewBuilder.Append("                        html += \"<li><a href=\\\"javascript:;\\\" onclick=\\\"TUtil.openUrl('" + echo(plupath) + "pdf/index.aspx?aid=\" + obj.aid + \"');\\\">阅读</a></li>\";\r\n");
	ViewBuilder.Append("                        html += \"<li><a href=\\\"javascript:;\\\" onclick=\\\"TUtil.openUrl('" + echo(plupath) + "ntko/index.aspx?aid=\" + obj.aid + \"');\\\">编辑</a></li>\";\r\n");
	ViewBuilder.Append("                        html += \"<li><a href=\\\"javascript:;\\\" onclick=\\\"javascript:Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=\" + obj.aid + \"');return false;\\\">删除</a></li>\";\r\n");
	ViewBuilder.Append("                        html += \"</ul>\";\r\n");
	ViewBuilder.Append("                        html += \"</div>\";\r\n");
	ViewBuilder.Append("                        html += \"</div>\";\r\n");
	ViewBuilder.Append("                        $(\"#file-container\").append(html);\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                    else {\r\n");
	ViewBuilder.Append("                        alert(obj.errmsg);\r\n");
	ViewBuilder.Append("                    }\r\n");
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
