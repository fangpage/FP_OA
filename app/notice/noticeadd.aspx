<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Notice.Controller.noticeadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Notice" %>
<%@ Import namespace="FP_Notice.Model" %>
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
	ViewBuilder.Append("    <title>发布通知公告</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("    <meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-datepicker.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "pager/pager.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "layer/skin/layer.css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "uploadify/uploadify.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/sidebar.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"themes/default/css/umeditor.css\">\r\n");
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
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "layer/layer.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "uploadify/jquery.uploadify.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"/oa/public/js/attachment.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"umeditor.config.js\" charset=\"utf-8\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"umeditor.min.js\" charset=\"utf-8\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"lang/zh-cn/zh-cn.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <style type=\"text/css\">\r\n");
	ViewBuilder.Append("    span.required {\r\n");
	ViewBuilder.Append("        display: none;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .search-form .control-group {\r\n");
	ViewBuilder.Append("        display: inline-block;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .search-form .control-label {\r\n");
	ViewBuilder.Append("        width: 100px;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .search-form .controls {\r\n");
	ViewBuilder.Append("        margin-left: 120px;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .search-form .control-group {\r\n");
	ViewBuilder.Append("        margin-bottom: 10px;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .editorbox .edui-container {\r\n");
	ViewBuilder.Append("        width: 100% !important;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    #content {\r\n");
	ViewBuilder.Append("        width: 100% !important;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("        #content table {\r\n");
	ViewBuilder.Append("            width: 98% !important;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    //$(function () {\r\n");
	ViewBuilder.Append("    //    KindEditor.create('#content', {\r\n");
	ViewBuilder.Append("    //        resizeType: 0,\r\n");
	ViewBuilder.Append("    //        uploadJson: '" + echo(plupath) + "editor/uploadajax.aspx',\r\n");
	ViewBuilder.Append("    //        fileManagerJson: '" + echo(plupath) + "editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("    //        minWidth: \"600px\",\r\n");
	ViewBuilder.Append("    //        pasteType: 1,\r\n");
	ViewBuilder.Append("    //        items: ['fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',\r\n");
	ViewBuilder.Append("    //				'removeformat', '|', 'image', 'flash', 'media', '|', 'link', 'unlink'],\r\n");
	ViewBuilder.Append("    //        afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("    //    });\r\n");
	ViewBuilder.Append("    //});\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        //实例化编辑器\r\n");
	ViewBuilder.Append("        var um = UM.getEditor('content');\r\n");
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
	ViewBuilder.Append("    <!--侧边栏-->\r\n");
	ViewBuilder.Append("<div class=\"sidebar\" style=\"height: 780px; overflow-y: hidden; outline: none;\" tabindex=\"5001\">\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_logo T_icon\"><img src=\"" + echo(setupinfo.icon) + "\" style=\"width:64px;height:64px;\"></div>\r\n");
	ViewBuilder.Append("    <div class=\"sidebar_content T_bg\" style=\"padding-top:10px;\">\r\n");
	ViewBuilder.Append("    <ul class=\"nav nav-list\">\r\n");

	if (isperm)
	{
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="noticeadd.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"noticeadd.aspx?backurl=" + echo(pagename) + "\"><i class=\"icon-pencil-2\"></i>发布公告</a></li>\r\n");
	}//end if
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="noticelist.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"noticelist.aspx\"><i class=\"icon-envelop-3\"></i>通知公告<span class=\"badge badge-important pull-right\">" + echo(countinfo.count) + "</span></a></li>\r\n");

	if (isperm)
	{
	ViewBuilder.Append("        <li \r\n");

	if (pagename=="noticemanage.aspx")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"noticemanage.aspx\"><i class=\"icon-mail-send\"></i>公告管理</a></li>\r\n");
	}//end if
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
	ViewBuilder.Append("              <td><span class=\"td-nav-title\">发布通知公告</span></td>\r\n");
	ViewBuilder.Append("              <td>\r\n");
	ViewBuilder.Append("                  <div class=\"pull-right\">\r\n");

	if (id>0)
	{
	ViewBuilder.Append("                    <button type=\"button\" class=\"btn btn-danger\" id=\"btn_save\" name=\"btn_save\">保存</button>\r\n");
	}
	else
	{
	ViewBuilder.Append("                    <button type=\"button\" class=\"btn btn-danger\" id=\"btn_send\" name=\"btn_send\">发布</button>\r\n");
	}//end if
	ViewBuilder.Append("                  </div>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <form enctype=\"multipart/form-data\" class=\"form-horizontal MultiFile-intercepted\" id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" value=\"\" name=\"action\" id=\"action\">\r\n");
	ViewBuilder.Append("    <div class=\"content\" style=\"margin-left: 180px; height:740px; overflow:hidden; outline: none;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("      <div style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("         <table class=\"items table table-bordered\" style=\"font-size:13px;\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">公告标题：</label></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\"><input name=\"title\" id=\"title\" type=\"text\" style=\"width:500px;\" maxlength=\"255\" value=\"" + echo(noticeinfo.title) + "\"></td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");

	if (typelist.Count>0)
	{
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">公告类型：</label></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                  <select name=\"typeid\" id=\"typeid\">\r\n");

	loop__id=0;
	foreach(TypeInfo item in typelist)
	{
	loop__id++;
	ViewBuilder.Append("                    <option value=\"" + echo(item.id) + "\" \r\n");

	if (item.id==noticeinfo.typeid)
	{
	ViewBuilder.Append(" selected=\"selected\" \r\n");
	}//end if
	ViewBuilder.Append(">" + echo(item.name) + "</option>\r\n");
	}//end if
	ViewBuilder.Append("                  </select>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end if
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">接收部门：</label></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("              <input name=\"departs\" id=\"departs\" type=\"hidden\" value=\"" + echo(noticeinfo.departs) + "\">\r\n");
	ViewBuilder.Append("              <textarea id=\"departs_name\" name=\"departs_name\" style=\"margin-bottom:0;width:500px;height:60px;\" readonly=\"readonly\">" + echo(noticeinfo.departs_name) + "</textarea>\r\n");
	ViewBuilder.Append("              <a style=\"vertical-align:bottom;margin-left:3px;\" onclick=\"selectoropen('" + echo(plupath) + "selectuser/selectorg.aspx')\" class=\"btn btn-mini\">选择</a><a style=\"vertical-align:bottom;margin-left:3px;\" onclick=\"selectorclear('departs','departs_name')\" class=\"btn btn-mini\">清空</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">接收人员：</label></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                <input name=\"users\" id=\"users\" value=\"" + echo(noticeinfo.users) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                <textarea id=\"users_name\" name=\"users_name\" style=\"margin-bottom:0;width:500px;height:60px;\" readonly=\"readonly\">" + echo(noticeinfo.users_name) + "</textarea>\r\n");
	ViewBuilder.Append("                <a style=\"vertical-align:bottom;margin-left:3px;\" onclick=\"selectoropen('" + echo(plupath) + "selectuser/selectuser.aspx')\" class=\"btn btn-mini\">选择</a>\r\n");
	ViewBuilder.Append("                <a style=\"vertical-align:bottom;margin-left:3px;\" onclick=\"selectorclear('users','users_name')\" class=\"btn btn-mini\">清空</a>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">公告附件：</label></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                 <div>\r\n");
	ViewBuilder.Append("                  <input id=\"attachid\" name=\"attachid\" value=\"" + echo(noticeinfo.attachid) + "\" type=\"hidden\">\r\n");
	ViewBuilder.Append("                  <input name=\"file_upload\" id=\"file_upload\" type=\"file\" multiple=\"multiple\" value=\"\">\r\n");
	ViewBuilder.Append("                  <div id=\"file-container\">\r\n");

	loop__id=0;
	foreach(AttachInfo item in AttachBll.GetAttachList(noticeinfo.attachid))
	{
	loop__id++;
	ViewBuilder.Append("                       <div class=\"attachment-wrapper\" id=\"attachment_" + echo(item.id) + "\">\r\n");
	ViewBuilder.Append("                           <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                           <a class=\"dropdown-toggle\" href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\" target=\"download_attach\"><img width=\"16\" height=\"16\" src=\"" + echo(webpath) + "common/file/" + echo(FormatExt(item.filename)) + ".gif\">" + echo(item.name) + "</a><span class=\"size\">(" + echo(FormatSize(item.filesize)) + ")</span>\r\n");
	ViewBuilder.Append("                           <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                               <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(item.id) + "\" target=\"download_attach\">下载</a></li>\r\n");
	ViewBuilder.Append("                               <li><a href=\"javascript:;\" onclick=\"TUtil.openUrl('" + echo(plupath) + "pdf/index.aspx?aid=" + echo(item.id) + "');\">阅读</a></li>\r\n");
	ViewBuilder.Append("                               <li><a href=\"javascript:;\" onclick=\"TUtil.openUrl('" + echo(plupath) + "ntko/index.aspx?aid=" + echo(item.id) + "');\">编辑</a></li>\r\n");
	ViewBuilder.Append("                               <li><a href=\"javascript:;\" onclick=\"Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=" + echo(item.id) + "');return false;\">删除</a></li>\r\n");
	ViewBuilder.Append("                           </ul>\r\n");
	ViewBuilder.Append("                           </div>\r\n");
	ViewBuilder.Append("                       </div>\r\n");
	}//end loop
	ViewBuilder.Append("                  </div>\r\n");
	ViewBuilder.Append("                 </div>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" valign=\"middle\"><label class=\"control-label required\">公告内容：</label></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left\">\r\n");
	ViewBuilder.Append("                  <div class=\"editorbox\" style=\"margin: 0px;\" id=\"frmcomment1\">\r\n");
	ViewBuilder.Append("                      <!--style给定宽度可以影响编辑器的最终宽度-->\r\n");
	ViewBuilder.Append("                      <script type=\"text/plain\" id=\"content\" name=\"content\" style=\"width: 1000px; height: 240px;\">" + echo(noticeinfo.content) + "</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("                  </div>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">生效日期：</label></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("              <input value=\"" + echo(noticeinfo.starttime," yyyy-mm-dd") + "\"=\"\" style=\"width:150px !important;\" type=\"text\" autocomplete=\"off\" name=\"starttime\" id=\"starttime\"><span>&nbsp;为空为立即生效。</span><br>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">终止日期：</label></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("              <input value=\"" + echo(noticeinfo.endtime," yyyy-mm-dd") + "\"=\"\" style=\"width:150px !important;\" type=\"text\" autocomplete=\"off\" name=\"endtime\" id=\"endtime\"><span>&nbsp;为空为手工终止。</span>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">重要置顶：</label></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                <input id=\"istop\" style=\"margin-top:4px;\" type=\"checkbox\" value=\"1\" \r\n");

	if (noticeinfo.istop==1)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" name=\"istop\">\r\n");
	ViewBuilder.Append("                <label for=\"istop\">使公告通知置顶，显示为重要<span style=\"color:#ff0000\">（置顶后标题为红色)</span></label>\r\n");
	ViewBuilder.Append("                </label>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"100\"><label class=\"control-label required\">提醒消息：</label></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                   <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                   <input type=\"checkbox\" style=\"margin-top:4px;\" value=\"1\" \r\n");

	if (id==0)
	{
	ViewBuilder.Append(" checked=\"checked\" \r\n");
	}//end if
	ViewBuilder.Append(" name=\"ismsg\" id=\"ismsg\">\r\n");
	ViewBuilder.Append("                   <label for=\"remind_msg\">系统消息提醒</label></label>\r\n");
	ViewBuilder.Append("                   <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                   <input type=\"checkbox\" style=\"margin-top:4px;\" value=\"1\" name=\"issms\" id=\"issms\">\r\n");
	ViewBuilder.Append("                   <label for=\"remind_sms\">手机短信提醒</label></label>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:right\" width=\"100\"></td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:left;\">\r\n");
	ViewBuilder.Append("                  <button class=\"btn btn-danger\" id=\"btn_send2\" type=\"submit\" name=\"btn_send2\"><i class=\"icon-mail-send\"></i>&nbsp;发布</button>\r\n");
	ViewBuilder.Append("              </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("           </tbody>\r\n");
	ViewBuilder.Append("          </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<iframe id=\"download_attach\" name=\"download_attach\" width=\"0\" height=\"0\"></iframe>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.datepicker.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-datepicker.zh-CN.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#endtime').datepicker({ 'format': 'yyyy-mm-dd', 'language': 'zh-CN', 'weekStart': 1 });\r\n");
	ViewBuilder.Append("        $('#starttime').datepicker({ 'format': 'yyyy-mm-dd', 'language': 'zh-CN', 'weekStart': 1 });\r\n");
	ViewBuilder.Append("        $('#file_upload').uploadify({\r\n");
	ViewBuilder.Append("            'swf': '" + echo(plupath) + "uploadify/uploadify.swf',\r\n");
	ViewBuilder.Append("            'uploader': '" + echo(plupath) + "attach/upload.aspx',\r\n");
	ViewBuilder.Append("            \"formData\": { 'token': '" + echo(token) + "', 'attachid': '" + echo(noticeinfo.attachid) + "', 'app': '" + echo(setupinfo.markup) + "', 'postid': '" + echo(noticeinfo.id) + "' },\r\n");
	ViewBuilder.Append("            'fileTypeExts': '" + echo(AttachBll.GetAttachTypeExts()) + "',\r\n");
	ViewBuilder.Append("            'onUploadSuccess': function (file, data) {\r\n");
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
	ViewBuilder.Append("        $(\"#btn_send2\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"send\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
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
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");

	if (action=="send")
	{
	ViewBuilder.Append("    layer.msg('发布成功！', 2, 1);\r\n");
	ViewBuilder.Append("    var bar = 0;\r\n");
	ViewBuilder.Append("    count();\r\n");
	ViewBuilder.Append("    function count() {\r\n");
	ViewBuilder.Append("        bar = bar + 4;\r\n");
	ViewBuilder.Append("        if (bar < 80) {\r\n");
	ViewBuilder.Append("            setTimeout(\"count()\", 100);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else {\r\n");
	ViewBuilder.Append("            window.location.href = \"noticemanage.aspx\";\r\n");
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
	ViewBuilder.Append("            window.location.href = \"noticeadd.aspx?id=" + echo(id) + "&backurl=" + echo(backurl) + "\";\r\n");
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
