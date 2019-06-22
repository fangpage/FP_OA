<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_WorkFlow.Controller.workadd" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_WorkFlow" %>
<%@ Import namespace="FP_WorkFlow.Model" %>
<%@ Import namespace="FP_Flow.Model" %>
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
	ViewBuilder.Append("<title>新建车辆申请</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.min.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-file-selector.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "multifile/jquery.multifile.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
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
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    TUtil.openUrl('workflow.aspx?id=" + echo(workinfo.id) + "');\r\n");
	ViewBuilder.Append("    window.parent.location.href = \"workinbox.aspx\";\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("<form id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("<input type=\"hidden\" name=\"attachid\" id=\"attachid\" value=\"" + echo(workinfo.attachid) + "\">\r\n");
	ViewBuilder.Append("<div id=\"page-navbar\">\r\n");
	ViewBuilder.Append("  <div class=\"td-nav\">\r\n");
	ViewBuilder.Append("    <table class=\"td-nav-table\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td><span class=\"td-nav-title\">" + echo(flowinfo.name) + "</span></td>\r\n");
	ViewBuilder.Append("          <td>\r\n");
	ViewBuilder.Append("              <div class=\"pull-right\">\r\n");
	ViewBuilder.Append("              <button type=\"submit\" class=\"btn btn-danger\" id=\"btn_new\" name=\"btn_new\">新建申请</button>\r\n");

	if (tid!="")
	{
	ViewBuilder.Append("              <a onclick=\"window.close();\" style=\"margin-right:3px;\" class=\"btn\" id=\"btn_close\">关闭</a>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <a href=\"workdraft.aspx\" style=\"margin-left:6px;\" class=\"btn btn-primary\">返回</a>\r\n");
	}//end if
	ViewBuilder.Append("              </div>\r\n");
	ViewBuilder.Append("          </td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("    </table>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("      <fieldset>\r\n");
	ViewBuilder.Append("        <legend style=\"font-size:14px;font-weight:bold;\">车辆申请标题</legend>\r\n");
	ViewBuilder.Append("      </fieldset>\r\n");
	ViewBuilder.Append("      <div class=\"control-group \">\r\n");
	ViewBuilder.Append("        <div class=\"controls\">\r\n");
	ViewBuilder.Append("          <input name=\"title\" id=\"title\" type=\"text\" maxlength=\"255\" value=\"" + echo(workinfo.title) + "\" style=\"width:600px;\">\r\n");
	ViewBuilder.Append("          <span class=\"help-inline error\" id=\"title_em\" style=\"display: none\"></span>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <fieldset>\r\n");
	ViewBuilder.Append("        <legend style=\"font-size:14px;font-weight:bold;\">流程说明及步骤列表，<a href=\"" + echo(apppath) + "flow/flowpreview.aspx?id=" + echo(flowid) + "\" class=\"subject\">【查看流程图】</a>\r\n");
	ViewBuilder.Append("              <a class=\"pull-right\" id=\"expandBtn\" style=\"cursor: pointer\">展开<i class=\"icon-arrow-down\"></i></a>\r\n");
	ViewBuilder.Append("        </legend>\r\n");
	ViewBuilder.Append("      </fieldset>\r\n");
	ViewBuilder.Append("      <div class=\"control-group \" id=\"flow\" hidden=\"hidden\">\r\n");
	ViewBuilder.Append("        <table class=\"items table table-bordered\" style=\"font-size:13px;\">\r\n");
	ViewBuilder.Append("          <thead>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <th style=\"width: 100px;text-align:center\">步骤序号</th>\r\n");
	ViewBuilder.Append("              <th style=\"text-align:center\">名称</th>\r\n");
	ViewBuilder.Append("              <th style=\"width: 300px;\">流程可选方向</th>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </thead>\r\n");
	ViewBuilder.Append("          <tbody>\r\n");

	loop__id=0;
	foreach(FlowStepInfo item in flowsteplist)
	{
	loop__id++;
	ViewBuilder.Append("            <tr class=\"odd\">\r\n");
	ViewBuilder.Append("              <td style=\"text-align:center\">" + echo(item.step) + "</td>\r\n");
	ViewBuilder.Append("              <td style=\"text-align:center\">" + echo(item.name) + "</td>\r\n");
	ViewBuilder.Append("              <td>" + echo(GetNextStep(item.nextstep)) + "</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	}//end loop
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("        </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("</form>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $(document).on(\"click\", \".subject\", function (e) {\r\n");
	ViewBuilder.Append("            TUtil.openUrl(this.href, \"\", \"\", 800, 600);\r\n");
	ViewBuilder.Append("            e.preventDefault();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#expandBtn').click(function () {\r\n");
	ViewBuilder.Append("            if ($(this).find('i').hasClass('icon-arrow-up')) {\r\n");
	ViewBuilder.Append("                $(this).html('展开<i class=\"icon-arrow-down\"></i>');\r\n");
	ViewBuilder.Append("                $('#flow').hide();\r\n");
	ViewBuilder.Append("            } else {\r\n");
	ViewBuilder.Append("                $(this).html('收起<i class=\"icon-arrow-up\"></i>');\r\n");
	ViewBuilder.Append("                $('#flow').show();\r\n");
	ViewBuilder.Append("            }\r\n");
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
