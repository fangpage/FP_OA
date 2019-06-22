<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FangPage.WMS.Web.Controller.login" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FangPage.WMS.Web" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
	ViewBuilder.Append("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge,chrome=1\">\r\n");
	ViewBuilder.Append("<meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("<title>" + echo(pagetitle) + "</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("<link rel=\"stylesheet\" type=\"text/css\" href=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/css/login.css\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"icon\">\r\n");
	ViewBuilder.Append("<link href=\"" + echo(webpath) + "" + echo(sitepath) + "/logo/favicon.ico\" type=\"image/x-icon\" rel=\"shortcut icon\">\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "jquery/jquery.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"" + echo(plupath) + "JITDSign/JITDSign.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    $(function () {\r\n");
	ViewBuilder.Append("        JITDSign.CONFIG.ServerUrl = '" + echo(plupath) + "JITDSign/signer.aspx';\r\n");
	ViewBuilder.Append("        JITDSign.CONFIG.RandomUrl = '" + echo(plupath) + "JITDSign/randomnum.aspx';\r\n");
	ViewBuilder.Append("        JITDSign.CONFIG.Token = '" + echo(token) + "';\r\n");
	ViewBuilder.Append("        JITDSign.CONFIG.IP = '" + echo(ip) + "';\r\n");
	ViewBuilder.Append("    })\r\n");
	ViewBuilder.Append("    function check() {\r\n");
	ViewBuilder.Append("        var name = $(\"#username\").val();\r\n");
	ViewBuilder.Append("        if ($.trim(name) == \"\") {\r\n");
	ViewBuilder.Append("            alert(\"请输入账号！\");\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        var pwd = $(\"#password\").val();\r\n");
	ViewBuilder.Append("        if ($.trim(pwd) == \"\") {\r\n");
	ViewBuilder.Append("            alert(\"请输入密码！\");\r\n");
	ViewBuilder.Append("            return false;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        return true;\r\n");
	ViewBuilder.Append("    }\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");

	if (isfree>=0)
	{
	ViewBuilder.Append("<script type=\"text/javascript\">\r\n");
	ViewBuilder.Append("    var _hmt = _hmt || [];\r\n");
	ViewBuilder.Append("    (function () {\r\n");
	ViewBuilder.Append("        var hm = document.createElement(\"script\");\r\n");
	ViewBuilder.Append("        hm.src = \"//hm.baidu.com/hm.js?35483845f92e384129fb5d03f9d7c3cf\";\r\n");
	ViewBuilder.Append("        var s = document.getElementsByTagName(\"script\")[0];\r\n");
	ViewBuilder.Append("        s.parentNode.insertBefore(hm, s);\r\n");
	ViewBuilder.Append("    })();\r\n");
	ViewBuilder.Append("</");
	ViewBuilder.Append("script>\r\n");
	}//end if
	ViewBuilder.Append("<style type=\"text/css\">\r\n");
	ViewBuilder.Append(".foot a {\r\n");
	ViewBuilder.Append("    color:#ffffff;\r\n");
	ViewBuilder.Append("    text-decoration:none;\r\n");
	ViewBuilder.Append("}\r\n");
	ViewBuilder.Append("</style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <form name=\"frmlogin\" method=\"post\" action=\"" + echo(pageurl) + "\" id=\"frmlogin\">\r\n");
	ViewBuilder.Append("        <input name=\"usercode\" type=\"hidden\" value=\"\" id=\"usercode\">\r\n");
	ViewBuilder.Append("        <input name=\"logintype\" type=\"hidden\" value=\"\" id=\"logintype\">\r\n");
	ViewBuilder.Append("        <div class=\"login\">\r\n");
	ViewBuilder.Append("            <div class=\"login_main\">\r\n");
	ViewBuilder.Append("                <div class=\"login_denglu\">\r\n");
	ViewBuilder.Append("                    <table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n");
	ViewBuilder.Append("                        <tr>\r\n");
	ViewBuilder.Append("                            <td width=\"80\" height=\"40\" class=\"font_d\">&nbsp;\r\n");
	ViewBuilder.Append("                            </td>\r\n");
	ViewBuilder.Append("                            <td>\r\n");
	ViewBuilder.Append("                                <input name=\"username\" type=\"text\" id=\"username\" style=\"width: 200px\" value=\"\">\r\n");
	ViewBuilder.Append("                            </td>\r\n");
	ViewBuilder.Append("                        </tr>\r\n");
	ViewBuilder.Append("                        <tr>\r\n");
	ViewBuilder.Append("                            <td height=\"40\" class=\"font_d\">&nbsp;\r\n");
	ViewBuilder.Append("                            </td>\r\n");
	ViewBuilder.Append("                            <td>\r\n");
	ViewBuilder.Append("                                <input name=\"password\" type=\"password\" id=\"password\" style=\"width: 200px\" value=\"\">\r\n");
	ViewBuilder.Append("                            </td>\r\n");
	ViewBuilder.Append("                        </tr>\r\n");
	ViewBuilder.Append("                    </table>\r\n");
	ViewBuilder.Append("                    <table width=\"250\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"margin: auto\">\r\n");
	ViewBuilder.Append("                        <tr>\r\n");
	ViewBuilder.Append("                            <td height=\"50\">\r\n");
	ViewBuilder.Append("                                <input type=\"image\" name=\"btnlogin\" id=\"btnlogin\" src=\"" + echo(webpath) + "" + echo(sitepath) + "/statics/images/5_r2_c2.jpg\" onclick=\"return check();\" style=\"height: 30px; width: 80px; border-width: 0px;\">\r\n");
	ViewBuilder.Append("                            </td>\r\n");
	ViewBuilder.Append("                            <td height=\"50\">\r\n");
	ViewBuilder.Append("                                <input type=\"button\" name=\"btnszLogin\" id=\"btnszLogin\" tabindex=\"1\" onclick=\"JITDSign.Signer.AuthRequest()\" style=\"height: 30px; width: 138px; border-width: 0px;background:url(" + echo(webpath) + "" + echo(sitepath) + "/statics/images/5_r2_c4.jpg)\">\r\n");
	ViewBuilder.Append("                            </td>\r\n");
	ViewBuilder.Append("                        </tr>\r\n");
	ViewBuilder.Append("                    </table>\r\n");
	ViewBuilder.Append("                </div>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div class=\"foot\">\r\n");
	ViewBuilder.Append("                <p>\r\n");
	ViewBuilder.Append("                   Copyright © 2016-" + echo(datetime,"yyyy") + "&nbsp;<a target=\"_blank\" href=\"" + echo(siteinfo.homepage) + "\">" + echo(siteinfo.copyright) + "</a>&nbsp;版权所有，版本：V" + echo(version) + "\r\n");
	ViewBuilder.Append("                </p>\r\n");

	if (siteinfo.notes!="")
	{
	ViewBuilder.Append("                <p>\r\n");
	ViewBuilder.Append("                   " + echo(siteinfo.notes) + "\r\n");
	ViewBuilder.Append("                </p>\r\n");
	}//end if

	if (isfree>=1)
	{
	ViewBuilder.Append("                <p>\r\n");
	ViewBuilder.Append("                    技术支持：<a href=\"http://www.fangpage.com\" target=\"_blank\">方配软件(FangPage.COM)</a>\r\n");
	ViewBuilder.Append("                </p>\r\n");
	}//end if
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("    </form>\r\n");
	ViewBuilder.Append("    <div style=\"display:none;\">\r\n");
	ViewBuilder.Append("        <object id=\"JITDSignOcx\" codebase=\"JITDSign.cab\" classid=\"clsid:707C7D52-85A8-4584-8954-573EFCE77488\"></object>\r\n");
	ViewBuilder.Append("    </div>\r\n");
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
