<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_WorkFlow.Controller.workview" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_WorkFlow" %>
<%@ Import namespace="FP_WorkFlow.Model" %>
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
	ViewBuilder.Append("<title>" + echo(workinfo.title) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.min.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.bootbox.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.notify.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-prompts.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modal.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "bootstrap/js/bootstrap-modalmanager.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jform/jquery.form.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/document.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            var navHeight = $('#page-navbar').outerHeight();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_back\").click(function () {\r\n");
	ViewBuilder.Append("            if (window._originalConfirm(\"您确定要撤回吗？\")) {\r\n");
	ViewBuilder.Append("                $(\"#post\").val(\"back\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btn_complete\").click(function () {\r\n");
	ViewBuilder.Append("            if (window._originalConfirm(\"确定已完成了该工作了吗？\")) {\r\n");
	ViewBuilder.Append("                $(\"#post\").val(\"complete\");\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <style>\r\n");
	ViewBuilder.Append("         /* lch 2017-7-7 */\r\n");
	ViewBuilder.Append("          .th {\r\n");
	ViewBuilder.Append("        background-color:#edf2f3;\r\n");
	ViewBuilder.Append("        /*#d6e1e4  rgb(239, 240, 245)*/\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    input {\r\n");
	ViewBuilder.Append("        border:1px solid #424040;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    </style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<!--导航栏-->\r\n");
	ViewBuilder.Append("<div id=\"page-navbar\">\r\n");
	ViewBuilder.Append("  <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" method=\"post\" name=\"frmpost\" action=\"\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" name=\"post\" id=\"post\" value=\"\">\r\n");
	ViewBuilder.Append("    <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("            <span class=\"td-nav-title\" style=\"display: block;\"><span style=\"font-weight:bold;\">工作标题：</span>" + echo(workinfo.title) + "\r\n");

	if (workinfo.status<=2)
	{
	ViewBuilder.Append("            <span class=\"label label-important\"><b>执行中</b></span>\r\n");
	}
	else if (workinfo.status==3)
	{
	ViewBuilder.Append("            <span class=\"label label-info\"><b>已办结</b></span>\r\n");
	}
	else if (workinfo.status==4)
	{
	ViewBuilder.Append("            <span class=\"label label-success\"><b>已完成</b></span>\r\n");
	}//end if
	ViewBuilder.Append("            </span>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <div class=\"pull-right\">\r\n");

	if (workinfo.allowback==1&&workinfo.status==2)
	{
	ViewBuilder.Append("                  <a style=\"margin-right:3px;\" class=\"btn btn-danger\" id=\"btn_back\">撤回</a>\r\n");
	}//end if

	if (workinfo.uid==userid&&workinfo.status==3)
	{
	ViewBuilder.Append("                  <a style=\"margin-right:3px;\" class=\"btn btn-primary\" id=\"btn_complete\">完成工作</a>\r\n");
	}//end if

	if (workinfo.isfav==1)
	{
	ViewBuilder.Append("                  <a style=\"margin-right:3px;\" class=\"btn\" id=\"btn_fav\">取消关注</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("                  <a style=\"margin-right:3px;\" class=\"btn\" id=\"btn_fav\">关注</a>\r\n");
	}//end if
	ViewBuilder.Append("                  <a onclick=\"window.close();\" style=\"margin-right:3px;\" class=\"btn\">关闭</a>\r\n");
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("    <div style=\"padding:5px 10px;font-size:14px;\" id=\"tab-content\" class=\"tabs-above\">\r\n");
	ViewBuilder.Append("      <ul class=\"nav nav-tabs\">\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (action=="form")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"?id=" + echo(id) + "&action=form\">工作表单</a></li>\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (action=="flowlist")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"?id=" + echo(id) + "&action=flowlist\">流转记录</a></li>\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (action=="flow")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"?id=" + echo(id) + "&action=flow\">查看流程图</a></li>\r\n");
	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      <div class=\"tab-content\" style=\"height:600px;overflow:hidden\">\r\n");

	if (action=="form")
	{
	ViewBuilder.Append("        <iframe name=\"tab_frame\" id=\"tab_frame\" frameborder=\"0\" noresize=\"noresize\" src=\"" + echo(apppath) + "workflow/flowform.aspx?id=" + echo(workinfo.id) + "\" style=\"height:600px;\"></iframe>\r\n");
	}
	else if (action=="flowlist")
	{
	ViewBuilder.Append("        <iframe name=\"tab_frame\" id=\"tab_frame\" frameborder=\"0\" noresize=\"noresize\" src=\"" + echo(apppath) + "workflow/flowlist.aspx?id=" + echo(id) + "&action=view\" style=\"height:600px;\"></iframe>\r\n");
	}
	else if (action=="flow")
	{
	ViewBuilder.Append("        <iframe name=\"tab_frame\" id=\"tab_frame\" frameborder=\"0\" noresize=\"noresize\" src=\"" + echo(apppath) + "workflow/flowshow.aspx?id=" + echo(workinfo.id) + "&action=view\" style=\"height:600px;\"></iframe>\r\n");
	}//end if
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("$(function () {\r\n");
	ViewBuilder.Append("    $(window).resize(function () {\r\n");
	ViewBuilder.Append("        var height = $(window).height();\r\n");
	ViewBuilder.Append("        $(\".tab-content\").height(height-90);\r\n");
	ViewBuilder.Append("        $(\"#tab_frame\").height(height-90);\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    $(\"#btn_fav\").click(function () {\r\n");
	ViewBuilder.Append("        var othis=$(this);\r\n");
	ViewBuilder.Append("        $.ajax({\r\n");
	ViewBuilder.Append("            type: 'post',\r\n");
	ViewBuilder.Append("            url: 'fav_ctrl.aspx',\r\n");
	ViewBuilder.Append("            data:{workid:" + echo(id) + "},\r\n");
	ViewBuilder.Append("        dataType: 'json',\r\n");
	ViewBuilder.Append("        success: function (data) {\r\n");
	ViewBuilder.Append("            if(data.errcode==10)\r\n");
	ViewBuilder.Append("            {\r\n");
	ViewBuilder.Append("                othis.html(\"关注\");\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            else{\r\n");
	ViewBuilder.Append("                othis.html(\"取消关注\");\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("            $.notify({\r\n");
	ViewBuilder.Append("                type: 'success',\r\n");
	ViewBuilder.Append("                message: {\r\n");
	ViewBuilder.Append("                    text: data.errmsg,\r\n");
	ViewBuilder.Append("                    icon: 'icon-info'\r\n");
	ViewBuilder.Append("                }\r\n");
	ViewBuilder.Append("            }).show();\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("       });\r\n");
	ViewBuilder.Append("    });\r\n");
	ViewBuilder.Append("    if ($.browser.msie && 8 === parseInt($.browser.version)) {\r\n");
	ViewBuilder.Append("        var iframeObj = document.getElementById(\"tab_frame\");\r\n");
	ViewBuilder.Append("        if (iframeObj.attachEvent) {\r\n");
	ViewBuilder.Append("            iframeObj.attachEvent(\"onload\", function () {\r\n");
	ViewBuilder.Append("                TUtil.ie8FixIcon();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        } else {\r\n");
	ViewBuilder.Append("            iframeObj.addEventListener(\"onload\", function () {\r\n");
	ViewBuilder.Append("                TUtil.ie8FixIcon();\r\n");
	ViewBuilder.Append("            }, false);\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("    $(window).trigger(\"resize\"); \r\n");
	ViewBuilder.Append("  })\r\n");
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
