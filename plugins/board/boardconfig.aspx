<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_Board.Controller.boardconfig" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_Board" %>
<%@ Import namespace="FP_Board.Model" %>
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
	ViewBuilder.Append("<title>OA面板配置</title>\r\n");
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
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/fp-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"/oa/public/css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"/oa/public/js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow: hidden;\">\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("    <form id=\"frmpost\" name=\"frmpost\" action=\"\" method=\"post\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" id=\"action\" name=\"action\" value=\"\">\r\n");
	ViewBuilder.Append("    <input type=\"hidden\" id=\"delid\" name=\"delid\" value=\"\">\r\n");
	ViewBuilder.Append("    <div class=\"content\" style=\"overflow: hidden; outline: none;\">\r\n");
	ViewBuilder.Append("      <div style=\"padding:5px 10px;\">\r\n");
	ViewBuilder.Append("        <div id=\"gridview\" class=\"grid-view\">\r\n");
	ViewBuilder.Append("          <table class=\"items table table-bordered\">\r\n");
	ViewBuilder.Append("            <thead>\r\n");
	ViewBuilder.Append("              <tr>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;width:60px;\">面板排序</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;width:120px\">面板名称</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;width:60px\">所属桌面</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;width:60px\">最大条数</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;\">面板应用</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;\">数据地址</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;\">浏览地址</th>\r\n");
	ViewBuilder.Append("                <th style=\"text-align:center;width:80px;\">操作</th>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	ViewBuilder.Append("            </thead>\r\n");
	ViewBuilder.Append("            <tbody>\r\n");

	loop__id=0;
	foreach(BoardConfig item in boardlist)
	{
	loop__id++;

	if (item.id==id)
	{
	ViewBuilder.Append("              <tr onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#e2f9de'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"e_display\" id=\"e_display\" type=\"text\" style=\"width:40px;text-align:center;\" value=\"" + loop__id.ToString() + "\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"e_name\" id=\"e_name\" type=\"text\" style=\"width:90%;\" value=\"" + echo(item.name) + "\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"e_desktop\" id=\"e_desktop\" type=\"text\" style=\"width:30px;text-align:center;\" value=\"" + echo(item.desktop) + "\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"e_maxcount\" id=\"e_maxcount\" type=\"text\" style=\"width:30px;text-align:center;\" value=\"" + echo(item.maxcount) + "\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"e_app\" id=\"e_app\" type=\"text\" style=\"width:90%;\" value=\"" + echo(item.app) + "\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"e_dataurl\" id=\"e_dataurl\" type=\"text\" style=\"width:90%;\" value=\"" + echo(item.dataurl) + "\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"e_url\" id=\"e_url\" type=\"text\" style=\"width:90%;\" value=\"" + echo(item.url) + "\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><a id=\"btn_edit\" href=\"#\">更新</a>&nbsp;<a id=\"btn_canel\" href=\"" + echo(pagename) + "\">取消</a></td>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	}
	else
	{
	ViewBuilder.Append("              <tr onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#e2f9de'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");

	if (id>0)
	{
	ViewBuilder.Append("                <td style=\"text-align:center;\">" + loop__id.ToString() + "</td>\r\n");
	}
	else
	{
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"display_" + echo(item.id) + "\" id=\"display_" + echo(item.id) + "\" type=\"text\" style=\"width:40px;text-align:center;\" value=\"" + loop__id.ToString() + "\"></td>\r\n");
	}//end if
	ViewBuilder.Append("                <td class=\"ellipsis\" style=\"text-align:center;\">" + echo(item.name) + "</td>\r\n");
	ViewBuilder.Append("                <td class=\"ellipsis\" style=\"text-align:center;\">" + echo(item.desktop) + "</td>\r\n");
	ViewBuilder.Append("                <td class=\"ellipsis\" style=\"text-align:center;\">" + echo(item.maxcount) + "</td>\r\n");
	ViewBuilder.Append("                <td class=\"ellipsis\" style=\"text-align:center;\" title=\"" + echo(item.app) + "\">" + echo(item.app) + "</td>\r\n");
	ViewBuilder.Append("                <td class=\"ellipsis\" style=\"text-align:center;\" title=\"" + echo(item.dataurl) + "\">" + echo(item.dataurl) + "</td>\r\n");
	ViewBuilder.Append("                <td class=\"ellipsis\" style=\"text-align:center;\" title=\"" + echo(item.url) + "\">" + echo(item.url) + "</td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><a href=\"" + echo(pagename) + "?id=" + echo(item.id) + "\">编辑</a>&nbsp;<a id=\"btn_delete\" data=\"" + echo(item.id) + "\" href=\"#\">删除</a></td>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	}//end if
	}//end loop

	if (id==0)
	{
	ViewBuilder.Append("              <tr onmouseover=\"curcolor=this.style.backgroundColor;this.style.backgroundColor='#e2f9de'\" onmouseout=\"this.style.backgroundColor=curcolor\">\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"display\" id=\"display\" type=\"text\" style=\"width:40px;text-align:center;\" value=\"" + echo((boardlist.Count+1)) + "\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"name\" id=\"name\" type=\"text\" style=\"width:90%;\" value=\"\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"desktop\" id=\"desktop\" type=\"text\" style=\"width:30px;text-align:center;\" value=\"1\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"maxcount\" id=\"maxcount\" type=\"text\" style=\"width:30px;text-align:center;\" value=\"10\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"app\" id=\"app\" type=\"text\" style=\"width:90%;\" value=\"\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"dataurl\" id=\"dataurl\" type=\"text\" style=\"width:90%;\" value=\"\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><input name=\"url\" id=\"url\" type=\"text\" style=\"width:90%;\" value=\"\"></td>\r\n");
	ViewBuilder.Append("                <td style=\"text-align:center;\"><a id=\"btn_add\" href=\"#\">添加</a></td>\r\n");
	ViewBuilder.Append("              </tr>\r\n");
	}//end if
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("          </table>\r\n");
	ViewBuilder.Append("          <div class=\"toolbar\">\r\n");
	ViewBuilder.Append("            <div class=\"btn-group\">\r\n");

	if (id==0)
	{
	ViewBuilder.Append("                <a class=\"btn\" id=\"btn_save\" href=\"#\">保存排序</a>\r\n");
	}//end if
	ViewBuilder.Append("                <a class=\"btn\" id=\"btn_cache\" href=\"#\">清空缓存</a>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        $('#btn_save').live('click', function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"display\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btn_add').live('click', function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"add\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btn_edit').live('click', function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"update\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btn_delete').live('click', function () {\r\n");
	ViewBuilder.Append("            var cid = $(this).attr(\"data\");\r\n");
	ViewBuilder.Append("            window.confirm('确定要删除吗?删除后将无法恢复。', function (ret) {\r\n");
	ViewBuilder.Append("                if (ret == false) return;\r\n");
	ViewBuilder.Append("                $(\"#action\").val(\"delete\");\r\n");
	ViewBuilder.Append("                $(\"#delid\").val(cid);\r\n");
	ViewBuilder.Append("                $(\"#frmpost\").submit();\r\n");
	ViewBuilder.Append("            });\r\n");
	ViewBuilder.Append("        });\r\n");
	ViewBuilder.Append("        $('#btn_cache').live('click', function () {\r\n");
	ViewBuilder.Append("            $(\"#action\").val(\"cache\");\r\n");
	ViewBuilder.Append("            $(\"#frmpost\").submit();\r\n");
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
