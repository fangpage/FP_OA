<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_WorkFlow.Controller.taskjbview" %>
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
	ViewBuilder.Append("<html class=\" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths\">\r\n");
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
	ViewBuilder.Append("        .content-remark {\r\n");
	ViewBuilder.Append("            border: 1px solid #58C697;\r\n");
	ViewBuilder.Append("            width: 100%;\r\n");
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
	ViewBuilder.Append("        .mainbox {\r\n");
	ViewBuilder.Append("            box-sizing: border-box;\r\n");
	ViewBuilder.Append("            width: 900px !important;\r\n");
	ViewBuilder.Append("            background: #fff;\r\n");
	ViewBuilder.Append("            margin-top: 24px;\r\n");
	ViewBuilder.Append("            padding: 0 30px;\r\n");
	ViewBuilder.Append("            padding-bottom: 20px;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .task-title {\r\n");
	ViewBuilder.Append("            font-weight: 600;\r\n");
	ViewBuilder.Append("            font-size: 18px;\r\n");
	ViewBuilder.Append("            line-height: 60px;\r\n");
	ViewBuilder.Append("            border-bottom: 1px #e9e9e9 solid;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .publish-information {\r\n");
	ViewBuilder.Append("            color: #626262;\r\n");
	ViewBuilder.Append("            font-size: 14px;\r\n");
	ViewBuilder.Append("            line-height: 16px;\r\n");
	ViewBuilder.Append("            margin-top: 14px;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .task-comment {\r\n");
	ViewBuilder.Append("            font-size: 18px;\r\n");
	ViewBuilder.Append("            padding: 35px 0;\r\n");
	ViewBuilder.Append("            border-bottom: 1px #e9e9e9 solid;\r\n");
	ViewBuilder.Append("            line-height: 24px;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .r-head {\r\n");
	ViewBuilder.Append("            font-size: 14px;\r\n");
	ViewBuilder.Append("            color: #333;\r\n");
	ViewBuilder.Append("            line-height: 20px;\r\n");
	ViewBuilder.Append("            padding-left: 10px;\r\n");
	ViewBuilder.Append("            margin-top: 20px;\r\n");
	ViewBuilder.Append("            border-left: 4px #ff7300 solid;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .r-comment {\r\n");
	ViewBuilder.Append("            background: #fafbfc;\r\n");
	ViewBuilder.Append("            border: 1px #e4e9ef solid;\r\n");
	ViewBuilder.Append("            position: relative;\r\n");
	ViewBuilder.Append("            margin-top: 20px;\r\n");
	ViewBuilder.Append("            min-height: 100px;\r\n");
	ViewBuilder.Append("            padding-top: 15px;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("            .r-comment .r-san {\r\n");
	ViewBuilder.Append("                width: 20px;\r\n");
	ViewBuilder.Append("                height: 10px;\r\n");
	ViewBuilder.Append("                position: absolute;\r\n");
	ViewBuilder.Append("                top: -10px;\r\n");
	ViewBuilder.Append("                left: 20px;\r\n");
	ViewBuilder.Append("                z-index: 999;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            .r-comment ul li {\r\n");
	ViewBuilder.Append("                margin-top: 15px;\r\n");
	ViewBuilder.Append("                position: relative;\r\n");
	ViewBuilder.Append("                padding-left: 50px;\r\n");
	ViewBuilder.Append("                padding-right: 15px;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            .r-comment ul {\r\n");
	ViewBuilder.Append("                margin: 0;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("                .r-comment ul li p {\r\n");
	ViewBuilder.Append("                    margin: 0;\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                .r-comment ul li .user-header {\r\n");
	ViewBuilder.Append("                    width: 32px;\r\n");
	ViewBuilder.Append("                    height: 32px;\r\n");
	ViewBuilder.Append("                    position: absolute;\r\n");
	ViewBuilder.Append("                    top: 2px;\r\n");
	ViewBuilder.Append("                    left: 10px;\r\n");
	ViewBuilder.Append("                    border-radius: 50%;\r\n");
	ViewBuilder.Append("                    overflow: hidden;\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("        .r-user span {\r\n");
	ViewBuilder.Append("            float: right;\r\n");
	ViewBuilder.Append("            color: #999999;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .ruser-content {\r\n");
	ViewBuilder.Append("            font-size: 16px;\r\n");
	ViewBuilder.Append("            color: #333;\r\n");
	ViewBuilder.Append("            line-height: 20px;\r\n");
	ViewBuilder.Append("            margin-top: 7px !important;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        .content-box {\r\n");
	ViewBuilder.Append("            border-bottom: 1px #dfdfdf solid;\r\n");
	ViewBuilder.Append("            padding-bottom: 10px;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    </style>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        //供办理完成时刷新页面\r\n");
	ViewBuilder.Append("        function update(refresh) {\r\n");
	ViewBuilder.Append("            window.location.href = 'taskjbview.aspx?id=" + echo(taskinfo.id) + "&refresh='+refresh;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        var parent = window.opener ? window.opener : window.dialogArguments;\r\n");
	ViewBuilder.Append("        try {\r\n");
	ViewBuilder.Append("            parent.update();\r\n");
	ViewBuilder.Append("        } catch (e) { }\r\n");
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
	ViewBuilder.Append("                                <div class=\"\">\r\n");
	ViewBuilder.Append("                                    <div class=\"pull-left\" style=\"line: 35px; line-height: 35px; font-weight: bold\">" + echo(taskinfo.title) + "</div>\r\n");
	ViewBuilder.Append("                                    <div class=\"pull-right\" style=\"padding-right: 10px;\">\r\n");

	if (taskinfo.status==2)
	{
	ViewBuilder.Append("                                        <a style=\"margin-right: 3px;display:none;\" class=\"btn btn-success\" id=\"btn_ok\">完成</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                                        <a style=\"margin-right: 3px;\" class=\"btn btn-success\" id=\"btn_ok\">完成</a>\r\n");
	}//end if
	ViewBuilder.Append("                                        <a style=\"margin-right: 3px;\" class=\"btn btn-info\" id=\"btn_fav\">关注</a>\r\n");
	ViewBuilder.Append("                                        <a onclick=\"window.close();\" class=\"btn btn-danger\">关闭</a>\r\n");
	ViewBuilder.Append("                                    </div>\r\n");
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                            </td>\r\n");
	ViewBuilder.Append("                        </tr>\r\n");
	ViewBuilder.Append("                    </tbody>\r\n");
	ViewBuilder.Append("                </table>\r\n");
	ViewBuilder.Append("            </form>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div id=\"container-scroller\" style=\"overflow: hidden; outline: none; height: 880px;\" tabindex=\"5000\">\r\n");
	ViewBuilder.Append("        <div style=\"margin: 5px 0px;\">\r\n");
	ViewBuilder.Append("            <div class=\"page\">\r\n");
	ViewBuilder.Append("                <div class=\"box mainbox\" style=\"width: 900px;\">\r\n");
	ViewBuilder.Append("                    <div class=\"taskbox\">\r\n");
	ViewBuilder.Append("                        <div class=\"task-title\">" + echo(taskinfo.title) + "</div>\r\n");
	ViewBuilder.Append("                        <div class=\"publish-information\">\r\n");
	ViewBuilder.Append("                            <span style=\"color: #0094ff;\">" + echo(taskinfo.rawname) + "</span> | \r\n");
	ViewBuilder.Append("                            <span>发布于" + echo(taskinfo.starttime) + "</span> | \r\n");
	ViewBuilder.Append("                            <span>办理状态：\r\n");

	if (taskinfo.status==0)
	{
	ViewBuilder.Append("                                未接收 (1/5)\r\n");
	}
	else if (taskinfo.status==1)
	{
	ViewBuilder.Append("                                办理中 (2/5)\r\n");
	}
	else if (taskinfo.status==2)
	{
	ViewBuilder.Append("                                已办理 (3/5)\r\n");
	}
	else if (taskinfo.status==3)
	{
	ViewBuilder.Append("                                已结束 (4/5)\r\n");
	}
	else if (taskinfo.status==4)
	{
	ViewBuilder.Append("                                已完成 (5/5)\r\n");
	}//end if
	ViewBuilder.Append("                            </span>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                        <div style=\"margin-top: 6px;\">\r\n");
	ViewBuilder.Append("                            <div style=\"float: left; padding-right: 6px; color: #999999; line-height: 25px;\">附件：</div>\r\n");
	List<AttachInfo> attachlist = AttachBll.GetAttachList(taskinfo.attachid);

	if (attachlist.Count>0)
	{

	loop__id=0;
	foreach(AttachInfo att in attachlist)
	{
	loop__id++;
	ViewBuilder.Append("                            <div class=\"attachment-wrapper\" id=\"attachment_" + echo(att.id) + "\">\r\n");
	ViewBuilder.Append("                                <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                                    <a class=\"dropdown-toggle\" target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(att.id) + "\">\r\n");
	ViewBuilder.Append("                                        <img src=\"" + echo(att.icon) + "\">" + echo(att.name) + "</a>\r\n");
	ViewBuilder.Append("                                    <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                                        <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(att.id) + "\">下载</a></li>\r\n");
	ViewBuilder.Append("                                        <li><a target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(att.id) + "\">阅读</a></li>\r\n");

	if (taskinfo.status<4)
	{
	ViewBuilder.Append("                                        <li><a target=\"_blank\" href=\"" + echo(plupath) + "ntko/index.aspx?aid=" + echo(att.id) + "\">编辑</a></li>\r\n");
	ViewBuilder.Append("                                        <li><a onclick=\"javascript:Attachment.deleteAttach('" + echo(plupath) + "attach/delete.aspx?aid=" + echo(att.id) + "');return false;\" href=\"#\">删除</a></li>\r\n");
	}//end if
	ViewBuilder.Append("                                    </ul>\r\n");
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	}//end loop
	}//end if
	ViewBuilder.Append("                            <div class=\"clearfix\"></div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                        <div class=\"task-comment\" style=\"text-indent: 25px; font-size: 15px;\">" + echo(taskinfo.content) + " </div>\r\n");
	ViewBuilder.Append("                        <div class=\"task-r\">\r\n");
	ViewBuilder.Append("                            <div class=\"r-head\">回复区</div>\r\n");
	ViewBuilder.Append("                            <div class=\"r-comment\">\r\n");

	if (commentlist.Count==0)
	{
	ViewBuilder.Append("                                <h3 style=\"color: #808080; margin: 20px auto; opacity: 0.5; padding: 10px 305px;\">暂时没有任何回复！</h3>\r\n");
	}
	else
	{

	loop__id=0;
	foreach(CommentInfo item in commentlist)
	{
	loop__id++;
	ViewBuilder.Append("                                <div class=\"comment_list\">\r\n");
	ViewBuilder.Append("                                    <dl class=\"T_linecolor  comment_box clearfix\" style=\"margin: 10px 0\">\r\n");
	ViewBuilder.Append("                                        <dt class=\"msg_face\">\r\n");
	ViewBuilder.Append("                                            <img src=\"/" + echo(item.avatar) + "\" width=\"50\" height=\"50\">\r\n");
	ViewBuilder.Append("                                        </dt>\r\n");
	ViewBuilder.Append("                                        <dd class=\"discussion_bubble_content\">\r\n");
	ViewBuilder.Append("                                            <div class=\"discussion_bubble_inner\">\r\n");
	ViewBuilder.Append("                                                <div class=\"R_msg\">\r\n");
	ViewBuilder.Append("                                                    <div class=\"private_operate clearfix\">\r\n");
	ViewBuilder.Append("                                                        <div class=\"comment_header\">\r\n");
	ViewBuilder.Append("                                                            <div class=\"comment_header_task\">" + echo(item.realname) + "</div>\r\n");
	ViewBuilder.Append("                                                            <div class=\"comment_header_date\" style=\"float: right;\">" + echo(item.postdatetime) + "</div>\r\n");
	ViewBuilder.Append("                                                        </div>\r\n");
	ViewBuilder.Append("                                                        <div class=\"comment_content\">\r\n");
	ViewBuilder.Append("                                                            " + echo(item.content) + "<br>\r\n");
	ViewBuilder.Append("                                                            附件：\r\n");

	if (attachlist.Count>0)
	{

	loop__id=0;
	foreach(AttachInfo attr in attachlist)
	{
	loop__id++;
	ViewBuilder.Append("                                                            <div class=\"attachment-wrapper\" id=\"attachment_" + echo(attr.id) + "\">\r\n");
	ViewBuilder.Append("                                                                <div class=\"dropdown clearfix\">\r\n");
	ViewBuilder.Append("                                                                    <a class=\"dropdown-toggle\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(attr.id) + "\">\r\n");
	ViewBuilder.Append("                                                                        <img src=\"" + echo(webpath) + "common/file/" + echo(FormatExt(attr.filename)) + ".gif\">" + echo(attr.name) + "</a>\r\n");
	ViewBuilder.Append("                                                                    <ul class=\"dropdown-menu\">\r\n");
	ViewBuilder.Append("                                                                        <li><a href=\"" + echo(plupath) + "attach/download.aspx?aid=" + echo(attr.id) + "\">下载</a></li>\r\n");
	ViewBuilder.Append("                                                                        <li><a target=\"_blank\" href=\"" + echo(plupath) + "pdf/index.aspx?aid=" + echo(attr.id) + "\">阅读</a></li>\r\n");
	ViewBuilder.Append("                                                                    </ul>\r\n");
	ViewBuilder.Append("                                                                </div>\r\n");
	ViewBuilder.Append("                                                            </div>\r\n");
	}//end loop
	}//end if
	ViewBuilder.Append("                                                        </div>\r\n");
	ViewBuilder.Append("                                                    </div>\r\n");
	ViewBuilder.Append("                                                </div>\r\n");
	ViewBuilder.Append("                                                <div class=\"arrow\"><span>◆</span></div>\r\n");
	ViewBuilder.Append("                                            </div>\r\n");
	ViewBuilder.Append("                                        </dd>\r\n");
	ViewBuilder.Append("                                    </dl>\r\n");
	}//end loop
	}//end if
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                    <div class=\"clearfix\"></div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div class=\"content-remark\">\r\n");
	ViewBuilder.Append("                    <div class=\"remark-block\"><span class=\"remark-title\">回复区</span> </div>\r\n");
	ViewBuilder.Append("                    <div>\r\n");
	ViewBuilder.Append("                        <div class=\"comment_list\">\r\n");
	ViewBuilder.Append("                            <dl class=\"T_linecolor  comment_box clearfix\">\r\n");
	ViewBuilder.Append("                                <dt class=\"msg_face\">\r\n");
	ViewBuilder.Append("                                    <img src=\"/" + echo(user.avatar) + "\" width=\"50\" height=\"50\">\r\n");
	ViewBuilder.Append("                                </dt>\r\n");
	ViewBuilder.Append("                                <dd class=\"discussion_bubble_content\">\r\n");
	ViewBuilder.Append("                                    <div class=\"discussion_bubble_inner\">\r\n");
	ViewBuilder.Append("                                        <div class=\"comment_content\">\r\n");
	ViewBuilder.Append("                                            <form style=\"margin: 0px;\" id=\"frmcomment\" name=\"frmcomment\" action=\"\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
	ViewBuilder.Append("                                                <input type=\"hidden\" value=\"comment\" name=\"action\" id=\"action1\">\r\n");
	ViewBuilder.Append("                                                <textarea id=\"comment\" name=\"comment\" style=\"width: 100%; height: 150px; display: block;\"></textarea>\r\n");
	ViewBuilder.Append("                                                <div>\r\n");
	ViewBuilder.Append("                                                    <a class=\"btn btn-link file-selector\"><i class=\"icon-file-upload\"></i>上传附件\r\n");
	ViewBuilder.Append("                                                         <div class=\"MultiFile-wrap\">\r\n");
	ViewBuilder.Append("                                                             <input name=\"addfile\" id=\"addfile\" type=\"file\" class=\"multi-pt\" value=\"\">\r\n");
	ViewBuilder.Append("                                                         </div>\r\n");
	ViewBuilder.Append("                                                    </a>\r\n");

	loop__id=0;
	foreach(AttachInfo attr in AttachBll.GetAttachList(commentinfo.attachid))
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
	ViewBuilder.Append("                                                </div>\r\n");
	ViewBuilder.Append("                                            </form>\r\n");
	ViewBuilder.Append("                                            <button id=\"submitComment\" class=\"btn btn-primary\" name=\"submitComment\" type=\"button\">发表</button>\r\n");
	ViewBuilder.Append("                                        </div>\r\n");
	ViewBuilder.Append("                                        <div class=\"arrow\"><span>◆</span></div>\r\n");
	ViewBuilder.Append("                                    </div>\r\n");
	ViewBuilder.Append("                                </dd>\r\n");
	ViewBuilder.Append("                            </dl>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	int status = 0;

	if (taskinfo.id>0)
	{
	 status = 1;
	}//end if
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
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
	ViewBuilder.Append("        //完成\r\n");
	ViewBuilder.Append("        $(\"#btn_ok\").click(function () {\r\n");
	ViewBuilder.Append("            window.confirm('确定已完成了该工作了吗？', function (ret) {\r\n");
	ViewBuilder.Append("                if (ret == true) {\r\n");
	ViewBuilder.Append("                    $(\"#action\").val(\"ok\");\r\n");
	ViewBuilder.Append("                    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //编辑文本\r\n");
	ViewBuilder.Append("        KindEditor.create('#comment', {\r\n");
	ViewBuilder.Append("            resizeType: 1,\r\n");
	ViewBuilder.Append("            uploadJson: '/plugins/editor/uploadajax.aspx?sortid=0',\r\n");
	ViewBuilder.Append("            fileManagerJson: '/plugins/editor/filemanagerajax.aspx',\r\n");
	ViewBuilder.Append("            newlineTag: \"br\",\r\n");
	ViewBuilder.Append("            items: ['fontname', 'fontsize', '|', 'forecolor', 'hilitecolor', 'bold', 'italic', 'underline',\r\n");
	ViewBuilder.Append("                    'removeformat', '|', 'image', 'flash', 'media', '|', 'link', 'unlink'],\r\n");
	ViewBuilder.Append("            afterBlur: function () { this.sync(); }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        //发表\r\n");
	ViewBuilder.Append("        $(\"#submitComment\").live(\"click\", function () {\r\n");
	ViewBuilder.Append("            $(\"#frmcomment\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").height(height - $('#page-navbar').outerHeight());\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").niceScroll({ cursorcolor: \"#ccc\", cursoropacitymin: 1, cursorwidth: 8 });\r\n");
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
	ViewBuilder.Append("        $(\".r-comment ul li\").last().find(\".content-box\").css(\"border\", \"0\");\r\n");
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
