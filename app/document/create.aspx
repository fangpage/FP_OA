<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Document.Controller.create" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Document" %>
<%@ Import namespace="FP_Document.Model" %>
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
	ViewBuilder.Append("<title>新建发文</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"> \r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
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
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"/oa/public/css/fp-bootstrap.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"/oa/public/css/base.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<link href=\"/oa/public/css/global.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script src=\"/oa/public/js/util.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "editor/themes/default/default.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "editor/kindeditor.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "editor/lang/zh_CN.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "uploadify/jquery.uploadify.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "uploadify/uploadify.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("<script src=\"/oa/public/js/attachment.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        KindEditor.create('#content', {\r\n");
	ViewBuilder.Append("            resizeType: 0,\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(plupath) + "editor/uploadajax.aspx',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + echo(plupath) + "editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            newlineTag: \"br\",\r\n");
	ViewBuilder.Append("            minWidth: \"600px\",\r\n");
	ViewBuilder.Append("            pasteType: 1,\r\n");
	ViewBuilder.Append("            items: ['fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',\r\n");
	ViewBuilder.Append("					'removeformat', '|', 'image', 'flash', 'media', '|', 'link', 'unlink'],\r\n");
	ViewBuilder.Append("            afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").height(height - $('#page-navbar').outerHeight());\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").niceScroll({ cursorcolor: \"#ccc\", cursoropacitymin: 1, cursorwidth: 8 });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("        $(\"#btn_back\").click(function () {\r\n");
	ViewBuilder.Append("            window.location.href = \"sendlist.aspx\";\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    var winType = 'modal';\r\n");
	ViewBuilder.Append("    if (window.ActiveXObject) {\r\n");
	ViewBuilder.Append("        var ua = navigator.userAgent.toLowerCase();\r\n");
	ViewBuilder.Append("        var ieVersion = ua.match(/msie ([\\d.]+)/)[1];\r\n");
	ViewBuilder.Append("        if (ieVersion === '8.0') {\r\n");
	ViewBuilder.Append("            winType = '';\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function selectoropen2(toid, toname) {\r\n");
	ViewBuilder.Append("        var url = '" + echo(plupath) + "selectuser/selectorg.aspx?to_id=' + toid + '&to_name=' + toname;\r\n");
	ViewBuilder.Append("        TUtil.openUrl(url, winType, \"selectorwindow\", \"600\", \"500\")\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    function selectorclear(fid, fname) {\r\n");
	ViewBuilder.Append("        $(\"#\" + fid) && $(\"#\" + fid).val(\"\");\r\n");
	ViewBuilder.Append("        $(\"#\" + fname) && $(\"#\" + fname).val(\"\");\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"page-navbar\">\r\n");
	ViewBuilder.Append("  <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("    <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td><span class=\"td-nav-title\">新建发文</span></td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <div class=\"pull-right\">\r\n");
	ViewBuilder.Append("              <button class=\"btn btn-danger\" id=\"btn_send\" name=\"btn_send\" type=\"button\">发送</button>\r\n");
	ViewBuilder.Append("              <button class=\"btn btn-primary\" id=\"btn_save\" name=\"btn_save\" type=\"button\">保存</button>\r\n");
	ViewBuilder.Append("              <button class=\"btn\" id=\"btn_back\" name=\"btn_back\" type=\"button\">返回</button>\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\" style=\"height: 739px; overflow: hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("  <div style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("     <form id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\" class=\"form-horizontal MultiFile-intercepted\" enctype=\"multipart/form-data\">\r\n");
	ViewBuilder.Append("          <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("          <table class=\"fptable table-bordered\" style=\"font-size:13px;border-top: 1px solid #dddddd;\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"title\">发文标题：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\" colspan=\"3\"><input name=\"title\" id=\"title\" type=\"text\" style=\"width:700px;\" value=\"" + echo(documentinfo.title) + "\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"number\">文号：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\"><input name=\"number\" id=\"number\" type=\"text\" style=\"width:250px;\" value=\"" + echo(documentinfo.number) + "\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"sortid\">发文类型：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                <select id=\"sortid\" name=\"sortid\" style=\"width:262px;\">\r\n");
	ViewBuilder.Append("                    <option value=\"0\">选择发文类型</option>\r\n");

	loop__id=0;
	foreach(SortInfo item in sortlist)
	{
	loop__id++;
	ViewBuilder.Append("                    <option \r\n");

	if (item.id==documentinfo.sortid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"" + echo(item.id) + "\">" + echo(item.name) + "</option>\r\n");
	}//end loop
	ViewBuilder.Append("                </select>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"signname\">签发人：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\"><input name=\"signname\" id=\"signname\" type=\"text\" style=\"width:250px;\" value=\"" + echo(documentinfo.signname) + "\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"signdate\">签发日期：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\"><input name=\"signdate\" id=\"signdate\" type=\"text\" style=\"width:250px;\" value=\"" + echo(documentinfo.signdate) + "\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"sendorg\">发文单位：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\"><input name=\"sendorg\" id=\"sendorg\" type=\"text\" style=\"width:250px;\" value=\"" + echo(documentinfo.sendorg) + "\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"senddate\">发文日期：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\"><input name=\"senddate\" id=\"senddate\" type=\"text\" style=\"width:250px;\" value=\"" + echo(documentinfo.senddate) + "\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"editor\">拟稿人：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\"><input name=\"editor\" id=\"editor\" type=\"text\" style=\"width:250px;\" value=\"" + echo(documentinfo.editor) + "\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"editor_tel\">拟稿人联系方式：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\"><input name=\"editor_tel\" id=\"editor_tel\" type=\"text\" style=\"width:250px;\" value=\"" + echo(documentinfo.editor_tel) + "\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"priority\">急缓：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                    <select id=\"priority\" name=\"priority\" style=\"width:262px;\">\r\n");
	ViewBuilder.Append("                        <option value=\"0\">平急</option>\r\n");
	ViewBuilder.Append("                        <option \r\n");

	if (documentinfo.priority==1)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"1\">加急</option>\r\n");
	ViewBuilder.Append("                        <option \r\n");

	if (documentinfo.priority==2)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"2\">特急</option>\r\n");
	ViewBuilder.Append("                        <option \r\n");

	if (documentinfo.priority==3)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(" value=\"3\">特提</option>\r\n");
	ViewBuilder.Append("                    </select>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"limitday\">签收期限：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\"><input name=\"limitday\" id=\"limitday\" type=\"text\" style=\"width:250px;\" value=\"" + echo(documentinfo.limitday) + "\">天</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"sendto\">发：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\" colspan=\"3\"><input name=\"sendto\" id=\"sendto\" type=\"text\" style=\"width:600px;\" value=\"" + echo(documentinfo.sendto) + "\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"mainto\">报：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\" colspan=\"3\"><input name=\"mainto\" id=\"mainto\" type=\"text\" style=\"width:600px;\" value=\"" + echo(documentinfo.mainto) + "\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"copyto\">送：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\" colspan=\"3\"><input name=\"copyto\" id=\"copyto\" type=\"text\" style=\"width:600px;\" value=\"" + echo(documentinfo.copyto) + "\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\">接收单位：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\" colspan=\"3\">\r\n");
	ViewBuilder.Append("                    <input name=\"departs\" id=\"departs\" type=\"hidden\" value=\"" + echo(documentinfo.departs) + "\">\r\n");
	ViewBuilder.Append("                    <textarea id=\"departs_name\" name=\"departs_name\" style=\"margin-bottom:0;width:600px;height:60px;\" readonly=\"readonly\">" + echo(documentinfo.departs_name) + "</textarea>\r\n");
	ViewBuilder.Append("                    <a style=\"vertical-align:bottom;margin-left:3px;\" onclick=\"selectoropen2('departs','departs_name')\" class=\"btn btn-mini\">选择部门</a><a style=\"vertical-align:bottom;margin-left:3px;\" onclick=\"selectorclear('departs','departs_name')\" class=\"btn btn-mini\">清空</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\">\r\n");
	ViewBuilder.Append("                    <label class=\"control-label required\" style=\"width:120px;\">发文正文：</label>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\" colspan=\"3\">\r\n");
	ViewBuilder.Append("                    <input id=\"attachid\" name=\"attachid\" value=\"" + echo(documentinfo.attachid) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                    <input name=\"file_upload\" id=\"file_upload\" type=\"file\" multiple=\"multiple\" value=\"\">\r\n");
	ViewBuilder.Append("                    <div id=\"file-container\">\r\n");

	loop__id=0;
	foreach(AttachInfo item in attachlist)
	{
	loop__id++;
	ViewBuilder.Append("                        <div class=\"attachment-wrapper\" id=\"attachment_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("                            <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                            <a class=\"dropdown-toggle\" href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\" target=\"download_attach\"><img width=\"16\" height=\"16\" src=\"" + echo(webpath) + "common/file/" + echo(FormatExt(item.filename)) + ".gif\">" + echo(item.name) + "</a>\r\n");
	ViewBuilder.Append("                            <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                               <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\" target=\"download_attach\">下载</a></li>\r\n");
	ViewBuilder.Append("                               <li><a href=\"javascript:;\" onclick=\"TUtil.openUrl('" + echo(plupath) + "pdf/index.aspx?aid=" + echo(item.id) + "');\">阅读</a></li>\r\n");
	ViewBuilder.Append("                               <li><a href=\"javascript:;\" onclick=\"TUtil.openUrl('" + echo(plupath) + "ntko/index.aspx?aid=" + echo(item.id) + "');\">编辑</a></li>\r\n");
	ViewBuilder.Append("                               <li><a href=\"javascript:;\" onclick=\"Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=" + echo(item.id) + "');return false;\">删除</a></li>\r\n");
	ViewBuilder.Append("                            </ul>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	}//end loop
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:right;background-color:#e3e7ea;\" width=\"120\"><label class=\"control-label required\" style=\"width:120px;\" for=\"content\">备注：</label></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:left;\" colspan=\"3\">\r\n");
	ViewBuilder.Append("                    <textarea id=\"content\" name=\"content\" style=\"width:600px; height:150px\">" + echo(documentinfo.content) + "</textarea>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("           </tbody>\r\n");
	ViewBuilder.Append("          </table>\r\n");
	ViewBuilder.Append("     </form>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<iframe id=\"download_attach\" name=\"download_attach\" width=\"0\" height=\"0\"></iframe>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#file_upload').uploadify({\r\n");
	ViewBuilder.Append("            'swf': '" + echo(plupath) + "uploadify/uploadify.swf',\r\n");
	ViewBuilder.Append("            'uploader': '" + echo(plupath) + "attach/upload.aspx',\r\n");
	ViewBuilder.Append("            \"formData\": {'token':'" + echo(token) + "','attachid': '" + echo(documentinfo.attachid) + "', 'app': '" + echo(setupinfo.markup) + "', 'postid': '" + echo(documentinfo.id) + "'},\r\n");
	ViewBuilder.Append("            'fileTypeExts': '" + echo(AttachBll.GetAttachTypeExts()) + "',\r\n");
	ViewBuilder.Append("            'onUploadSuccess': function (file, data, response) {\r\n");
	ViewBuilder.Append("                var obj = (new Function(\"return \" + data))();\r\n");
	ViewBuilder.Append("                if (obj.errcode == 0) {\r\n");
	ViewBuilder.Append("                    var html = \"<div class=\\\"attachment-wrapper\\\" id=\\\"attachment_\" + obj.aid + \"\\\">\";\r\n");
	ViewBuilder.Append("                    html += \"<div class=\\\"dropdown clearfix\\\">\";\r\n");
	ViewBuilder.Append("                    html += \"<a class=\\\"dropdown-toggle\\\" href=\\\"" + echo(plupath) + "attach/download.aspx?aid=\" + obj.aid + \"\\\" target=\\\"download_attach\\\"><img src=\\\"\" + obj.icon + \"\\\" />\" + obj.name + \"</a>\";\r\n");
	ViewBuilder.Append("                    html += \"<ul class=\\\"dropdown-menu\\\">\";\r\n");
	ViewBuilder.Append("                    html += \"<li><a href=\\\"" + echo(plupath) + "attach/download.aspx?aid=\" + obj.aid + \"\\\" target=\\\"download_attach\\\">下载</a></li>\";\r\n");
	ViewBuilder.Append("                    html += \"<li><a href=\\\"javascript:;\\\" onclick=\\\"TUtil.openUrl('" + echo(plupath) + "pdf/index.aspx?aid=\" + obj.aid + \"');\\\">阅读</a></li>\";\r\n");
	ViewBuilder.Append("                    html += \"<li><a href=\\\"javascript:;\\\" onclick=\\\"TUtil.openUrl('" + echo(plupath) + "ntko/index.aspx?aid=\" + obj.aid + \"');\\\">编辑</a></li>\";\r\n");
	ViewBuilder.Append("                    html += \"<li><a href=\\\"javascript:;\\\" onclick=\\\"javascript:Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=\" + obj.aid + \"');return false;\\\">删除</a></li>\";\r\n");
	ViewBuilder.Append("                    html += \"</ul>\";\r\n");
	ViewBuilder.Append("                    html += \"</div>\";\r\n");
	ViewBuilder.Append("                    html += \"</div>\";\r\n");
	ViewBuilder.Append("                    $(\"#file-container\").append(html);\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                else {\r\n");
	ViewBuilder.Append("                    alert(obj.errmsg);\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_save\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"save\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_send\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"send\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");

	if (action=="send")
	{
	ViewBuilder.Append("    layer.msg('发送成功！', 2, 1);\r\n");
	ViewBuilder.Append("    var bar = 0;\r\n");
	ViewBuilder.Append("    count();\r\n");
	ViewBuilder.Append("    function count() {\r\n");
	ViewBuilder.Append("        bar = bar + 4;\r\n");
	ViewBuilder.Append("        if (bar < 80) {\r\n");
	ViewBuilder.Append("            setTimeout(\"count()\", 100);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else {\r\n");
	ViewBuilder.Append("            window.location.href = \"sendlist.aspx\";\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	}
	else
	{
	ViewBuilder.Append("    layer.msg('保存成功！', 2, 1);\r\n");
	ViewBuilder.Append("    var bar = 0;\r\n");
	ViewBuilder.Append("    count();\r\n");
	ViewBuilder.Append("    function count() {\r\n");
	ViewBuilder.Append("        bar = bar + 4;\r\n");
	ViewBuilder.Append("        if (bar < 80) {\r\n");
	ViewBuilder.Append("            setTimeout(\"count()\", 100);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else {\r\n");
	ViewBuilder.Append("            window.location.href = \"create.aspx?id=" + echo(documentinfo.id) + "\";\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	}//end if
	ViewBuilder.Append("</");
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
