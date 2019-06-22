<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_SelectUser.selectorg" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_SelectUser" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<title>选择部门</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-yii.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-notify.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/bootstrap-modal.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "bootstrap/css/icomoon.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(plupath) + "ztree/zTreeStyle.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/selector-win.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/td.treeview.default.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/td-bootstrap.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/base.css\">\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/global.css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
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
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.all-3.5.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "ztree/jquery.ztree.exhide-3.5.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "modernizr/modernizr-2.6.1.min.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"js/util.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"js/selector-org.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "mousewheel/jquery.mousewheel.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "nicescroll/jquery.nicescroll.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body style=\"overflow:hidden;\">\r\n");
	ViewBuilder.Append("<a id=\"scrollTop\"></a>\r\n");
	ViewBuilder.Append("<!--Loading-->\r\n");
	ViewBuilder.Append("<!--导航栏-->\r\n");
	ViewBuilder.Append("<div id=\"container-scroller\">\r\n");
	ViewBuilder.Append("  <div>\r\n");
	ViewBuilder.Append("    <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("        var baseUrl = 'orgajax.aspx';\r\n");
	ViewBuilder.Append("        var to_id = '" + echo(to_id) + "';\r\n");
	ViewBuilder.Append("        var to_name = '" + echo(to_name) + "';\r\n");
	ViewBuilder.Append("        SelectorOrg.props.baseUrl = baseUrl;\r\n");
	ViewBuilder.Append("        SelectorOrg.props.single = 0;\r\n");
	ViewBuilder.Append("        SelectorOrg.props.showOtherOrg = '';\r\n");
	ViewBuilder.Append("        SelectorOrg.props.codeValue = 0;\r\n");
	ViewBuilder.Append("        SelectorOrg.props.parent = window.opener ? window.opener : window.dialogArguments;\r\n");
	ViewBuilder.Append("        SelectorOrg.props.clickMode = '0';\r\n");
	ViewBuilder.Append("        SelectorOrg.init(to_id, to_name);\r\n");
	ViewBuilder.Append("        $(window).resize(function () {\r\n");
	ViewBuilder.Append("            var height = $(window).height();\r\n");
	ViewBuilder.Append("            var footerHeight = $('.selector-footer').outerHeight(true);\r\n");
	ViewBuilder.Append("            var navHeight = $('.selector-nav').outerHeight(true);\r\n");
	ViewBuilder.Append("            $('.selector-org').height(height - footerHeight - 5);\r\n");
	ViewBuilder.Append("            $('.tab-pane > div').height($('.selector-org').height() - navHeight);\r\n");
	ViewBuilder.Append("        }).trigger('resize');\r\n");
	ViewBuilder.Append("    </");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("    <div class=\"row-fluid selector-org\" style=\"margin-top:5px;\">\r\n");
	ViewBuilder.Append("      <ul class=\"nav nav-tabs selector-nav\">\r\n");
	ViewBuilder.Append("        <li class=\"\"><a block=\"selected\" href=\"#tab_selected\" data-toggle=\"tab\">已选</a></li>\r\n");
	ViewBuilder.Append("        <li class=\"active\"><a block=\"org\" href=\"#tab_org\" data-toggle=\"tab\">部门</a></li>\r\n");
	ViewBuilder.Append("      </ul>\r\n");
	ViewBuilder.Append("      <div class=\"tab-content\">\r\n");
	ViewBuilder.Append("        <div class=\"tab-pane row-fluid\" id=\"tab_selected\">\r\n");
	ViewBuilder.Append("          <div class=\"span12\" id=\"vk_org_selected_item\">\r\n");
	ViewBuilder.Append("            <table class=\"items table table-bordered\">\r\n");
	ViewBuilder.Append("              <thead>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <th style=\"text-align:center;\">已选 <i href=\"javascript:;\" name=\"cancelAll\" style=\"cursor:pointer;\" class=\"icon-user-cancel\" title=\"\" rel=\"tooltip\" node-type=\"helpBtn\" data-original-title=\"全部取消\"> </i> </th>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("              </thead>\r\n");
	ViewBuilder.Append("              <tbody>\r\n");
	ViewBuilder.Append("              </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div class=\"tab-pane row-fluid active\" id=\"tab_org\">\r\n");
	ViewBuilder.Append("          <div class=\"span6\" id=\"vk_org_tree\" style=\"overflow-x:hidden;overflow-y: auto;\">\r\n");
	ViewBuilder.Append("            <ul id=\"orgTree\" class=\"ztree \">\r\n");
	ViewBuilder.Append("            </ul>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("          <div class=\"span6 grid-view\" id=\"vk_org_item\" style=\"overflow-x: hidden;overflow-y: auto;padding-top: 0\">\r\n");
	ViewBuilder.Append("            <table class=\"items table table-bordered\">\r\n");
	ViewBuilder.Append("              <thead>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                  <th id=\"selectedDept\" style=\"white-space: nowrap;text-align: center;\">已选部门</th>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("              </thead>\r\n");
	ViewBuilder.Append("              <tbody>\r\n");
	ViewBuilder.Append("              </tbody>\r\n");
	ViewBuilder.Append("            </table>\r\n");
	ViewBuilder.Append("          </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("    <div class=\"selector-footer\">\r\n");
	ViewBuilder.Append("      <div id=\"selected_labels\" style=\"width: 90%;\"><span class=\"pull-left\" id=\"selected-counter\">共选中<em style=\"font-size:20px;color:#f21717\"> 3 </em>个部门</span></div>\r\n");
	ViewBuilder.Append("      <a class=\"btn btn-primary\">确定</a> </div>\r\n");
	ViewBuilder.Append("  </div>\r\n");
	ViewBuilder.Append("</div>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">setTimeout('$(\"#loading_layer\").remove();$(\"body\").show();$(window).trigger(\"resize\");', 100)</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        zTree_orgTree = jQuery.fn.zTree.init($('#orgTree'), { 'view': { 'showLine': false }, 'callback': { 'onClick': SelectorOrg.zTreeOnClick, 'onCheck': SelectorOrg.zTreeOnCheck }, 'check': { 'enable': true, 'chkStyle': 'checkbox', 'chkboxType': { 'Y': 's', 'N': 'ps' } }, 'treeId': 'orgTree', 'data': { 'simpleData': { 'enable': true, 'treeNodeKey': 'id', 'treeNodeParentKey': 'pId' } } }, [" + echo(zNodes) + "]);\r\n");
	ViewBuilder.Append("        SelectorOrg.load();\r\n");
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
