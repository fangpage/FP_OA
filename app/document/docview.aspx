<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Document.Controller.docview" %>
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
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<title>" + echo(documentinfo.title) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-file-selector.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/document.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/workflow.turn.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/selector.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "multifile/jquery.multifile.js\"></");
	ViewBuilder.Append("script>\r\n");
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
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"statics/css/taskview.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/attachment.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append(".page {\r\n");
	ViewBuilder.Append("	width:100%;\r\n");
	ViewBuilder.Append("	background:#F0F0F0;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("body{\r\n");
	ViewBuilder.Append("background:#F0F0F0;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("    .mytable  table{\r\n");
	ViewBuilder.Append("        border:1px red solid!important;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");

	if (refresh==1)
	{
	ViewBuilder.Append("    var parent = window.opener ? window.opener : window.dialogArguments;\r\n");
	ViewBuilder.Append("    try {\r\n");
	ViewBuilder.Append("        parent.update();\r\n");
	ViewBuilder.Append("    } catch (e) { }\r\n");
	}//end if
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"page-navbar\">\r\n");
	ViewBuilder.Append("  <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\" class=\"form-horizontal MultiFile-intercepted\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" value=\"\" name=\"action\" id=\"action1\">\r\n");
	ViewBuilder.Append("    <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("            <div>\r\n");
	ViewBuilder.Append("              <div class=\"pull-left\" style=\"line:35px;line-height: 35px; font-size:16px;\"><span style=\"font-weight: bold;\">发文标题：</span>" + echo(documentinfo.title) + "\r\n");

	if (documentinfo.uid==0)
	{

	if (documentinfo.status>=2)
	{
	ViewBuilder.Append("                  <span class=\"label label-info\"><b>已签收</b></span>\r\n");
	}
	else
	{
	ViewBuilder.Append("                  <span class=\"label label-important\"><b>未签收</b></span>\r\n");
	}//end if
	}
	else
	{

	if (documentinfo.status>=2)
	{
	ViewBuilder.Append("                  <span class=\"label label-info\"><b>已签完</b></span>\r\n");
	}
	else
	{
	ViewBuilder.Append("                  <span class=\"label label-important\"><b>未签完</b></span>\r\n");
	}//end if
	}//end if
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("              <div class=\"pull-right\" style=\"padding-right:10px;\"> \r\n");

	if (documentinfo.status<2&&documentinfo.uid==0)
	{
	ViewBuilder.Append("                  <a style=\"margin-right:3px;\" class=\"btn btn-danger\" href=\"#\" id=\"btn_turn\">签收</a>\r\n");
	}//end if
	ViewBuilder.Append("                  <a onclick=\"window.close();\" class=\"btn\">关闭</a></div>\r\n");
	ViewBuilder.Append("             </div>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("   <div style=\"padding:5px 10px;font-size:14px;\" id=\"tab-content\" class=\"tabs-above\">\r\n");
	ViewBuilder.Append("      <ul class=\"nav nav-tabs\">\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (action=="info")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"?id=" + echo(id) + "&action=info\">公文内容</a></li>\r\n");
	ViewBuilder.Append("        <li \r\n");

	if (action=="deal")
	{
	ViewBuilder.Append(" class=\"active\" \r\n");
	}//end if
	ViewBuilder.Append("><a href=\"?id=" + echo(id) + "&action=deal\">签收情况</a></li>\r\n");
	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      <div class=\"tab-content mytable\" style=\"height:600px;overflow:hidden\">\r\n");

	if (action=="info")
	{
	ViewBuilder.Append("          <iframe name=\"tab_frame\" id=\"tab_frame\" frameborder=\"0\" noresize=\"noresize\" src=\"docinfo.aspx?id=" + echo(id) + "\" style=\"height:600px;\"></iframe>\r\n");
	}
	else if (action=="deal")
	{
	ViewBuilder.Append("          <iframe name=\"tab_frame\" id=\"tab_frame\" frameborder=\"0\" noresize=\"noresize\" src=\"docdeal.aspx?id=" + echo(id) + "\" style=\"height:600px;\"></iframe>\r\n");
	}//end if
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("   </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"turnModal\" class=\"modal hide fade\">\r\n");
	ViewBuilder.Append("  <div class=\"modal-header\" style=\"padding: 2px 15px;\"> <a class=\"close\" data-dismiss=\"modal\">&times;</a>\r\n");
	ViewBuilder.Append("    <h4>文件签收</h4>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("  <div class=\"modal-body\" style=\"padding: 5px 15px;\">\r\n");
	ViewBuilder.Append("    <div class=\"row-fluid\">\r\n");
	ViewBuilder.Append("      <form id=\"turnForm\" name=\"turnForm\" action=\"\" method=\"post\" style=\"margin: 0;\" class=\"form-horizontal MultiFile-intercepted\" enctype=\"multipart/form-data\">\r\n");
	ViewBuilder.Append("      <input type=\"hidden\" value=\"\" name=\"action\" id=\"action2\">\r\n");
	ViewBuilder.Append("      <div class=\"span7\" style=\"margin-left: 10px;min-height: 150px;width:450px;\" id=\"turn_information\">\r\n");
	ViewBuilder.Append("        <div id=\"content_box\" style=\"margin-top: 5px;\">\r\n");
	ViewBuilder.Append("            <h5 style=\"border-bottom:1px solid #ccc;\">签收人：</h5>\r\n");
	ViewBuilder.Append("            <input id=\"txtsign\" type=\"text\" name=\"txtsign\" value=\"\" style=\"width:420px;\">\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("       </div>\r\n");
	ViewBuilder.Append("       </form>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("  <div class=\"modal-footer\">\r\n");
	ViewBuilder.Append("      <span class=\"pull-left counter\"></span>\r\n");
	ViewBuilder.Append("      <a id=\"btnTurnSubmit\" class=\"btn btn-primary\">确定</a>\r\n");
	ViewBuilder.Append("      <a class=\"btn\" id=\"btn_turn_cancel\">取消</a>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(\"#btn_turn\").click(function () {\r\n");
	ViewBuilder.Append("            $('#turnModal').modal({ 'width': '600', 'show': true });\r\n");
	ViewBuilder.Append("        })\r\n");
	ViewBuilder.Append("        $(document).on('click', '#btn_turn_cancel', function () {\r\n");
	ViewBuilder.Append("            $('#turnModal').modal('hide');\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(\"#btnTurnSubmit\").click(function () {\r\n");
	ViewBuilder.Append("            $(\"#action2\").val(\"turn\");\r\n");
	ViewBuilder.Append("            $(\"#turnForm\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").height(height - $('#page-navbar').outerHeight());\r\n");
	ViewBuilder.Append("            $(\"#container-scroller\").niceScroll({ cursorcolor: \"#ccc\",cursoropacitymin:1,cursorwidth:8 });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("    });\r\n");
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
