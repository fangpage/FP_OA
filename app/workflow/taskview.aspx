<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_WorkFlow.Controller.taskview" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_WorkFlow" %>
<%@ Import namespace="FP_WorkFlow.Model" %>
<%@ Import namespace="FangPage.WMS" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<%@ Import namespace="FangPage.WMS.Bll" %>
<%@ Import namespace="FP_Flow.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("    <title>" + echo(taskinfo.title) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("    <meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-yii.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-file-selector.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/document.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/workflow.turn.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/selector.css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.bootbox.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.notify.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-prompts.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modal.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modalmanager.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"statics/css/taskview.css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"/oa/public/js/attachment.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "uploadify/uploadify.css\">\r\n");
	ViewBuilder.Append("    <link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "editor/themes/default/default.css\">\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/kindeditor.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\" src=\"" + echo(plupath) + "editor/lang/zh_CN.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <style type=\"text/css\">\r\n");
	ViewBuilder.Append("        .page {\r\n");
	ViewBuilder.Append("            width: 100%;\r\n");
	ViewBuilder.Append("            background: #F0F0F0;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        body {\r\n");
	ViewBuilder.Append("            background: #F0F0F0;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    </style>\r\n");
	ViewBuilder.Append("    <style type=\"text/css\">\r\n");
	ViewBuilder.Append("        .content-remark {\r\n");
	ViewBuilder.Append("            border: 1px solid #58C697;\r\n");
	ViewBuilder.Append("            width: 900px;\r\n");
	ViewBuilder.Append("            margin: 10px auto;\r\n");
	ViewBuilder.Append("            height: auto;\r\n");
	ViewBuilder.Append("            background-color: #fff;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .remark-block {\r\n");
	ViewBuilder.Append("            background: url(statics/images/remark-title.jpg) no-repeat left top;\r\n");
	ViewBuilder.Append("            position: relative;\r\n");
	ViewBuilder.Append("            text-align: left;\r\n");
	ViewBuilder.Append("            padding-left: 40px;\r\n");
	ViewBuilder.Append("            height: 60px;\r\n");
	ViewBuilder.Append("            font-size: 16px;\r\n");
	ViewBuilder.Append("            line-height: 60px;\r\n");
	ViewBuilder.Append("            font-weight: bold;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .remark-title {\r\n");
	ViewBuilder.Append("            padding-left: 0px;\r\n");
	ViewBuilder.Append("            color: #58C697;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .comment_list {\r\n");
	ViewBuilder.Append("            width: 100%;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("            .comment_list .msg_face, .comment_list .discussion_bubble_content {\r\n");
	ViewBuilder.Append("                float: left;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            .comment_list .comment_header {\r\n");
	ViewBuilder.Append("                height: 33px;\r\n");
	ViewBuilder.Append("                padding: 0 10px 0 6px;\r\n");
	ViewBuilder.Append("                border-bottom: 1px solid #ccc;\r\n");
	ViewBuilder.Append("                background-color: #e1e1e1;\r\n");
	ViewBuilder.Append("                background-image: -moz-linear-gradient(#f8f8f8, #e1e1e1);\r\n");
	ViewBuilder.Append("                background-image: -webkit-linear-gradient(#f8f8f8, #e1e1e1);\r\n");
	ViewBuilder.Append("                background-image: linear-gradient(#f8f8f8, #e1e1e1);\r\n");
	ViewBuilder.Append("                background-repeat: repeat-x;\r\n");
	ViewBuilder.Append("                font-size: 12px;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            .comment_list .discussion_bubble_content {\r\n");
	ViewBuilder.Append("                padding: 3px;\r\n");
	ViewBuilder.Append("                background: #eee;\r\n");
	ViewBuilder.Append("                border-radius: 3px;\r\n");
	ViewBuilder.Append("                width: 90%;\r\n");
	ViewBuilder.Append("                float: left;\r\n");
	ViewBuilder.Append("                margin-left: 18px;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("                .comment_list .discussion_bubble_content .discussion_bubble_inner {\r\n");
	ViewBuilder.Append("                    min-height: 32px;\r\n");
	ViewBuilder.Append("                    border: 1px solid #CACACA;\r\n");
	ViewBuilder.Append("                    background-color: #fff;\r\n");
	ViewBuilder.Append("                    position: relative;\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                    .comment_list .discussion_bubble_content .discussion_bubble_inner .comment_header_task {\r\n");
	ViewBuilder.Append("                        max-width: 600px;\r\n");
	ViewBuilder.Append("                        float: left;\r\n");
	ViewBuilder.Append("                        line-height: 33px;\r\n");
	ViewBuilder.Append("                        font-weight: bold;\r\n");
	ViewBuilder.Append("                        font-size: 14px;\r\n");
	ViewBuilder.Append("                        color: #222;\r\n");
	ViewBuilder.Append("                        text-shadow: 1px 1px 0 rgba(255,255,255,0.7);\r\n");
	ViewBuilder.Append("                        overflow: hidden;\r\n");
	ViewBuilder.Append("                        white-space: nowrap;\r\n");
	ViewBuilder.Append("                        text-overflow: ellipsis;\r\n");
	ViewBuilder.Append("                        margin-right: 5px;\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                    .comment_list .discussion_bubble_content .discussion_bubble_inner .comment_header_author {\r\n");
	ViewBuilder.Append("                        max-width: 600px;\r\n");
	ViewBuilder.Append("                        float: left;\r\n");
	ViewBuilder.Append("                        line-height: 33px;\r\n");
	ViewBuilder.Append("                        font-weight: bold;\r\n");
	ViewBuilder.Append("                        color: #222;\r\n");
	ViewBuilder.Append("                        text-shadow: 1px 1px 0 rgba(255,255,255,0.7);\r\n");
	ViewBuilder.Append("                        overflow: hidden;\r\n");
	ViewBuilder.Append("                        white-space: nowrap;\r\n");
	ViewBuilder.Append("                        text-overflow: ellipsis;\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                    .comment_list .discussion_bubble_content .discussion_bubble_inner .comment_header_date {\r\n");
	ViewBuilder.Append("                        float: right;\r\n");
	ViewBuilder.Append("                        display: inline-block;\r\n");
	ViewBuilder.Append("                        margin: 0;\r\n");
	ViewBuilder.Append("                        height: 33px;\r\n");
	ViewBuilder.Append("                        font-size: 11px;\r\n");
	ViewBuilder.Append("                        line-height: 33px;\r\n");
	ViewBuilder.Append("                        font-style: normal;\r\n");
	ViewBuilder.Append("                        color: #777;\r\n");
	ViewBuilder.Append("                        text-shadow: 1px 1px 0 rgba(255,255,255,0.7);\r\n");
	ViewBuilder.Append("                        line-height: 33px;\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                    .comment_list .discussion_bubble_content .discussion_bubble_inner .comment_content {\r\n");
	ViewBuilder.Append("                        padding: 10px;\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("        .arrow {\r\n");
	ViewBuilder.Append("            top: 20px;\r\n");
	ViewBuilder.Append("            position: absolute;\r\n");
	ViewBuilder.Append("            margin: 0 0 0;\r\n");
	ViewBuilder.Append("            margin: -1px 0 0/9;\r\n");
	ViewBuilder.Append("            width: 19px;\r\n");
	ViewBuilder.Append("            cursor: default;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("            .arrow * {\r\n");
	ViewBuilder.Append("                font-family: \"SimSun\";\r\n");
	ViewBuilder.Append("                overflow: hidden;\r\n");
	ViewBuilder.Append("                font-size: 30px;\r\n");
	ViewBuilder.Append("                line-height: 40px;\r\n");
	ViewBuilder.Append("                display: block;\r\n");
	ViewBuilder.Append("                height: 40px;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            .arrow em {\r\n");
	ViewBuilder.Append("                color: #eee;\r\n");
	ViewBuilder.Append("                font-style: normal;\r\n");
	ViewBuilder.Append("                font-weight: normal;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            .arrow span {\r\n");
	ViewBuilder.Append("                color: #eee;\r\n");
	ViewBuilder.Append("                margin: -12px 0 0 -1px;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        .comment_box .arrow {\r\n");
	ViewBuilder.Append("            left: -20px;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("            .comment_box .arrow span {\r\n");
	ViewBuilder.Append("                margin-left: 1px;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("    </style>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        //供办理完成时刷新页面\r\n");
	ViewBuilder.Append("        function update(refresh) {\r\n");
	ViewBuilder.Append("            window.location.href = 'taskview.aspx?id=" + echo(taskinfo.id) + "&refresh='+refresh;\r\n");
	ViewBuilder.Append("        }\r\n");

	if (refresh==1)
	{
	ViewBuilder.Append("        var parent = window.opener ? window.opener : window.dialogArguments;\r\n");
	ViewBuilder.Append("        try {\r\n");
	ViewBuilder.Append("            parent.update();\r\n");
	ViewBuilder.Append("        } catch (e) { }\r\n");
	}//end if
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("    <div id=\"page-navbar\">\r\n");
	ViewBuilder.Append("        <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("            <form id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\" class=\"form-horizontal MultiFile-intercepted\">\r\n");
	ViewBuilder.Append("                <input type=\"hidden\" value=\"\" name=\"action\" id=\"action\">\r\n");
	ViewBuilder.Append("                <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("                    <tbody>\r\n");
	ViewBuilder.Append("                        <tr>\r\n");
	ViewBuilder.Append("                            <td>\r\n");
	ViewBuilder.Append("                                <div>\r\n");
	ViewBuilder.Append("                                    <div class=\"pull-left\" style=\"line: 35px; line-height: 35px; font-weight: bold\">\r\n");
	ViewBuilder.Append("                                        " + echo(taskinfo.title) + "\r\n");

	if (taskinfo.status<=2)
	{
	ViewBuilder.Append("                                        <span class=\"label label-important\"><b>执行中</b></span>\r\n");
	}
	else if (taskinfo.status==3)
	{
	ViewBuilder.Append("                                        <span class=\"label label-info\"><b>已办结</b></span>\r\n");
	}
	else if (taskinfo.status==4)
	{
	ViewBuilder.Append("                                        <span class=\"label label-success\"><b>已完成</b></span>\r\n");
	}//end if
	ViewBuilder.Append("                                    </div>\r\n");
	ViewBuilder.Append("                                    <div class=\"pull-right\" style=\"padding-right: 10px;\">\r\n");

	if (taskinfo.status==1)
	{
	ViewBuilder.Append("                                        <a style=\"margin-right: 3px;\" class=\"btn btn-danger\" href=\"tasknext.aspx?id=" + echo(taskinfo.id) + "\" id=\"btn_next\">提交办理情况</a>\r\n");
	}
	else if (taskinfo.uid==userid&&taskinfo.status<4)
	{
	ViewBuilder.Append("                                        <a style=\"margin-right: 3px;\" class=\"btn btn-danger\" href=\"taskappend.aspx?id=" + echo(taskinfo.id) + "\" id=\"btn_append\">继续交办</a>\r\n");
	}//end if

	if (taskinfo.allowback==1&&taskinfo.status==2)
	{
	ViewBuilder.Append("                                        <a style=\"margin-right: 3px;\" class=\"btn btn-danger\" id=\"btn_back\">撤回</a>\r\n");
	}//end if

	if (taskinfo.uid==userid&&taskinfo.status==3)
	{
	ViewBuilder.Append("                                        <a style=\"margin-right: 3px;\" class=\"btn btn-primary\" id=\"btn_complete\">完成</a>\r\n");
	}//end if

	if (taskinfo.isfav==1)
	{
	ViewBuilder.Append("                                        <a style=\"margin-right: 3px;\" class=\"btn\" id=\"btn_fav\">取消关注</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                        <a style=\"margin-right: 3px;\" class=\"btn\" id=\"btn_fav\">关注</a>\r\n");
	}//end if
	ViewBuilder.Append("                                        <a onclick=\"window.close();\" class=\"btn\">关闭</a>\r\n");
	ViewBuilder.Append("                                    </div>\r\n");
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                            </td>\r\n");
	ViewBuilder.Append("                        </tr>\r\n");
	ViewBuilder.Append("                    </tbody>\r\n");
	ViewBuilder.Append("                </table>\r\n");
	ViewBuilder.Append("            </form>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div id=\"container-scroller\" style=\"overflow: hidden; outline: none;\">\r\n");
	ViewBuilder.Append("        <div style=\"margin: 5px 0px;\">\r\n");
	ViewBuilder.Append("            <div class=\"page\">\r\n");
	ViewBuilder.Append("                <div class=\"box\">\r\n");
	ViewBuilder.Append("                    <ul class=\"event_list\">\r\n");

	loop__id=0;
	foreach(WorkFlowInfo item in tasklist)
	{
	loop__id++;
	List<AttachInfo> attachlist = AttachBll.GetAttachList(item.attachid);

	if (item.uid>0)
	{
	ViewBuilder.Append("                        <li class=\"first\">\r\n");
	ViewBuilder.Append("                            <div class=\"left_s\">" + echo(item.postdatetime,"yyyy年MM月dd日 HH:mm:ss") + "</div>\r\n");
	ViewBuilder.Append("                            <div class=\"p\">\r\n");
	ViewBuilder.Append("                                <div class=\"content\">\r\n");

	if (item.parentid==0)
	{
	ViewBuilder.Append("                                    <strong>工作标题：" + echo(taskinfo.title) + "</strong><br>\r\n");
	ViewBuilder.Append("                                    <hr style=\"margin: 0; height: 1px;\">\r\n");
	}//end if

	if (item.isend==1)
	{
	ViewBuilder.Append("                                    <strong>已&nbsp;完&nbsp;成&nbsp;：</strong>完成于：" + echo(item.endtime,"yyyy年MM月dd日 HH:mm:ss") + "，总用时：" + echo(DateDiff(item.starttime,item.endtime)) + "<br>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                    <strong>发&nbsp;起&nbsp;人&nbsp;：" + echo(item.receive_name) + "</strong>，发布于：" + echo(item.endtime,"yyyy年MM月dd日 HH:mm:ss") + "<br>\r\n");
	ViewBuilder.Append("                                    <hr style=\"margin: 0; height: 1px;\">\r\n");
	ViewBuilder.Append("                                    <strong>工作内容：</strong> " + echo(item.content) + "\r\n");

	if (attachlist.Count>0)
	{
	ViewBuilder.Append("                                    <br>\r\n");
	ViewBuilder.Append("                                    <hr style=\"margin: 0; height: 1px;\">\r\n");
	ViewBuilder.Append("                                    <strong>工作附件：</strong>\r\n");

	loop__id=0;
	foreach(AttachInfo att in attachlist)
	{
	loop__id++;
	ViewBuilder.Append("                                    <br>\r\n");
	ViewBuilder.Append("                                    <div class=\"attachment-wrapper\" style=\"height: 35px;\" id=\"attachment_" + echo(att.id) + "\">\r\n");
	ViewBuilder.Append("                                        <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                                            <a class=\"dropdown-toggle\" target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(att.id) + "\">\r\n");
	ViewBuilder.Append("                                                <img src=\"" + echo(webpath) + "common/file/" + echo(FormatExt(att.filename)) + ".gif\">" + echo(att.name) + "</a>\r\n");
	ViewBuilder.Append("                                            <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                                                <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(att.id) + "\">下载</a></li>\r\n");
	ViewBuilder.Append("                                                <li><a target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(att.id) + "\">阅读</a></li>\r\n");

	if (taskinfo.status<4)
	{
	ViewBuilder.Append("                                                <li><a target=\"_blank\" href=\"" + echo(plupath) + "ntko/index.aspx?aid=" + echo(att.id) + "\">编辑</a></li>\r\n");
	}//end if

	if (att.uid==userid&&taskinfo.status<4)
	{
	ViewBuilder.Append("                                                <li><a onclick=\"javascript:Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=" + echo(att.id) + "');return false;\" href=\"#\">删除</a></li>\r\n");
	}//end if
	ViewBuilder.Append("                                            </ul>\r\n");
	ViewBuilder.Append("                                        </div>\r\n");
	ViewBuilder.Append("                                    </div>\r\n");
	}//end loop
	}//end if
	}//end if
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </li>\r\n");
	}
	else if (item.status==0&&item.uid==0)
	{
	ViewBuilder.Append("                        <li class=\"li\">\r\n");
	ViewBuilder.Append("                            <div class=\"left_s\">" + echo(item.postdatetime,"yyyy年MM月dd日 HH:mm:ss") + "</div>\r\n");
	ViewBuilder.Append("                            <div class=\"p\">\r\n");
	ViewBuilder.Append("                                <div class=\"content\">\r\n");

	if (item.isadmin==1)
	{
	ViewBuilder.Append("                                    <strong>主&nbsp;办&nbsp;人&nbsp;：" + echo(item.receive_name) + "</strong>，[<font color=\"#51a351\">未接收</font>]\r\n");
	}
	else
	{
	ViewBuilder.Append("                                    <strong>协&nbsp;办&nbsp;人&nbsp;：" + echo(item.receive_name) + "</strong>，[<font color=\"#51a351\">未接收</font>]\r\n");
	}//end if
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </li>\r\n");
	}
	else if (item.status==1&&item.uid==0)
	{
	ViewBuilder.Append("                        <li class=\"li\">\r\n");
	ViewBuilder.Append("                            <div class=\"left_s\">" + echo(item.postdatetime,"yyyy年MM月dd日 HH:mm:ss") + "</div>\r\n");
	ViewBuilder.Append("                            <div class=\"p\">\r\n");
	ViewBuilder.Append("                                <div class=\"content\">\r\n");

	if (item.isadmin==1)
	{
	ViewBuilder.Append("                                    <strong>主&nbsp;办&nbsp;人&nbsp;：" + echo(item.receive_name) + "</strong>， [<font color=\"#51a351\">办理中，已用时：" + echo(DateDiff(item.starttime,DateTime.Now)) + "</font>]，开始于：" + echo(item.starttime,"yyyy年MM月dd日 HH:mm:ss") + "\r\n");
	}
	else
	{
	ViewBuilder.Append("                                    <strong>协&nbsp;办&nbsp;人&nbsp;：" + echo(item.receive_name) + "</strong>， [<font color=\"#51a351\">办理中，已用时：" + echo(DateDiff(item.starttime,DateTime.Now)) + "</font>]，开始于：" + echo(item.starttime,"yyyy年MM月dd日 HH:mm:ss") + "\r\n");
	}//end if

	if (item.content!="")
	{
	ViewBuilder.Append("                                    <br>\r\n");
	ViewBuilder.Append("                                    <hr style=\"margin: 0; height: 1px;\">\r\n");
	ViewBuilder.Append("                                    <strong>办理情况：</strong>" + echo(item.content) + "\r\n");
	}//end if

	if (attachlist.Count>0)
	{
	ViewBuilder.Append("                                    <br>\r\n");
	ViewBuilder.Append("                                    <hr style=\"margin: 0; height: 1px;\">\r\n");
	ViewBuilder.Append("                                    <strong>工作附件：</strong>\r\n");

	loop__id=0;
	foreach(AttachInfo att in attachlist)
	{
	loop__id++;
	ViewBuilder.Append("                                    <div class=\"attachment-wrapper\" id=\"attachment_" + echo(att.id) + "\">\r\n");
	ViewBuilder.Append("                                        <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                                            <a class=\"dropdown-toggle\" target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(att.id) + "\">\r\n");
	ViewBuilder.Append("                                                <img src=\"" + echo(webpath) + "common/file/" + echo(FormatExt(att.filename)) + ".gif\">" + echo(att.name) + "</a>\r\n");
	ViewBuilder.Append("                                            <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                                                <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(att.id) + "\">下载</a></li>\r\n");
	ViewBuilder.Append("                                                <li><a target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(att.id) + "\">阅读</a></li>\r\n");

	if (taskinfo.status<4)
	{
	ViewBuilder.Append("                                                <li><a target=\"_blank\" href=\"" + echo(plupath) + "ntko/index.aspx?aid=" + echo(att.id) + "\">编辑</a></li>\r\n");
	ViewBuilder.Append("                                                <li><a onclick=\"javascript:Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=" + echo(att.id) + "');return false;\" href=\"#\">删除</a></li>\r\n");
	}//end if
	ViewBuilder.Append("                                            </ul>\r\n");
	ViewBuilder.Append("                                        </div>\r\n");
	ViewBuilder.Append("                                    </div>\r\n");
	}//end loop
	}//end if
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </li>\r\n");
	}
	else
	{
	ViewBuilder.Append("                        <li class=\"li\">\r\n");
	ViewBuilder.Append("                            <div class=\"left_s\">" + echo(item.postdatetime,"yyyy年MM月dd日 HH:mm:ss") + "</div>\r\n");
	ViewBuilder.Append("                            <div class=\"p\">\r\n");
	ViewBuilder.Append("                                <div class=\"content\">\r\n");

	if (item.isadmin==1)
	{
	ViewBuilder.Append("                                    <strong>主&nbsp;办&nbsp;人&nbsp;：" + echo(item.receive_name) + "</strong>，[<font color=\"#51a351\">已办理，用时：" + echo(DateDiff(item.starttime,item.endtime)) + "</font>]<br>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                    <strong>协&nbsp;办&nbsp;人&nbsp;：" + echo(item.receive_name) + "</strong>，[<font color=\"#51a351\">已办理，用时：" + echo(DateDiff(item.starttime,item.endtime)) + "</font>]<br>\r\n");
	}//end if
	ViewBuilder.Append("            开始于：" + echo(item.starttime,"yyyy年MM月dd日 HH:mm:ss") + "，结束于：" + echo(item.endtime,"yyyy年MM月dd日 HH:mm:ss") + "\r\n");
	ViewBuilder.Append("            <br>\r\n");
	ViewBuilder.Append("                                    <hr style=\"margin: 0; height: 1px;\">\r\n");
	ViewBuilder.Append("                                    <strong>办理情况：</strong>" + echo(item.content) + "\r\n");

	if (attachlist.Count>0)
	{
	ViewBuilder.Append("                                    <br>\r\n");
	ViewBuilder.Append("                                    <hr style=\"margin: 0; height: 1px;\">\r\n");
	ViewBuilder.Append("                                    <strong>工作附件：</strong>\r\n");

	loop__id=0;
	foreach(AttachInfo att in attachlist)
	{
	loop__id++;
	ViewBuilder.Append("                                    <div class=\"attachment-wrapper\" id=\"attachment_" + echo(att.id) + "\">\r\n");
	ViewBuilder.Append("                                        <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                                            <a class=\"dropdown-toggle\" target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(att.id) + "\">\r\n");
	ViewBuilder.Append("                                                <img src=\"" + echo(webpath) + "common/file/" + echo(FormatExt(att.filename)) + ".gif\">" + echo(att.name) + "</a>\r\n");
	ViewBuilder.Append("                                            <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                                                <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(att.id) + "\">下载</a></li>\r\n");
	ViewBuilder.Append("                                                <li><a target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(att.id) + "\">阅读</a></li>\r\n");

	if (taskinfo.status<4)
	{
	ViewBuilder.Append("                                                <li><a target=\"_blank\" href=\"" + echo(plupath) + "ntko/index.aspx?aid=" + echo(att.id) + "\">编辑</a></li>\r\n");
	ViewBuilder.Append("                                                <li><a onclick=\"javascript:Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=" + echo(att.id) + "');return false;\" href=\"#\">删除</a></li>\r\n");
	}//end if
	ViewBuilder.Append("                                            </ul>\r\n");
	ViewBuilder.Append("                                        </div>\r\n");
	ViewBuilder.Append("                                    </div>\r\n");
	}//end loop
	}//end if
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </li>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("                    </ul>\r\n");
	ViewBuilder.Append("                    <div class=\"clearfix\"></div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div class=\"content-remark\">\r\n");
	ViewBuilder.Append("                    <div class=\"remark-block\">\r\n");
	ViewBuilder.Append("                        <span class=\"remark-title\">回复区</span>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                    <div>\r\n");

	loop__id=0;
	foreach(CommentInfo item in commentlist)
	{
	loop__id++;
	ViewBuilder.Append("                        <div class=\"comment_list\">\r\n");
	ViewBuilder.Append("                            <dl class=\"T_linecolor  comment_box clearfix\" style=\"margin: 10px 0\">\r\n");
	ViewBuilder.Append("                                <dt class=\"msg_face\">\r\n");
	ViewBuilder.Append("                                    <img src=\"/" + echo(item.avatar) + "\" width=\"50\" height=\"50\">\r\n");
	ViewBuilder.Append("                                </dt>\r\n");
	ViewBuilder.Append("                                <dd class=\"discussion_bubble_content\">\r\n");
	ViewBuilder.Append("                                    <div class=\"discussion_bubble_inner\">\r\n");
	ViewBuilder.Append("                                        <div class=\"R_msg\">\r\n");
	ViewBuilder.Append("                                            <div class=\"private_operate clearfix\">\r\n");
	ViewBuilder.Append("                                                <div class=\"comment_header\">\r\n");
	ViewBuilder.Append("                                                    <div class=\"comment_header_task\">第" + echo(item.step) + "步：" + echo(item.stepname) + "</div>\r\n");
	ViewBuilder.Append("                                                    <div class=\"comment_header_author\" title=\"部门：" + echo(item.departname) + "\">" + echo(item.realname) + "/" + echo(item.title) + "</div>\r\n");
	ViewBuilder.Append("                                                    <div class=\"comment_header_date\" style=\"float: right;\">" + echo(item.postdatetime,"yyyy-MM-dd HH:mm:ss") + "</div>\r\n");
	ViewBuilder.Append("                                                </div>\r\n");
	List<AttachInfo> attachlist = AttachBll.GetAttachList(item.attachid);
	ViewBuilder.Append("                                                <div class=\"comment_content\">\r\n");
	ViewBuilder.Append("                                                    " + echo(item.content) + "\r\n");

	if (attachlist.Count>0)
	{
	ViewBuilder.Append("                                                    <br>\r\n");
	ViewBuilder.Append("                                                    附件：\r\n");

	loop__id=0;
	foreach(AttachInfo attr in attachlist)
	{
	loop__id++;
	ViewBuilder.Append("                                                    <div class=\"attachment-wrapper\" id=\"attachment_" + echo(attr.id) + "\">\r\n");
	ViewBuilder.Append("                                                        <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                                                            <a class=\"dropdown-toggle\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(attr.id) + "\">\r\n");
	ViewBuilder.Append("                                                                <img src=\"" + echo(webpath) + "common/file/" + echo(FormatExt(attr.filename)) + ".gif\">" + echo(attr.name) + "</a>\r\n");
	ViewBuilder.Append("                                                            <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                                                                <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(attr.id) + "\">下载</a></li>\r\n");
	ViewBuilder.Append("                                                                <li><a target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(attr.id) + "\">阅读</a></li>\r\n");
	ViewBuilder.Append("                                                            </ul>\r\n");
	ViewBuilder.Append("                                                        </div>\r\n");
	ViewBuilder.Append("                                                    </div>\r\n");
	}//end loop
	}//end if
	ViewBuilder.Append("                                                </div>\r\n");
	ViewBuilder.Append("                                            </div>\r\n");
	ViewBuilder.Append("                                        </div>\r\n");
	ViewBuilder.Append("                                        <div class=\"arrow\"><span>◆</span></div>\r\n");
	ViewBuilder.Append("                                    </div>\r\n");
	ViewBuilder.Append("                                </dd>\r\n");
	ViewBuilder.Append("                            </dl>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	}//end loop

	if (taskinfo.status<=2)
	{
	ViewBuilder.Append("                        <div class=\"comment_list\">\r\n");
	ViewBuilder.Append("                            <dl class=\"T_linecolor  comment_box clearfix\">\r\n");
	ViewBuilder.Append("                                <dt class=\"msg_face\">\r\n");
	ViewBuilder.Append("                                    <img src=\"/" + echo(taskinfo.receive_avatar) + "\" width=\"50\" height=\"50\">\r\n");
	ViewBuilder.Append("                                </dt>\r\n");
	ViewBuilder.Append("                                <dd class=\"discussion_bubble_content\">\r\n");
	ViewBuilder.Append("                                    <div class=\"discussion_bubble_inner\">\r\n");
	ViewBuilder.Append("                                        <div class=\"comment_content\">\r\n");
	ViewBuilder.Append("                                            <form style=\"margin: 0px;\" id=\"frmcomment\" name=\"frmcomment\" action=\"\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
	ViewBuilder.Append("                                                <input type=\"hidden\" id=\"action_comment\" name=\"action\" value=\"comment\">\r\n");
	ViewBuilder.Append("                                                <label for=\"comment\" class=\"required\">第" + echo(taskinfo.step) + "步：" + echo(taskinfo.stepname) + "&nbsp;&nbsp;我的回复/" + echo(taskinfo.isadmin_show) + "</label>\r\n");
	ViewBuilder.Append("                                                <textarea id=\"comment\" name=\"comment\" style=\"width: 800px; height: 150px\">" + echo(commentinfo.content) + "</textarea>\r\n");
	ViewBuilder.Append("                                                <label class=\"required\">\r\n");
	ViewBuilder.Append("                                                    <div>\r\n");
	ViewBuilder.Append("                                                        <a class=\"btn btn-link file-selector\"><i class=\"icon-file-upload\"></i>上传附件\r\n");
	ViewBuilder.Append("                                                          <div class=\"MultiFile-wrap\">\r\n");
	ViewBuilder.Append("                                                             <input name=\"addfile\" id=\"addfile\" type=\"file\" class=\"multi-pt\" value=\"\">\r\n");
	ViewBuilder.Append("                                                          </div>\r\n");
	ViewBuilder.Append("                                                        </a>\r\n");
	ViewBuilder.Append("                                                        <div id=\"file-container2\"></div>\r\n");

	loop__id=0;
	foreach(AttachInfo attr in AttachBll.GetAttachList(commentinfo.attachid))
	{
	loop__id++;
	ViewBuilder.Append("                                                        <div class=\"attachment-wrapper\" id=\"attachment_" + echo(attr.id) + "\">\r\n");
	ViewBuilder.Append("                                                            <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                                                                <a class=\"dropdown-toggle\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(attr.id) + "\">\r\n");
	ViewBuilder.Append("                                                                    <img src=\"" + echo(webpath) + "common/file/" + echo(FormatExt(attr.filename)) + ".gif\">" + echo(attr.name) + "</a>\r\n");
	ViewBuilder.Append("                                                                <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                                                                    <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(attr.id) + "\">下载</a></li>\r\n");
	ViewBuilder.Append("                                                                    <li><a target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(attr.id) + "\">阅读</a></li>\r\n");
	ViewBuilder.Append("                                                                </ul>\r\n");
	ViewBuilder.Append("                                                            </div>\r\n");
	ViewBuilder.Append("                                                        </div>\r\n");
	}//end loop
	ViewBuilder.Append("                                                    </div>\r\n");
	ViewBuilder.Append("                                                </label>\r\n");
	ViewBuilder.Append("                                            </form>\r\n");
	ViewBuilder.Append("                                            <button id=\"submitComment\" class=\"btn btn-danger\" name=\"submitComment\" type=\"button\">发表</button>\r\n");
	ViewBuilder.Append("                                        </div>\r\n");
	ViewBuilder.Append("                                        <div class=\"arrow\"><span>◆</span></div>\r\n");
	ViewBuilder.Append("                                    </div>\r\n");
	ViewBuilder.Append("                                </dd>\r\n");
	ViewBuilder.Append("                            </dl>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	}//end if
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div id=\"turnModal\" class=\"modal hide fade\">\r\n");
	ViewBuilder.Append("        <div class=\"modal-header\" style=\"padding: 2px 15px;\">\r\n");
	ViewBuilder.Append("            <a class=\"close\" data-dismiss=\"modal\">&times;</a>\r\n");
	ViewBuilder.Append("            <h4>工作办理</h4>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"modal-body\" style=\"padding: 5px 15px;\">\r\n");
	ViewBuilder.Append("            <div class=\"row-fluid\">\r\n");
	ViewBuilder.Append("                <form id=\"turnForm\" name=\"turnForm\" action=\"\" method=\"post\" style=\"margin: 0;\" class=\"form-horizontal MultiFile-intercepted\" enctype=\"multipart/form-data\">\r\n");
	ViewBuilder.Append("                    <input type=\"hidden\" value=\"turn\" name=\"action\" id=\"action\">\r\n");
	ViewBuilder.Append("                    <div class=\"span7\" style=\"margin-left: 10px; min-height: 400px; width: 550px;\" id=\"turn_information\">\r\n");
	ViewBuilder.Append("                        <div style=\"min-height: 80px;\">\r\n");
	ViewBuilder.Append("                            <h5 style=\"border-bottom: 1px solid #ccc;\">转交下一步办理人（如果当前工作已办结，可以不用选择下一步办理人）</h5>\r\n");
	ViewBuilder.Append("                            <div class=\"users-select-block\">\r\n");
	ViewBuilder.Append("                                <div id=\"host_op_block_div2\" class=\"clearfix\">\r\n");
	ViewBuilder.Append("                                    <input type=\"hidden\" id=\"PRCS_OP_USER2\" data_type=\"op_user_btn\" name=\"PRCS_OP_USER2\" value=\"" + echo(taskinfo.turnuid) + "\">\r\n");
	ViewBuilder.Append("                                    <div class=\"sponsor\" style=\"float: left;\">\r\n");
	ViewBuilder.Append("                                        <a class=\"prcs-op-uname\" id=\"TOP_FLAG_SHOW2\">主办人：</a>\r\n");
	ViewBuilder.Append("                                    </div>\r\n");

	loop__id=0;
	foreach(UserInfo item in GetUserList(taskinfo.turnuid))
	{
	loop__id++;
	ViewBuilder.Append("                                    <div class=\"user-tags\" user_id=\"" + echo(item.id) + "\">" + echo(item.realname) + "<i class=\"close\">×</i></div>\r\n");
	}//end loop
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                                <div id=\"prcs_op_block_div2\" class=\"clearfix\" style=\"margin: 5px 0\">\r\n");

	if (taskinfo.touid!="")
	{
	ViewBuilder.Append("                                    <input type=\"hidden\" data_type=\"op_user_btn\" id=\"PRCS_USER2\" name=\"PRCS_USER2\" value=\"" + echo(taskinfo.touid) + "\">\r\n");
	}
	else
	{
	ViewBuilder.Append("                                    <input type=\"hidden\" data_type=\"op_user_btn\" id=\"PRCS_USER2\" name=\"PRCS_USER2\" value=\"\">\r\n");
	}//end if
	ViewBuilder.Append("                                    <div class=\"managers\" style=\"float: left;\">经办人：</div>\r\n");

	loop__id=0;
	foreach(UserInfo item in GetUserList(taskinfo.touid))
	{
	loop__id++;
	ViewBuilder.Append("                                    <div class=\"user-tags\" user_id=\"" + echo(item.id) + "\">" + echo(item.realname) + "<i class=\"close\">×</i></div>\r\n");
	}//end loop
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <a style=\"margin: 0 4px; vertical-align: bottom;\" class=\"btn btn-success btn-small\" id=\"btn_selector\">选择经办/主办人</a>\r\n");
	ViewBuilder.Append("                            <a style=\"margin: 0 4px; vertical-align: bottom;\" class=\"btn btn-small\" id=\"btn_clear\">清&nbsp;&nbsp;&nbsp;&nbsp;空</a>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                        <div id=\"content_box\" style=\"margin-top: 5px;\">\r\n");
	ViewBuilder.Append("                            <h5 style=\"border-bottom: 1px solid #ccc;\">我的办理情况</h5>\r\n");
	ViewBuilder.Append("                            <textarea style=\"width: 528px; height: 60px;\" name=\"content\" id=\"content\"></textarea>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                        <div id=\"file_box\" style=\"margin-top: 0px;\">\r\n");
	ViewBuilder.Append("                            <div>\r\n");
	ViewBuilder.Append("                                <div id=\"file-container\"></div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </form>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"modal-footer\"><span class=\"pull-left counter\"></span><a id=\"btnTurnSubmit\" class=\"btn btn-primary\">确定</a> <a class=\"btn\" id=\"btn_turn_cancel\">取消</a></div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            $(\"#btn_turn\").click(function () {\r\n");
	ViewBuilder.Append("                $('#turnModal').modal({ 'width': '600', 'show': true });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(document).on('click', '#btn_turn_cancel', function () {\r\n");
	ViewBuilder.Append("                $('#turnModal').modal('hide');\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            //关注\r\n");
	ViewBuilder.Append("            $(\"#btn_fav\").click(function () {\r\n");
	ViewBuilder.Append("                var othis = $(this);\r\n");
	ViewBuilder.Append("                $.ajax({\r\n");
	ViewBuilder.Append("                    type: 'post',\r\n");
	ViewBuilder.Append("                    url: 'fav_ctrl.aspx',\r\n");
	ViewBuilder.Append("                    data: { workid: " + echo(id) + " },\r\n");
	ViewBuilder.Append("                dataType: 'json',\r\n");
	ViewBuilder.Append("            success: function (data) {\r\n");
	ViewBuilder.Append("                if (data.errcode == 10) {\r\n");
	ViewBuilder.Append("                    othis.html(\"关注\");\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                else {\r\n");
	ViewBuilder.Append("                    othis.html(\"取消关注\");\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                $.notify({\r\n");
	ViewBuilder.Append("                    type: 'success',\r\n");
	ViewBuilder.Append("                    message: {\r\n");
	ViewBuilder.Append("                        text: data.errmsg,\r\n");
	ViewBuilder.Append("                        icon: 'icon-info'\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                }).show();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        KindEditor.create('#comment', {\r\n");
	ViewBuilder.Append("            resizeType: 1,\r\n");
	ViewBuilder.Append("            uploadJson: '" + echo(plupath) + "editor/uploadajax.aspx?sortid=0',\r\n");
	ViewBuilder.Append("            fileManagerJson: '" + echo(plupath) + "editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            newlineTag: \"br\",\r\n");
	ViewBuilder.Append("            items: ['fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',\r\n");
	ViewBuilder.Append("					'removeformat', '|', 'image', 'flash', 'media', '|', 'link', 'unlink'],\r\n");
	ViewBuilder.Append("            afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(document).on('click', '#turn_user_list .select,#turn_user_list .img,#turn_user_list .text-name,#turn_user_list .text-org,#turn_user_list .text-role', function () {\r\n");
	ViewBuilder.Append("            var $li = $(\"#turn_user_list\").find(\"[node-data=\" + $(this).attr(\"node-data\") + \"]\");\r\n");
	ViewBuilder.Append("            var selectWft = $(\"#taskList\").find(\"[node-data=\" + $('#stepid').val() + \"]\");\r\n");
	ViewBuilder.Append("            var type = selectWft.attr(\"node-type\");\r\n");
	ViewBuilder.Append("            if (!$li.hasClass('active') && (type != \"end\")) {\r\n");
	ViewBuilder.Append("                $li.addClass('active').find('[name=nextuid]').attr('checked', true);\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $li.find('.text-position').removeClass('active2');\r\n");
	ViewBuilder.Append("                $li.removeClass('active').find(':checkbox').attr('checked', false);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(document).on('click', '#turn_user_list .text-position', function () {\r\n");
	ViewBuilder.Append("            var $li = $(\"#turn_user_list\").find(\"[node-data=\" + $(this).attr(\"node-data\") + \"]\");\r\n");
	ViewBuilder.Append("            var selectWft = $(\"#taskList\").find(\"[node-data=\" + $('#stepid').val() + \"]\");\r\n");
	ViewBuilder.Append("            var type = selectWft.attr(\"node-type\");\r\n");
	ViewBuilder.Append("            if (!$li.hasClass('active') && (type != \"end\")) {\r\n");
	ViewBuilder.Append("                $li.siblings().find('[name=turnuid]').attr('checked', false);\r\n");
	ViewBuilder.Append("                $li.addClass('active').find(':checkbox').attr('checked', true);\r\n");
	ViewBuilder.Append("                $li.siblings().find('.text-position').removeClass('active2');\r\n");
	ViewBuilder.Append("                $(this).addClass('active2');\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                if (!$(this).hasClass('active2'))\r\n");
	ViewBuilder.Append("                {\r\n");
	ViewBuilder.Append("                    $li.siblings().find('[name=turnuid]').attr('checked', false);\r\n");
	ViewBuilder.Append("                    $li.siblings().find('.text-position').removeClass('active2');\r\n");
	ViewBuilder.Append("                    $li.find('[name=turnuid]').attr('checked', true);\r\n");
	ViewBuilder.Append("                    $(this).addClass('active2');\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                else\r\n");
	ViewBuilder.Append("                {\r\n");
	ViewBuilder.Append("                    $li.find('[name=turnuid]').attr('checked', false);\r\n");
	ViewBuilder.Append("                    $(this).removeClass('active2');\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnTurnSubmit\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#turnForm\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //提交办理情况\r\n");
	ViewBuilder.Append("        $(\"#btn_next\").click(function () {\r\n");
	ViewBuilder.Append("            TUtil.openUrl(this.href);\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //追加办理\r\n");
	ViewBuilder.Append("        $(\"#btn_append\").click(function () {\r\n");
	ViewBuilder.Append("            TUtil.openUrl(this.href);\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //办理完成\r\n");
	ViewBuilder.Append("        $(\"#btn_complete\").click(function () {\r\n");
	ViewBuilder.Append("            window.confirm('确定已完成了该工作了吗？', function (ret) {\r\n");
	ViewBuilder.Append("                if (ret == true) {\r\n");
	ViewBuilder.Append("                    $(\"#action\").val(\"complete\");\r\n");
	ViewBuilder.Append("                    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_back\").click(function () {\r\n");
	ViewBuilder.Append("            if (window._originalConfirm(\"您确定要撤回吗？\")) {\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"back\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#submitComment\").live(\"click\", function () {\r\n");
	ViewBuilder.Append("            $(\"#frmcomment\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").height(height - $('#page-navbar').outerHeight());\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").niceScroll({ cursorcolor: \"#ccc\",cursoropacitymin:1,cursorwidth:8 });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).trigger(\"resize\");\r\n");
	ViewBuilder.Append("        var nice = $(\"#container-scroller\").getNiceScroll()[0];\r\n");
	ViewBuilder.Append("        $(\"#container-scroller\").bind(\"scroll\", function () {\r\n");
	ViewBuilder.Append("            if (nice.page.maxh - nice.view.h > 200 && nice.page.maxh - nice.getScrollTop() < nice.page.maxh / 5) {\r\n");
	ViewBuilder.Append("                $(\"#scrollTop\").fadeIn(1000);\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else\r\n");
	ViewBuilder.Append("                $(\"#scrollTop\").fadeOut(1000);\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#scrollTop\").click(function () {\r\n");
	ViewBuilder.Append("            nice.scrollTop(0);\r\n");
	ViewBuilder.Append("        });\r\n");
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
