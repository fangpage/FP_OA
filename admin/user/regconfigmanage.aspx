<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Admin.regconfigmanage" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Admin" %>
<%@ Import namespace="FangPage.WMS.Model" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<title>用户注册配置</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/tab.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/admin.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" href=\"" + echo(plupath) + "layer/skin/layer.css\" type=\"text/css\" id=\"skinlayercss\">\r\n");
	ViewBuilder.Append("<script src=\"" + echo(plupath) + "layer/layer.js\" type=\"text/javascript\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/js/admin.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        PageNav(\"用户注册配置,user/" + echo(pagename) + "\");\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("  <form name=\"frmpost\" method=\"post\" action=\"\" id=\"frmpost\">\r\n");
	ViewBuilder.Append("    <input id=\"action\" name=\"action\" value=\"\" type=\"hidden\">\r\n");
	ViewBuilder.Append("    <div class=\"newslistabout\">\r\n");
	ViewBuilder.Append("      <div class=\"ntab4\">\r\n");
	ViewBuilder.Append("        <div class=\"tabtitle\">\r\n");
	ViewBuilder.Append("          <ul>\r\n");
	ViewBuilder.Append("            <li id=\"one1\" onclick=\"setTab('one',1,4)\" class=\"active\"><a href=\"#\">用户注册配置</a> </li>\r\n");
	ViewBuilder.Append("            <li id=\"one2\" onclick=\"setTab('one',2,4)\" class=\"normal\"><a href=\"#\">手机注册配置</a></li>\r\n");
	ViewBuilder.Append("            <li id=\"one3\" onclick=\"setTab('one',3,4)\" class=\"normal\"><a href=\"#\">帐号注册配置</a></li>\r\n");
	ViewBuilder.Append("            <li id=\"one4\" onclick=\"setTab('one',4,4)\" class=\"normal\"><a href=\"#\">邮箱注册配置</a></li>\r\n");
	ViewBuilder.Append("          </ul>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("     <div id=\"con_one_1\" style=\"display:block\">\r\n");
	ViewBuilder.Append("      <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("      <tbody>\r\n");
	ViewBuilder.Append("        <tr>\r\n");
	ViewBuilder.Append("          <td class=\"newstitle\" bgcolor=\"#ffffff\">用户注册配置</td>\r\n");
	ViewBuilder.Append("        </tr>\r\n");
	ViewBuilder.Append("      </tbody>\r\n");
	ViewBuilder.Append("     </table>\r\n");
	ViewBuilder.Append("      <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("        <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 开启用户注册： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"regstatus\" name=\"regstatus\" value=\"1\" "+(regconfig.regstatus==1?"checked":"")+" type=\"checkbox\">是/否开启系统用户注册功能\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 注册必填信息： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"realname\" name=\"realname\" value=\"1\" "+(regconfig.realname==1?"checked":"")+" type=\"checkbox\">真实姓名\r\n");
	ViewBuilder.Append("                <input id=\"email\" name=\"email\" value=\"1\" "+(regconfig.email==1?"checked":"")+" type=\"checkbox\">手机号码\r\n");
	ViewBuilder.Append("                <input id=\"mobile\" name=\"mobile\" value=\"1\" "+(regconfig.mobile==1?"checked":"")+" type=\"checkbox\">电子邮箱\r\n");
	ViewBuilder.Append("                <input id=\"idcard\" name=\"idcard\" value=\"1\" "+(regconfig.idcard==1?"checked":"")+" type=\"checkbox\">身份证号\r\n");
	ViewBuilder.Append("                <input id=\"depart\" name=\"depart\" value=\"1\" "+(regconfig.depart==1?"checked":"")+" type=\"checkbox\">用户部门\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"> 默认注册方式： </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                  <select id=\"regtype\" name=\"regtype\" style=\"width:303px;\">\r\n");
	ViewBuilder.Append("                    <option value=\"mobile\" "+(regconfig.regtype=="mobile"?"selected":"")+">手机注册</option>\r\n");
	ViewBuilder.Append("                    <option value=\"acount\" "+(regconfig.regtype=="acount"?"selected":"")+">帐号注册</option>\r\n");
	ViewBuilder.Append("                    <option value=\"email\" "+(regconfig.regtype=="email"?"selected":"")+">邮箱注册</option>\r\n");
	ViewBuilder.Append("                  </select>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("             </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 注册获得积分： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("              <input id=\"credit\" name=\"credit\" type=\"text\" value=\"" + echo(regconfig.credit) + "\" style=\"height:21px;width:303px;\">&nbsp;用户注册成功后默认获得多少积分\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("             <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 注册获得经验值： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("              <input id=\"exp\" name=\"exp\" type=\"text\" value=\"" + echo(regconfig.exp) + "\" style=\"height:21px;width:303px;\">&nbsp;用户注册成功后默认获得多少经验值\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 注册间隔时间： </td>\r\n");
	ViewBuilder.Append("            <td><input id=\"regctrl\" name=\"regctrl\" type=\"text\" value=\"" + echo(regconfig.regctrl) + "\" style=\"height:21px;width:303px;\">&nbsp;小时，0为不限制</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 注册IP白名单： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <textarea name=\"ipaccess\" rows=\"5\" cols=\"30\" id=\"ipaccess\" style=\"height:80px;width:300px;\">" + echo(regconfig.ipaccess) + "</textarea>&nbsp;多个IP请用英文的\"|\"号隔开，支持IP段通配符\"*\"\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"> 注册IP黑名单： </td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <textarea name=\"ipdenyaccess\" rows=\"5\" cols=\"30\" id=\"ipdenyaccess\" style=\"height:80px;width:300px;\">" + echo(regconfig.ipdenyaccess) + "</textarea>&nbsp;多个IP请用英文的\"|\"号隔开，支持IP段通配符\"*\"\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("            <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("            <td>\r\n");
	ViewBuilder.Append("            <input type=\"submit\" name=\"btnsave\" value=\"保存\" id=\"btnsave1\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("            </td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("        </tr></tbody>\r\n");
	ViewBuilder.Append("      </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("       <div id=\"con_one_2\" style=\"display:none\">\r\n");
	ViewBuilder.Append("          <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("            <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td class=\"newstitle\" bgcolor=\"#ffffff\">手机注册配置</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("           </table>\r\n");
	ViewBuilder.Append("           <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("            <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"> 开启手机注册： </td>\r\n");
	ViewBuilder.Append("                <td><input id=\"regmobile\" name=\"regmobile\" value=\"1\" "+(regconfig.regmobile==1?"checked":"")+" type=\"checkbox\">是/否开启手机注册方式，手机注册需要配置<a href=\"../global/smsconfigmanage.aspx\">【短信服务器】</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"> 注册手机白名单： </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                <textarea name=\"accessmobile\" rows=\"5\" cols=\"30\" id=\"accessmobile\" style=\"height:80px;width:300px;\">" + echo(regconfig.accessmobile) + "</textarea>&nbsp;多个手机号请用英文的\"|\"号隔开，支持通配符\"*\"\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"> 注册手机黑名单： </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                <textarea name=\"censormobile\" rows=\"5\" cols=\"30\" id=\"censormobile\" style=\"height:80px;width:300px;\">" + echo(regconfig.censormobile) + "</textarea>&nbsp;多个手机号请用英文的\"|\"号隔开，支持通配符\"*\"\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                <input type=\"submit\" name=\"btnsave\" value=\"保存\" id=\"btnsave3\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("          </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div id=\"con_one_3\" style=\"display:none\">\r\n");
	ViewBuilder.Append("          <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("          <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td class=\"newstitle\" bgcolor=\"#ffffff\">帐号注册配置</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("          </tbody>\r\n");
	ViewBuilder.Append("         </table>\r\n");
	ViewBuilder.Append("          <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("            <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"> 开启帐号注册： </td>\r\n");
	ViewBuilder.Append("                <td><input id=\"regacount\" name=\"regacount\" value=\"1\" "+(regconfig.regacount==1?"checked":"")+" type=\"checkbox\">是/否开启系统帐号注册方式\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"> 帐号验证方式： </td>\r\n");
	ViewBuilder.Append("                <td><input id=\"regverify0\" name=\"regverify\" "+(regconfig.regverify==0?"checked":"")+" value=\"0\" type=\"radio\">无验证&nbsp;<input id=\"regverify1\" name=\"regverify\" value=\"1\" "+(regconfig.regverify==1?"checked":"")+" type=\"radio\">人工验证\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"> 屏蔽帐号关键字： </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                <textarea name=\"restrict\" rows=\"5\" cols=\"30\" id=\"restrict\" style=\"height:80px;width:300px;\">" + echo(regconfig.restrict) + "</textarea>&nbsp;多个关键字请用英文的\"|\"号隔开\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                <input type=\"submit\" name=\"btnsave\" value=\"保存\" id=\"btnsave2\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("          </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <div id=\"con_one_4\" style=\"display:none\">\r\n");
	ViewBuilder.Append("          <table class=\"borderkuang\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\">\r\n");
	ViewBuilder.Append("            <tbody>\r\n");
	ViewBuilder.Append("            <tr>\r\n");
	ViewBuilder.Append("              <td class=\"newstitle\" bgcolor=\"#ffffff\">邮箱注册配置</td>\r\n");
	ViewBuilder.Append("            </tr>\r\n");
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("           </table>\r\n");
	ViewBuilder.Append("           <table style=\"width:100%;\" cellpadding=\"0\" cellspacing=\"0\" class=\"border\">\r\n");
	ViewBuilder.Append("            <tbody>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"> 开启邮箱注册： </td>\r\n");
	ViewBuilder.Append("                <td><input id=\"regemail\" name=\"regemail\" value=\"1\" "+(regconfig.regemail==1?"checked":"")+" type=\"checkbox\">是/否开启邮箱注册方式，邮箱注册需要配置<a href=\"../global/emailconfigmanage.aspx\">【邮箱服务器】</a>\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"> 注册邮箱白名单： </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                <textarea name=\"accessemail\" rows=\"5\" cols=\"30\" id=\"accessemail\" style=\"height:80px;width:300px;\">" + echo(regconfig.accessemail) + "</textarea>&nbsp;多个邮箱请用英文的\"|\"号隔开，支持通配符\"*\"\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"> 注册邮箱黑名单： </td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                <textarea name=\"censoremail\" rows=\"5\" cols=\"30\" id=\"censoremail\" style=\"height:80px;width:300px;\">" + echo(regconfig.censoremail) + "</textarea>&nbsp;多个邮箱请用英文的\"|\"号隔开，支持通配符\"*\"\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("                <tr>\r\n");
	ViewBuilder.Append("                <td class=\"td_class\"></td>\r\n");
	ViewBuilder.Append("                <td>\r\n");
	ViewBuilder.Append("                <input type=\"submit\" name=\"btnsave\" value=\"保存\" id=\"btnsave4\" class=\"adminsubmit_short\">\r\n");
	ViewBuilder.Append("                </td>\r\n");
	ViewBuilder.Append("                </tr>\r\n");
	ViewBuilder.Append("            </tbody>\r\n");
	ViewBuilder.Append("          </table>\r\n");
	ViewBuilder.Append("      </div>\r\n");
	ViewBuilder.Append("      <br>\r\n");
	ViewBuilder.Append("    </div>\r\n");
	ViewBuilder.Append("</form>\r\n");

	if (ispost)
	{
	ViewBuilder.Append("   <script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("       layer.msg('保存成功!', 2, 1);\r\n");
	ViewBuilder.Append("    </");
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
