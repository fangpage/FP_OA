<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_WorkFlow.Controller.workflow" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_WorkFlow" %>
<%@ Import namespace="FP_WorkFlow.Model" %>
<%@ Import namespace="FP_Flow.Model" %>
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
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>" + echo(workinfo.title) + "-工作办理</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"/oa/public/css/document.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"/oa/public/css/workflow.turn.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"/oa/public/css/selector.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "jquery/jquery.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "jform/jquery.form.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "autocomplete/jquery.autocomplete.js\" type=\"text/javascript\"></");
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
	ViewBuilder.Append("<link href=\"/oa/public/css/fp-bootstrap.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"/oa/public/css/base.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"/oa/public/css/global.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script src=\"/oa/public/js/util.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "flowuser/js/function.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" rel=\"stylesheet\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    var Operation = {\r\n");
	ViewBuilder.Append("        turnend: function () {\r\n");
	ViewBuilder.Append("            window.confirm('确定已办结该工作了吗？', function (ret) {\r\n");
	ViewBuilder.Append("                if (ret == true) {\r\n");
	ViewBuilder.Append("                    if (window.frames['tab_frame'] && window.frames['tab_frame'].Operation !== undefined) {\r\n");
	ViewBuilder.Append("                        window.frames['tab_frame'].Operation.save();\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                    $(\"#post_end\").val(\"end\");\r\n");
	ViewBuilder.Append("                    $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    };\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            var navHeight = $('#page-navbar').outerHeight();\r\n");
	ViewBuilder.Append("        })\r\n");

	if (istitle)
	{
	ViewBuilder.Append("    $(\"#btn_title\").click(function () {\r\n");
	ViewBuilder.Append("        $(\".td-nav .td-nav-title\").hide();\r\n");
	ViewBuilder.Append("        $(\"#\" + \"title\").show();\r\n");
	ViewBuilder.Append("        $(\"#\" + \"title\")[0].focus();\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    $(\"#title\").focusout(function () {\r\n");
	ViewBuilder.Append("        var $form = $(\"#titleform\");\r\n");
	ViewBuilder.Append("        $.ajax({\r\n");
	ViewBuilder.Append("            url: \"" + echo(apppath) + "workflow/worktitlesave.aspx?id=" + echo(workinfo.id) + "\",\r\n");
	ViewBuilder.Append("            type: \"post\",\r\n");
	ViewBuilder.Append("            data: $form.serialize(),\r\n");
	ViewBuilder.Append("            success: function (data) {\r\n");
	ViewBuilder.Append("                if (data === \"OK\") {\r\n");
	ViewBuilder.Append("                    //alert(\"保存工作标题成功!\");\r\n");
	ViewBuilder.Append("                };\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(this).hide();\r\n");
	ViewBuilder.Append("        var otitle= $(\".td-nav .td-nav-title\");\r\n");
	ViewBuilder.Append("        var showtitle=$(this).val();\r\n");
	ViewBuilder.Append("        if (showtitle.length > 30) {\r\n");
	ViewBuilder.Append("            showtitle = showtitle.substring(0, 30) + '...';\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        otitle.find(\"#showtitle\").html(showtitle);\r\n");
	ViewBuilder.Append("        otitle.attr(\"title\",'工作标题：'+$(this).val());\r\n");
	ViewBuilder.Append("        otitle.show();\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    $(\"#title\").keydown(function () {\r\n");
	ViewBuilder.Append("        if (event.keyCode === 13) {\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        return true;\r\n");
	ViewBuilder.Append("    })\r\n");
	}//end if

	if (ispost&&post=="rollback")
	{
	ViewBuilder.Append("    var parent = window.opener ? window.opener : window.dialogArguments;\r\n");
	ViewBuilder.Append("    try {\r\n");
	ViewBuilder.Append("        parent.update();\r\n");
	ViewBuilder.Append("    } catch (e) { };\r\n");
	ViewBuilder.Append("    layer.msg('回退成功！', 2, 1);\r\n");
	ViewBuilder.Append("    var bar = 0;\r\n");
	ViewBuilder.Append("    count();\r\n");
	ViewBuilder.Append("    function count() {\r\n");
	ViewBuilder.Append("        bar = bar + 4;\r\n");
	ViewBuilder.Append("        if (bar < 80) {\r\n");
	ViewBuilder.Append("            setTimeout(\"count()\", 100);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        else {\r\n");
	ViewBuilder.Append("            TUtil.winClose();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	}//end if
	ViewBuilder.Append("});\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");

	if (isrefresh==1)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("var parent = window.opener ? window.opener : window.dialogArguments;\r\n");
	ViewBuilder.Append("try {\r\n");
	ViewBuilder.Append("    parent.update();\r\n");
	ViewBuilder.Append("} catch (e) { }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append("    .users-select-block {\r\n");
	ViewBuilder.Append("        margin-left: 3px;\r\n");
	ViewBuilder.Append("        overflow-y: auto;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    .user-tags {\r\n");
	ViewBuilder.Append("        background: #00ff90;\r\n");
	ViewBuilder.Append("        margin: 0px;\r\n");
	ViewBuilder.Append("        padding: 0px;\r\n");
	ViewBuilder.Append("        overflow: hidden;\r\n");
	ViewBuilder.Append("        float: left;\r\n");
	ViewBuilder.Append("        margin-right: 10px;\r\n");
	ViewBuilder.Append("        padding-left: 3px;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("    <!--导航栏-->\r\n");
	ViewBuilder.Append("    <div id=\"page-navbar\">\r\n");
	ViewBuilder.Append("        <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("            <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("                <tbody>\r\n");
	ViewBuilder.Append("                    <tr>\r\n");
	ViewBuilder.Append("                        <td>\r\n");
	ViewBuilder.Append("                            <span class=\"td-nav-title\" style=\"display: block;\">" + echo(workinfo.title) + "</span>\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                        <td>\r\n");
	ViewBuilder.Append("                            <div class=\"pull-right\">\r\n");

	if (workinfo.isadmin==1)
	{
	ViewBuilder.Append("                                <a style=\"margin-right: 3px;\" class=\"btn btn-primary\" id=\"btn_save\">保存表单</a>\r\n");
	ViewBuilder.Append("                                <a style=\"margin-right: 3px;\" class=\"btn btn-danger\" id=\"btn_turn\">转交下一步</a>\r\n");

	if (workinfo.isback==0&&workinfo.uid==0)
	{
	ViewBuilder.Append("                                <a style=\"margin-right: 3px;\" class=\"btn btn-primary\" id=\"btn_back\">回退工作</a>\r\n");
	}//end if
	}
	else
	{
	ViewBuilder.Append("                                <a style=\"margin-right: 3px;\" class=\"btn btn-primary\" id=\"btn_save\">保存表单</a>\r\n");
	ViewBuilder.Append("                                <a style=\"margin-right: 3px;\" class=\"btn btn-danger\" id=\"btn_end\">办理完毕</a>\r\n");
	}//end if
	ViewBuilder.Append("                                <a style=\"margin-right: 3px;\" class=\"btn\" id=\"btn_print\">打印表单</a>\r\n");
	ViewBuilder.Append("                                <a onclick=\"window.close();\" style=\"margin-right: 3px;\" class=\"btn\" id=\"btn_close\">关闭</a>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <form style=\"margin: 0px;\" id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("                                <input type=\"hidden\" value=\"\" name=\"post\" id=\"post_end\">\r\n");
	ViewBuilder.Append("                            </form>\r\n");
	ViewBuilder.Append("                        </td>\r\n");
	ViewBuilder.Append("                    </tr>\r\n");
	ViewBuilder.Append("                </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("        <div>\r\n");
	ViewBuilder.Append("            <div style=\"padding: 5px 10px; font-size: 14px;\" id=\"tab-content\" class=\"tabs-above\">\r\n");
	ViewBuilder.Append("                <ul class=\"nav nav-tabs\">\r\n");

	if (flowinfo.formid>0)
	{
	ViewBuilder.Append("                    <li \r\n");

	if (action=="form")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"?id=" + echo(id) + "&action=form\">请假表单</a></li>\r\n");
	}//end if

	if (flowinfo.steps>1)
	{
	ViewBuilder.Append("                    <li \r\n");

	if (action=="flowlist")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"?id=" + echo(id) + "&action=flowlist\">流转记录</a></li>\r\n");
	ViewBuilder.Append("                    <li \r\n");

	if (action=="flow")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"?id=" + echo(id) + "&action=flow\">流程视图</a></li>\r\n");
	}//end if
	ViewBuilder.Append("                </ul>\r\n");
	ViewBuilder.Append("                <div class=\"tab-content\" style=\"height: 600px; overflow: hidden\">\r\n");

	if (action=="form")
	{
	ViewBuilder.Append("                    <iframe name=\"tab_frame\" id=\"tab_frame\" frameborder=\"0\" noresize=\"noresize\" src=\"flowform.aspx?id=" + echo(workinfo.id) + "\" style=\"height: 600px;\"></iframe>\r\n");
	}
	else if (action=="flowlist")
	{
	ViewBuilder.Append("                    <iframe name=\"tab_frame\" id=\"tab_frame\" frameborder=\"0\" noresize=\"noresize\" src=\"flowlist.aspx?id=" + echo(id) + "\" style=\"height: 600px;\"></iframe>\r\n");
	}
	else if (action=="flow")
	{
	ViewBuilder.Append("                    <iframe name=\"tab_frame\" id=\"tab_frame\" frameborder=\"0\" noresize=\"noresize\" src=\"flowshow.aspx?id=" + echo(workinfo.id) + "\" style=\"height: 600px;\"></iframe>\r\n");
	}//end if
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div id=\"rollBackModal\" class=\"modal hide fade\">\r\n");
	ViewBuilder.Append("        <div class=\"modal-header\">\r\n");
	ViewBuilder.Append("            <a class=\"close\" data-dismiss=\"modal\">&times;</a>\r\n");
	ViewBuilder.Append("            <h4>工作回退</h4>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"modal-body\">\r\n");
	ViewBuilder.Append("            <div class=\"row-fluid\">\r\n");
	ViewBuilder.Append("                <div style=\"padding: 10px;\">\r\n");
	ViewBuilder.Append("                    <div class=\"work-prcs-title\" style=\"margin-bottom: 10px; font-weight: normal; border-radius: 4px; -webkit-border-radius: 4px;\">\r\n");
	ViewBuilder.Append("                        <strong>回退上一步骤：</strong>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                    <form action=\"\" method=\"post\" name=\"rollBackForm\" id=\"rollBackForm\" style=\"margin: 0;\">\r\n");
	ViewBuilder.Append("                        <input type=\"hidden\" value=\"rollback\" name=\"post\" id=\"post1\">\r\n");
	ViewBuilder.Append("                        <div style=\"margin-top: 6px;\" class=\"procinfo\">\r\n");
	ViewBuilder.Append("                            <strong>第" + echo(pre_workinfo.step) + "步 " + echo(pre_workinfo.stepname) + "</strong><br>\r\n");
	ViewBuilder.Append("                            <span class=\"main\">办理人：<font color=\"red\">" + echo(pre_workinfo.rawname) + "</font></span>&nbsp;&nbsp;\r\n");
	ViewBuilder.Append("                    <span class=\"end\">办理时间：" + echo(pre_workinfo.endtime,"yyyy-MM-dd HH:mm:ss") + "</span>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                        <div style=\"margin-top: 20px;\">\r\n");
	ViewBuilder.Append("                            <h5 style=\"border-bottom: 1px solid #ccc;\">回退意见</h5>\r\n");
	ViewBuilder.Append("                            <textarea style=\"width: 96%; margin-top: 10px;\" id=\"feedback\" name=\"feedback\"></textarea>\r\n");
	ViewBuilder.Append("                            <h5 style=\"border-bottom: 1px solid #ccc;\">提醒信息</h5>\r\n");
	ViewBuilder.Append("                            <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                                <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                                    <input id=\"ismsg1\" style=\"margin-top: 4px;\" type=\"checkbox\" value=\"1\" checked=\"checked\" name=\"ismsg\">\r\n");
	ViewBuilder.Append("                                    <label for=\"ismsg1\">发送内部消息提醒</label>\r\n");
	ViewBuilder.Append("                                </label>\r\n");
	ViewBuilder.Append("                                <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                                    <input id=\"issms1\" style=\"margin-top: 4px;\" type=\"checkbox\" checked=\"checked\" value=\"1\" name=\"issms\">\r\n");
	ViewBuilder.Append("                                    <label for=\"issms1\">发送手机短信提醒</label>\r\n");
	ViewBuilder.Append("                                </label>\r\n");
	ViewBuilder.Append("                            </label>\r\n");
	ViewBuilder.Append("                            <textarea style=\"width: 96%; margin-top: 10px;\" name=\"content\" id=\"content1\">您有回退的工作,标题:" + echo(workinfo.title) + "</textarea>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </form>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"modal-footer\">\r\n");
	ViewBuilder.Append("            <span class=\"pull-left counter\"></span>\r\n");
	ViewBuilder.Append("            <a id=\"btnRollBackSubmit\" class=\"btn btn-primary\">确定</a>\r\n");
	ViewBuilder.Append("            <a class=\"btn\" id=\"btn_rollback_cancel\">取消</a>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div id=\"turnModal\" class=\"modal hide fade\">\r\n");
	ViewBuilder.Append("        <div class=\"modal-header\" style=\"padding: 2px 15px;\">\r\n");
	ViewBuilder.Append("            <a class=\"close\" data-dismiss=\"modal\">&times;</a>\r\n");
	ViewBuilder.Append("            <h4>工作转交</h4>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"modal-body\" style=\"padding: 5px 15px;\">\r\n");
	ViewBuilder.Append("            <div class=\"row-fluid\">\r\n");
	ViewBuilder.Append("                <div class=\"span4 \" style=\"margin-left: 20px;\">\r\n");
	ViewBuilder.Append("                    <h5 style=\"border-bottom: 1px solid #ccc;\">选择下一步骤</h5>\r\n");
	ViewBuilder.Append("                    <ul class=\"nav nav-list td-nav-list\" style=\"margin: 0; padding: 0;\" id=\"taskList\">\r\n");

	loop__id=0;
	foreach(FlowStepInfo item in next_steplist)
	{
	loop__id++;

	if (item.id==-1)
	{
	ViewBuilder.Append("                        <li><a node-data=\"" + echo(item.id) + "\" node-type=\"end\" select_user_mode=\"list\" mode=\"normal\"><i class=\"icon-checkbox-unchecked-3\" style=\"color: black;\"></i>" + echo(item.step) + "." + echo(item.name) + "</a></li>\r\n");
	}
	else
	{
	ViewBuilder.Append("                        <li><a node-data=\"" + echo(item.id) + "\" node-type=\"task\" select_user_mode=\"list\" mode=\"normal\"><i class=\"icon-checkbox-unchecked-3\" style=\"color: black;\"></i>" + echo(item.step) + "." + echo(item.name) + "</a></li>\r\n");
	}//end if
	}//end loop
	ViewBuilder.Append("                    </ul>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <div class=\"span7\" style=\"margin-left: 20px; min-height: 300px;\" id=\"message_box\">\r\n");
	ViewBuilder.Append("                    <div>\r\n");
	ViewBuilder.Append("                        <div class=\"td-messagebox panel panel-success\">\r\n");
	ViewBuilder.Append("                            <div class=\"panel-heading\">\r\n");
	ViewBuilder.Append("                                <h3 class=\"panel-title\"><i class=\"icon-marker-2\"></i>温馨提示</h3>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <div class=\"panel-body\">请选择左侧的步骤</div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("                <form id=\"turnForm\" name=\"turnForm\" action=\"\" method=\"post\" style=\"margin: 0;\">\r\n");
	ViewBuilder.Append("                    <input type=\"hidden\" value=\"\" name=\"stepid\" id=\"stepid\">\r\n");
	ViewBuilder.Append("                    <input type=\"hidden\" value=\"turn\" name=\"post\" id=\"post\">\r\n");
	ViewBuilder.Append("                    <div class=\"span7\" style=\"margin-left: 20px; min-height: 200px; display: none\" id=\"turn_information\">\r\n");
	ViewBuilder.Append("                        <div style=\"min-height: 100px;\">\r\n");
	ViewBuilder.Append("                            <h5 style=\"border-bottom: 1px solid #ccc;\">选择下一步办理人</h5>\r\n");
	ViewBuilder.Append("                            <div class=\"users-select-block\">\r\n");
	ViewBuilder.Append("                                <div id=\"host_op_block_div2\" class=\"clearfix\">\r\n");
	ViewBuilder.Append("                                    <input type=\"hidden\" id=\"PRCS_OP_USER2\" data_type=\"op_user_btn\" name=\"PRCS_OP_USER2\" value=\"\">\r\n");
	ViewBuilder.Append("                                    <div class=\"sponsor\" style=\"float: left;\">\r\n");
	ViewBuilder.Append("                                        <a class=\"prcs-op-uname\" id=\"TOP_FLAG_SHOW2\">主办人：</a>\r\n");
	ViewBuilder.Append("                                    </div>\r\n");
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                                <div id=\"prcs_op_block_div2\" class=\"clearfix\" style=\"margin: 5px 0\">\r\n");
	ViewBuilder.Append("                                    <input type=\"hidden\" data_type=\"op_user_btn\" id=\"PRCS_USER2\" name=\"PRCS_USER2\" value=\"\">\r\n");
	ViewBuilder.Append("                                    <div class=\"managers\" style=\"float: left;\">经办人：</div>\r\n");
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                            <a style=\"margin: 0 4px; vertical-align: bottom;\" class=\"btn btn-success btn-small\" id=\"btn_selector\">选择经办/主办人</a>\r\n");
	ViewBuilder.Append("                            <a style=\"margin: 0 4px; vertical-align: bottom;\" class=\"btn btn-small\" id=\"btn_clear\">清&nbsp;&nbsp;&nbsp;&nbsp;空</a>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                        <div id=\"remind_box\" style=\"margin-top: 20px;\">\r\n");
	ViewBuilder.Append("                            <h5 style=\"border-bottom: 1px solid #ccc;\">提醒信息</h5>\r\n");
	ViewBuilder.Append("                            <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                                <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                                    <input id=\"ismsg\" style=\"margin-top: 4px;\" type=\"checkbox\" value=\"1\" name=\"ismsg\">\r\n");
	ViewBuilder.Append("                                    <label for=\"ismsg\">系统消息提醒</label>\r\n");
	ViewBuilder.Append("                                </label>\r\n");
	ViewBuilder.Append("                                <label class=\"checkbox inline\">\r\n");
	ViewBuilder.Append("                                    <input id=\"issms\" style=\"margin-top: 4px;\" type=\"checkbox\" value=\"1\" name=\"issms\">\r\n");
	ViewBuilder.Append("                                    <label for=\"issms\">手机短信提醒</label>\r\n");
	ViewBuilder.Append("                                </label>\r\n");
	ViewBuilder.Append("                            </label>\r\n");
	ViewBuilder.Append("                            <textarea style=\"width: 360px; height: 60px; margin-top: 10px;\" name=\"content\" id=\"content\">您有待办的工作:" + echo(workinfo.title) + "</textarea>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                    <div class=\"span7\" style=\"margin-left: 20px; min-height: 300px; display: none;\" id=\"end_box\">\r\n");
	ViewBuilder.Append("                        <div>\r\n");
	ViewBuilder.Append("                            <div class=\"td-messagebox panel panel-success\">\r\n");
	ViewBuilder.Append("                                <div class=\"panel-heading\">\r\n");
	ViewBuilder.Append("                                    <h3 class=\"panel-title\"><i class=\"icon-marker-2\"></i>温馨提示</h3>\r\n");
	ViewBuilder.Append("                                </div>\r\n");
	ViewBuilder.Append("                                <div class=\"panel-body\">选择结束步骤无需指定下一步经办人</div>\r\n");
	ViewBuilder.Append("                            </div>\r\n");
	ViewBuilder.Append("                        </div>\r\n");
	ViewBuilder.Append("                    </div>\r\n");
	ViewBuilder.Append("                </form>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"modal-footer\">\r\n");
	ViewBuilder.Append("            <span class=\"pull-left counter\"></span>\r\n");
	ViewBuilder.Append("            <a id=\"btnTurnSubmit\" class=\"btn btn-primary\">确定</a>\r\n");
	ViewBuilder.Append("            <a class=\"btn\" id=\"btn_turn_cancel\">取消</a>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        $(function () {\r\n");
	ViewBuilder.Append("            $('#turnModal').modal({ 'backdrop': 'static', 'width': '700', 'show': false });\r\n");
	ViewBuilder.Append("            //保存表单\r\n");
	ViewBuilder.Append("            $(\"#btn_save\").click(function () {\r\n");
	ViewBuilder.Append("                if (window.frames['tab_frame'] && window.frames['tab_frame'].Operation !== undefined) {\r\n");
	ViewBuilder.Append("                    window.frames['tab_frame'].Operation.save();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            //确定转交\r\n");
	ViewBuilder.Append("            $(\"#btn_turn\").click(function () {\r\n");
	ViewBuilder.Append("                if (window.frames['tab_frame'] && window.frames['tab_frame'].Operation !== undefined) {\r\n");
	ViewBuilder.Append("                    window.frames['tab_frame'].Operation.save();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                $('#turnModal').modal({ 'width': '700', 'show': true });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            //办结\r\n");
	ViewBuilder.Append("            $(\"#btn_end\").click(function () {\r\n");
	ViewBuilder.Append("                window.confirm('确定已办结该工作了吗？', function (ret) {\r\n");
	ViewBuilder.Append("                    if (ret == true) {\r\n");
	ViewBuilder.Append("                        if (window.frames['tab_frame'] && window.frames['tab_frame'].Operation !== undefined) {\r\n");
	ViewBuilder.Append("                            window.frames['tab_frame'].Operation.save();\r\n");
	ViewBuilder.Append("                        }\r\n");
	ViewBuilder.Append("                        $(\"#post_end\").val(\"end\");\r\n");
	ViewBuilder.Append("                        $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(\"#btn_print\").click(function () {\r\n");
	ViewBuilder.Append("                TUtil.openUrl('flow_print.aspx?id=" + echo(id) + "','','',1000,700);\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(document).on('click', '#taskList a i', function () {\r\n");
	ViewBuilder.Append("                if ($(this).hasClass(\"icon-checkbox-unchecked-3\"))\r\n");
	ViewBuilder.Append("                    $(this).removeClass('icon-checkbox-unchecked-3').addClass('icon-checkbox-checked-2');\r\n");
	ViewBuilder.Append("                else\r\n");
	ViewBuilder.Append("                    $(this).removeClass('icon-checkbox-checked-2').addClass('icon-checkbox-unchecked-3');\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(document).on('click','#taskList a', function () {\r\n");
	ViewBuilder.Append("                var mode = $(this).attr(\"select_user_mode\");\r\n");
	ViewBuilder.Append("                var turnMode = $(this).attr(\"mode\");\r\n");
	ViewBuilder.Append("                var wft = $(this).attr('node-data');//对应使用那个办理人选择框\r\n");
	ViewBuilder.Append("                var nodeType = $(this).attr('node-type');//步骤类型\r\n");
	ViewBuilder.Append("                var canChange;\r\n");
	ViewBuilder.Append("                //已选择步骤，则取消温馨提示\r\n");
	ViewBuilder.Append("                if ($(\"#message_box\").length > 0) {\r\n");
	ViewBuilder.Append("                    $(\"#message_box\").hide();\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                //如果是结束步骤则不显示下一步办理人\r\n");
	ViewBuilder.Append("                if (nodeType == \"end\") {\r\n");
	ViewBuilder.Append("                    $(\"#turn_information\").hide();\r\n");
	ViewBuilder.Append("                    $(\"#end_box\").show();\r\n");
	ViewBuilder.Append("                    $(\"#turn_information\").prev().css({ \"padding-bottom\": \"20px\" });\r\n");
	ViewBuilder.Append("                } else {\r\n");
	ViewBuilder.Append("                    $(\"#turn_information\").show();\r\n");
	ViewBuilder.Append("                    $(\"#end_box\").hide();\r\n");
	ViewBuilder.Append("                    $(\"#turn_information\").prev().css({ \"padding-bottom\": \"0px\" });\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                if (!$(this).parent().attr('required') && ($(this).parent().attr('multi'))) {\r\n");
	ViewBuilder.Append("                    canChange = true;\r\n");
	ViewBuilder.Append("                } else {\r\n");
	ViewBuilder.Append("                    canChange = false;\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                if (canChange && $(this).parent().hasClass(\"active\")) {\r\n");
	ViewBuilder.Append("                    if ($(this).parent().find('i').hasClass('icon-checkbox-unchecked-3')) {\r\n");
	ViewBuilder.Append("                        $(this).parent().find('i').removeClass('icon-checkbox-unchecked-3').addClass('icon-checkbox-checked-2').css({\r\n");
	ViewBuilder.Append("                            color: '#dd4b39'\r\n");
	ViewBuilder.Append("                        });\r\n");
	ViewBuilder.Append("                    } else {\r\n");
	ViewBuilder.Append("                        $(this).parent().find('i').addClass('icon-checkbox-unchecked-3').removeClass('icon-checkbox-checked-2').css({\r\n");
	ViewBuilder.Append("                            color: '#dd4b39'\r\n");
	ViewBuilder.Append("                        });\r\n");
	ViewBuilder.Append("                    }\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                if (!$(this).parent().hasClass('active')) {\r\n");
	ViewBuilder.Append("                    $(this).parents('ul').children().each(function () {\r\n");
	ViewBuilder.Append("                        if ($(this).attr('multi')) {\r\n");
	ViewBuilder.Append("                            if ($(this).find('i').hasClass('icon-checkbox-checked-2') || $(this).find('i').hasClass('icon-checkbox-unchecked-3')) {\r\n");
	ViewBuilder.Append("                                $(this).removeClass(\"active\").find('i').css({\r\n");
	ViewBuilder.Append("                                    color: 'black'\r\n");
	ViewBuilder.Append("                                });\r\n");
	ViewBuilder.Append("                                if ($(this).attr('required') !== \"required\" && (($(this).find('a').attr('select_user_mode') === 'list' && WFTurn.hasNode($(this).find('a').attr('node-data')) === 0) || ($(this).find('a').attr('select_user_mode') === 'select' && $('#trun_user_' + $(this).find('a').attr('node-data')).val()))) {\r\n");
	ViewBuilder.Append("                                    if (!canChange)\r\n");
	ViewBuilder.Append("                                        $(this).find('i').removeClass('icon-checkbox-checked-2').addClass('icon-checkbox-unchecked-3');\r\n");
	ViewBuilder.Append("                                }\r\n");
	ViewBuilder.Append("                            }\r\n");
	ViewBuilder.Append("                        } else {\r\n");
	ViewBuilder.Append("                            if ($(this).find('i').hasClass('icon-checkbox-checked-2') || $(this).find('i').hasClass('icon-checkbox-unchecked-3')) {\r\n");
	ViewBuilder.Append("                                $(this).removeClass(\"active\").find('i').removeClass('icon-checkbox-checked-2').addClass('icon-checkbox-unchecked-3').css({\r\n");
	ViewBuilder.Append("                                    color: 'black'\r\n");
	ViewBuilder.Append("                                });\r\n");
	ViewBuilder.Append("                            }\r\n");
	ViewBuilder.Append("                        }\r\n");
	ViewBuilder.Append("                    });\r\n");
	ViewBuilder.Append("                    $(this).parent().addClass(\"active\").find('i').removeClass('icon-checkbox-unchecked-3').addClass('icon-checkbox-checked-2').css({\r\n");
	ViewBuilder.Append("                        color: '#dd4b39'\r\n");
	ViewBuilder.Append("                    });\r\n");
	ViewBuilder.Append("                    $('#stepid').val($(this).attr('node-data'));\r\n");
	ViewBuilder.Append("                    $(\"#PRCS_OP_USER2\").val(\"\");\r\n");
	ViewBuilder.Append("                    $(\"#PRCS_USER2\").val(\"\");\r\n");
	ViewBuilder.Append("                    var oClearList = $(\".user-tags\");\r\n");
	ViewBuilder.Append("                    oClearList.remove();\r\n");
	ViewBuilder.Append("                    //获取默认主办人\r\n");
	ViewBuilder.Append("                    $.ajax({\r\n");
	ViewBuilder.Append("                      type: 'post',\r\n");
	ViewBuilder.Append("                      url: 'stepuser.aspx',\r\n");
	ViewBuilder.Append("                      data:{stepid:$('#stepid').val(),workid:" + echo(id) + "},\r\n");
	ViewBuilder.Append("                      dataType: 'json',\r\n");
	ViewBuilder.Append("                      success: function (data) {\r\n");
	ViewBuilder.Append("                          if(data.userid>0){\r\n");
	ViewBuilder.Append("                              $(\"#PRCS_OP_USER2\").val(data.userid);\r\n");
	ViewBuilder.Append("                              $(\"#host_op_block_div2\").append('<div class=\"user-tags\" user_id=\"'+data.userid+'\">'+data.realname+'<i class=\"close\">×</i></div>');\r\n");
	ViewBuilder.Append("                          }\r\n");
	ViewBuilder.Append("                      }\r\n");
	ViewBuilder.Append("                    })\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            //选择经办/主办人\r\n");
	ViewBuilder.Append("            $(\"#btn_selector\").click(function () {\r\n");
	ViewBuilder.Append("                var url = \"" + echo(plupath) + "stepuser/index.aspx?workid=" + echo(workinfo.id) + "&stepid=\" + $('#stepid').val();\r\n");
	ViewBuilder.Append("                byuser_open(url);\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(\"#btn_clear\").click(function () {\r\n");
	ViewBuilder.Append("                $(\"#PRCS_OP_USER2\").val(\"\");\r\n");
	ViewBuilder.Append("                $(\"#PRCS_USER2\").val(\"\");\r\n");
	ViewBuilder.Append("                var oClearList = $(\".user-tags\");\r\n");
	ViewBuilder.Append("                oClearList.remove();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(document).on('click', '.close', function () {\r\n");
	ViewBuilder.Append("                var tags_obj = $(this).parent();\r\n");
	ViewBuilder.Append("                var op_block_div = tags_obj.parent();\r\n");
	ViewBuilder.Append("                var op_user_val_btn = op_block_div.find('input[data_type=\"op_user_btn\"]');\r\n");
	ViewBuilder.Append("                var user_id = tags_obj.attr('user_id');\r\n");
	ViewBuilder.Append("                var flow_prcs = op_block_div.attr('id').substring(17);\r\n");
	ViewBuilder.Append("                if (op_block_div.attr('id').substring(0, 4) == 'prcs' && $('#PRCS_OP_USER' + flow_prcs).val() == user_id) {\r\n");
	ViewBuilder.Append("                    $('#host_op_block_div' + flow_prcs).find('i[class=\"close\"]').trigger('click');\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                if (op_user_val_btn.val().indexOf(user_id + ',') == 0) {\r\n");
	ViewBuilder.Append("                    op_user_val_btn.val(op_user_val_btn.val().replace(user_id + ',', ''));\r\n");
	ViewBuilder.Append("                } else if (op_user_val_btn.val().indexOf(',' + user_id + ',') > 0) {\r\n");
	ViewBuilder.Append("                    op_user_val_btn.val(op_user_val_btn.val().replace(',' + user_id + ',', ','));\r\n");
	ViewBuilder.Append("                } else if (op_user_val_btn.val() == user_id) {\r\n");
	ViewBuilder.Append("                    op_user_val_btn.val('');\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                tags_obj.remove();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(\"#btnTurnSubmit\").click(function () {\r\n");
	ViewBuilder.Append("                var stepid=$('#stepid').val();\r\n");
	ViewBuilder.Append("                if($(\"#PRCS_OP_USER2\").val().length==0&&stepid!=-1)\r\n");
	ViewBuilder.Append("                {\r\n");
	ViewBuilder.Append("                    alert(\"主办人不能为空。\");\r\n");
	ViewBuilder.Append("                    return;\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("                $(\"#turnForm\").submit();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(document).on('click', '#btn_turn_cancel', function () {\r\n");
	ViewBuilder.Append("                $('#turnModal').modal('hide');\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            //回退\r\n");
	ViewBuilder.Append("            $('#rollBackModal').modal({ 'backdrop': 'static', 'width': '700', 'show': false });\r\n");
	ViewBuilder.Append("            $(\"#btn_back\").click(function () {\r\n");
	ViewBuilder.Append("                $('#rollBackModal').modal({ 'width': '700', 'show': true });\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(document).on('click', '#btn_rollback_cancel', function () {\r\n");
	ViewBuilder.Append("                $('#rollBackModal').modal('hide');\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(\"#btnRollBackSubmit\").click(function () {\r\n");
	ViewBuilder.Append("                $(\"#rollBackForm\").submit();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            $(window).resize(function () {\r\n");
	ViewBuilder.Append("                var height = $(window).height();\r\n");
	ViewBuilder.Append("                $(\".tab-content\").height(height-90);\r\n");
	ViewBuilder.Append("                $(\"#tab_frame\").height(height-90);\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("            if ($.browser.msie && 8 === parseInt($.browser.version)) {\r\n");
	ViewBuilder.Append("                var iframeObj = document.getElementById(\"tab_frame\");\r\n");
	ViewBuilder.Append("                if (iframeObj.attachEvent) {\r\n");
	ViewBuilder.Append("                    iframeObj.attachEvent(\"onload\", function () {\r\n");
	ViewBuilder.Append("                        TUtil.ie8FixIcon();\r\n");
	ViewBuilder.Append("                    });\r\n");
	ViewBuilder.Append("                } else {\r\n");
	ViewBuilder.Append("                    iframeObj.addEventListener(\"onload\", function () {\r\n");
	ViewBuilder.Append("                        TUtil.ie8FixIcon();\r\n");
	ViewBuilder.Append("                    }, false);\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            $(window).trigger(\"resize\"); \r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("   </");
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
