<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Message.Controller.msgadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Message" %>
<%@ Import namespace="FP_Message.Model" %>
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
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>发送内部短消息</title>\r\n");
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
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.datepicker.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-datepicker.zh-CN.js\"></");
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
	ViewBuilder.Append("<link href=\"/plugins/pager/pager.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/sidebar.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "editor/themes/default/default.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/kindeditor.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/lang/zh_CN.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "uploadify/jquery.uploadify.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "uploadify/uploadify.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "datepicker/WdatePicker.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        KindEditor.create('#content', {\r\n");
	ViewBuilder.Append("            resizeType: 0,\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(plupath) + "editor/uploadajax.aspx',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + echo(plupath) + "editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            newlineTag: \"br\",\r\n");
	ViewBuilder.Append("            minWidth: \"450px\",\r\n");
	ViewBuilder.Append("            pasteType: 1,\r\n");
	ViewBuilder.Append("            items: ['fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',\r\n");
	ViewBuilder.Append("					'removeformat', '|', 'image', '|', 'link', 'unlink'],\r\n");
	ViewBuilder.Append("            afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        var windows = $(\".windows\", parent.document);\r\n");
	ViewBuilder.Append("        for (var i = 0; i < windows.length; i++) {\r\n");
	ViewBuilder.Append("            var win = windows[i];\r\n");
	ViewBuilder.Append("            var win_id = $(win).attr(\"id\");\r\n");
	ViewBuilder.Append("            if (win_id.indexOf('app_message') != -1) {\r\n");
	ViewBuilder.Append("                $(win).find(\".win_title .title\").html('提醒消息 -> 发送短消息')\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        $('[rel=tooltip]').tooltip({ 'container': 'body', 'template': '<div class=\\\"tooltip\\\"><div class=\\\"tooltip-shadow\\\"><div class=\\\"tooltip-container\\\"><div class=\\\"tooltip-arrow\\\"><em><\\/em><span><\\/span><\\/div><div class=\\\"tooltip-inner\\\"><\\/div><\\/div><\\/div><\\/div>', 'animation': false });\r\n");
	ViewBuilder.Append("        $('#starttime').datepicker({ 'format': 'yyyy-mm-dd', 'language': 'zh-CN', 'weekStart': 1 });\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").height(height);\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").niceScroll({ cursorcolor: \"#ccc\", cursoropacitymin: 1, cursorwidth: 8 });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("        KindEditor.create('#comment', {\r\n");
	ViewBuilder.Append("            resizeType: 1,\r\n");
	ViewBuilder.Append("            uploadJson: '/plugins/editor/uploadajax.aspx?sortid=0',\r\n");
	ViewBuilder.Append("            fileManagerJson: '/plugins/editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            newlineTag: \"br\",\r\n");
	ViewBuilder.Append("            items: ['fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',\r\n");
	ViewBuilder.Append("                    'removeformat', '|', 'image', 'flash', 'media', '|', 'link', 'unlink'],\r\n");
	ViewBuilder.Append("            afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    var winType = 'modal';\r\n");
	ViewBuilder.Append("    if (window.ActiveXObject) {\r\n");
	ViewBuilder.Append("        var ua = navigator.userAgent.toLowerCase();\r\n");
	ViewBuilder.Append("        var ieVersion = ua.match(/msie ([\\d.]+)/)[1];\r\n");
	ViewBuilder.Append("        if (ieVersion === '8.0') {\r\n");
	ViewBuilder.Append("            winType = '';\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function selectoropen(url) {\r\n");
	ViewBuilder.Append("        TUtil.openUrl(url, winType, \"selectorwindow\", \"600\", \"400\")\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function selectorclear(fid, fname) {\r\n");
	ViewBuilder.Append("        $(\"#\" + fid) && $(\"#\" + fid).val(\"\");\r\n");
	ViewBuilder.Append("        $(\"#\" + fname) && $(\"#\" + fname).val(\"\");\r\n");
	ViewBuilder.Append("    }\r\n");
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
	ViewBuilder.Append("              <td><span class=\"td-nav-title\">发送提醒消息</span></td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("              <div class=\"pull-right\">\r\n");

	if (msginfo.id>0)
	{
	ViewBuilder.Append("                  <a style=\"margin-right:3px;\" class=\"btn\" href=\"javascript:history.go(-1)\" id=\"btn_back\">返回</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                  <a style=\"margin-right:3px;\" class=\"btn\" href=\"" + echo(backurl) + "\" id=\"btn_back3\">返回</a>\r\n");
	}//end if
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"content\" style=\"height: 740px; overflow: hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("      <div style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("        <div>\r\n");
	ViewBuilder.Append("          <form class=\"form-horizontal\" id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("          <table class=\"items table table-bordered\" style=\"font-size:13px;\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">接收人员：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                <input name=\"users\" id=\"users\" value=\"" + echo(msginfo.users) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                <textarea rows=\"3\" id=\"users_name\" name=\"users_name\" style=\"margin-bottom:0;width:500px;\" readonly=\"readOnly\">" + echo(msginfo.users_name) + "</textarea>\r\n");
	ViewBuilder.Append("                <a style=\"vertical-align:bottom;margin-left:3px;\" onclick=\"selectoropen('" + echo(plupath) + "selectuser/selectuser.aspx')\" class=\"btn btn-mini\">选择</a><a style=\"vertical-align:bottom;margin-left:3px;\" onclick=\"selectorclear('users','users_name')\" class=\"btn btn-mini\">清空</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">信息标题：</label></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\"><input name=\"subject\" id=\"subject\" type=\"text\" style=\"width:500px;\" maxlength=\"255\" value=\"" + echo(msginfo.subject) + "\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">发送内容：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                    <textarea rows=\"10\" id=\"content\" name=\"content\" style=\"margin-bottom:0;width:510px;\">" + echo(msginfo.content) + "</textarea>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">附件：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                    <input id=\"msgid\" name=\"id\" value=\"" + echo(msginfo.id) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                    <input id=\"attachid\" name=\"attachid\" value=\"" + echo(msginfo.attachid) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                    <input name=\"file_upload\" id=\"file_upload\" type=\"file\" multiple=\"multiple\" value=\"\">\r\n");
	ViewBuilder.Append("                    <div id=\"file-container\">\r\n");

	loop__id=0;
	foreach(AttachInfo item in attachlist)
	{
	loop__id++;
	ViewBuilder.Append("                        <div class=\"attachment-wrapper\" id=\"attachment_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("                            <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                            <a class=\"dropdown-toggle\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(item.id) + "\"><img width=\"16\" height=\"16\" src=\"" + echo(webpath) + "common/file/" + echo(FormatExt(item.filename)) + ".gif\">" + echo(item.name) + "</a><span class=\"size\">(" + echo(FormatSize(item.filesize)) + ")</span>\r\n");
	ViewBuilder.Append("                            <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                                <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\">下载</a></li>\r\n");
	ViewBuilder.Append("                                <li><a target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(item.id) + "\">阅读</a></li>\r\n");
	ViewBuilder.Append("                                <li><a target=\"_blank\" href=\"" + echo(plupath) + "ntko/index.aspx?aid=" + echo(item.id) + "\">编辑</a></li>\r\n");
	ViewBuilder.Append("                                <li><a onclick=\"javascript:Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=" + echo(item.id) + "');return false;\" href=\"#\">删除</a></li>\r\n");
	ViewBuilder.Append("                            </ul></div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	}//end loop
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align: right\" width=\"100\">\r\n");
	ViewBuilder.Append("                    <label class=\"control-label required\">发送时间：</label>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align: left;\">\r\n");
	ViewBuilder.Append("                    <div style=\"margin-left: 0;\" class=\"controls\">\r\n");
	ViewBuilder.Append("                        <div class=\"input-prepend\">\r\n");
	ViewBuilder.Append("                            <span class=\"add-on\"><i class=\"icon-calendar\"></i></span>\r\n");
	ViewBuilder.Append("                             <input name=\"postdatetime\" value=\"" + echo(msginfo.postdatetime) + "\" type=\"text\" id=\"postdatetime\" readonly=\"readonly\" onfocus=\"WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss'})\" style=\"width: 160px;\">\r\n");
	ViewBuilder.Append("                        </div>(不选则为立即发送)\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                  <td style=\"text-align: right\" width=\"100\">\r\n");
	ViewBuilder.Append("                      <label class=\"control-label required\">提醒消息：</label></td>\r\n");
	ViewBuilder.Append("                  <td style=\"text-align: left;\">\r\n");
	ViewBuilder.Append("                      <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                          <input type=\"checkbox\" style=\"margin-top: 4px;\" value=\"1\" checked=\"checked\" name=\"ismsg\" id=\"ismsg\">\r\n");
	ViewBuilder.Append("                          <label for=\"remind_msg\">系统消息提醒</label></label>\r\n");
	ViewBuilder.Append("                      <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                          <input type=\"checkbox\" style=\"margin-top: 4px;\" value=\"1\" name=\"issms\" id=\"issms\">\r\n");
	ViewBuilder.Append("                          <label for=\"remind_sms\">手机短信提醒</label></label>\r\n");
	ViewBuilder.Append("                  </td>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\"></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                  <button class=\"btn btn-primary\" id=\"btn_send\" type=\"submit\" name=\"btn_send\"><i class=\"icon-mail-send\"></i>&nbsp;确定发送</button>\r\n");

	if (msginfo.id>0)
	{
	ViewBuilder.Append("                  <a style=\"margin-right:3px;\" class=\"btn\" href=\"javascript:history.go(-1)\" id=\"btn_back1\">返回</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                  <a style=\"margin-right:3px;\" class=\"btn\" href=\"" + echo(backurl) + "\" id=\"btn_back2\">返回</a>\r\n");
	}//end if
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("           </tbody>\r\n");
	ViewBuilder.Append("          </table>\r\n");
	ViewBuilder.Append("          </form>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $('#file_upload').uploadify({\r\n");
	ViewBuilder.Append("        'swf': '" + echo(plupath) + "uploadify/uploadify.swf',\r\n");
	ViewBuilder.Append("        'uploader': '" + echo(plupath) + "attach/upload.aspx',\r\n");
	ViewBuilder.Append("        \"formData\": { 'attachid': '" + echo(msginfo.attachid) + "', 'status': '" + echo(msg_status) + "', 'app': '" + echo(setupinfo.markup) + "', 'postid': '" + echo(msginfo.id) + "' },\r\n");
	ViewBuilder.Append("        'fileTypeExts': '" + echo(AttachBll.GetAttachTypeExts()) + "',\r\n");
	ViewBuilder.Append("        'onUploadSuccess': function (file, data, response) {\r\n");
	ViewBuilder.Append("            var obj = (new Function(\"return \" + data))();\r\n");
	ViewBuilder.Append("            if (obj.msg == '') {\r\n");
	ViewBuilder.Append("                var html = \"<div class=\\\"attachment-wrapper\\\" id=\\\"attachment_\" + obj.aid + \"\\\">\";\r\n");
	ViewBuilder.Append("                html += \"<div class=\\\"dropdown clearfix\\\">\";\r\n");
	ViewBuilder.Append("                html += \"<a class=\\\"dropdown-toggle\\\" href=\\\"" + echo(plupath) + "pdf/index.aspx?aid=\" + obj.aid + \"\\\"><img src=\\\"" + echo(webpath) + "common/file/\" + obj.filetype + \".gif\\\" />\" + obj.name + \"</a><span class=\\\"size\\\">(\" + obj.size + \")</span>\";\r\n");
	ViewBuilder.Append("                html += \"<ul class=\\\"dropdown-menu\\\">\";\r\n");
	ViewBuilder.Append("                html += \"<li><a href=\\\"" + echo(plupath) + "attach/download.aspx?aid=\" + obj.aid + \"\\\">下载</a></li>\";\r\n");
	ViewBuilder.Append("                html += \"<li><a target=\\\"_blank\\\" href=\\\"" + echo(plupath) + "pdf/index.aspx?aid=\" + obj.aid + \"\\\">阅读</a></li>\";\r\n");
	ViewBuilder.Append("                html += \"<li><a target=\\\"_blank\\\" href=\\\"" + echo(plupath) + "ntko/index.aspx?aid=\" + obj.aid + \"\\\">编辑</a></li>\";\r\n");
	ViewBuilder.Append("                html += \"<li><a onclick=\\\"javascript:Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=\" + obj.aid + \"');return false;\\\" href=\\\"#\\\">删除</a></li>\";\r\n");
	ViewBuilder.Append("                html += \"</div>\";\r\n");
	ViewBuilder.Append("                html += \"</div>\";\r\n");
	ViewBuilder.Append("                $(\"#file-container\").append(html);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else {\r\n");
	ViewBuilder.Append("                alert(obj.msg);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
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
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("   <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("       layer.msg('发送成功！', 2, 1);\r\n");
	ViewBuilder.Append("       var bar = 0;\r\n");
	ViewBuilder.Append("       count();\r\n");
	ViewBuilder.Append("       function count() {\r\n");
	ViewBuilder.Append("           bar = bar + 4;\r\n");
	ViewBuilder.Append("           if (bar < 80) {\r\n");
	ViewBuilder.Append("               setTimeout(\"count()\", 100);\r\n");
	ViewBuilder.Append("           }\r\n");
	ViewBuilder.Append("           else {\r\n");
	ViewBuilder.Append("               window.location.href = \"sendlist.aspx\";\r\n");
	ViewBuilder.Append("           }\r\n");
	ViewBuilder.Append("       }\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	}//end if
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
