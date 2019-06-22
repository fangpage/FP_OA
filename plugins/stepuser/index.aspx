<%@ Page language="c#" AutoEventWireup="false" EnableViewState="false" Inherits="FP_StepUser.index" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="FangPage.Common" %>
<%@ Import namespace="FangPage.MVC" %>
<%@ Import namespace="FP_StepUser" %>
<script runat="server">
protected override void View()
{
	base.View();
	ViewBuilder.Append("<!DOCTYPE html>\r\n");
	ViewBuilder.Append("<html>\r\n");
	ViewBuilder.Append("<head>\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
	ViewBuilder.Append("    <title>选择经办人和主办人</title>\r\n");
	ViewBuilder.Append("	" + echo(meta) + "\r\n");
	ViewBuilder.Append("    <meta name=\"renderer\" content=\"webkit\">\r\n");
	ViewBuilder.Append("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=10,chrome=1\">\r\n");
	ViewBuilder.Append("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0\">\r\n");
	ViewBuilder.Append("    <link href=\"css/style.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
	ViewBuilder.Append("    <!--[if lte IE 8]>\r\n");
	ViewBuilder.Append("<script type=\"text/javascript\" src=\"js/ccorrect_btn.js\"></");
	ViewBuilder.Append("script>\r\n");
	ViewBuilder.Append("<![endif]-->\r\n");
	ViewBuilder.Append("    <style type=\"text/css\">\r\n");
	ViewBuilder.Append("        html, body {\r\n");
	ViewBuilder.Append("            overflow: hidden;\r\n");
	ViewBuilder.Append("            height: 100%;\r\n");
	ViewBuilder.Append("            background: #f6f7f9;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        #west {\r\n");
	ViewBuilder.Append("            width: 200px;\r\n");
	ViewBuilder.Append("            position: absolute;\r\n");
	ViewBuilder.Append("            top: 0;\r\n");
	ViewBuilder.Append("            left: 0;\r\n");
	ViewBuilder.Append("            bottom: 0;\r\n");
	ViewBuilder.Append("            overflow: hidden;\r\n");
	ViewBuilder.Append("            overflow-y: auto;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("            #west iframe {\r\n");
	ViewBuilder.Append("                width: 100%;\r\n");
	ViewBuilder.Append("                height: 100%;\r\n");
	ViewBuilder.Append("                display: block;\r\n");
	ViewBuilder.Append("                position: absolute;\r\n");
	ViewBuilder.Append("                top: 0;\r\n");
	ViewBuilder.Append("                bottom: 0;\r\n");
	ViewBuilder.Append("                left: 0;\r\n");
	ViewBuilder.Append("                right: 0;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        #center {\r\n");
	ViewBuilder.Append("            position: absolute;\r\n");
	ViewBuilder.Append("            top: 0px;\r\n");
	ViewBuilder.Append("            bottom: 30px;\r\n");
	ViewBuilder.Append("            left: 200px;\r\n");
	ViewBuilder.Append("            right: 0;\r\n");
	ViewBuilder.Append("            overflow: hidden;\r\n");
	ViewBuilder.Append("            margin-left: 10px;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("            #center iframe {\r\n");
	ViewBuilder.Append("                width: 100%;\r\n");
	ViewBuilder.Append("                height: 100%;\r\n");
	ViewBuilder.Append("                display: block;\r\n");
	ViewBuilder.Append("                position: absolute;\r\n");
	ViewBuilder.Append("                top: 0;\r\n");
	ViewBuilder.Append("                bottom: 30px;\r\n");
	ViewBuilder.Append("                left: 0;\r\n");
	ViewBuilder.Append("                right: 0;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        #footer {\r\n");
	ViewBuilder.Append("            position: absolute;\r\n");
	ViewBuilder.Append("            height: 40px;\r\n");
	ViewBuilder.Append("            bottom: 0;\r\n");
	ViewBuilder.Append("            left: 0px;\r\n");
	ViewBuilder.Append("            right: 0;\r\n");
	ViewBuilder.Append("            overflow: hidden;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("            #footer iframe {\r\n");
	ViewBuilder.Append("                width: 100%;\r\n");
	ViewBuilder.Append("                height: 100%;\r\n");
	ViewBuilder.Append("                display: block;\r\n");
	ViewBuilder.Append("                position: absolute;\r\n");
	ViewBuilder.Append("                bottom: 0;\r\n");
	ViewBuilder.Append("                left: 0;\r\n");
	ViewBuilder.Append("                right: 0;\r\n");
	ViewBuilder.Append("            }\r\n");
	ViewBuilder.Append("        * html {\r\n");
	ViewBuilder.Append("            padding-right: 200px;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        * html #west {\r\n");
	ViewBuilder.Append("            height: 100%;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("        * html #center {\r\n");
	ViewBuilder.Append("            position: relative;\r\n");
	ViewBuilder.Append("        }\r\n");
	ViewBuilder.Append("    </style>\r\n");
	ViewBuilder.Append("</head>\r\n");
	ViewBuilder.Append("<body>\r\n");
	ViewBuilder.Append("    <div>\r\n");
	ViewBuilder.Append("        <div>\r\n");
	ViewBuilder.Append("            <div id=\"west\">\r\n");
	ViewBuilder.Append("                <iframe id=\"dept\" name=\"dept\" frameborder=\"0\" src=\"dept.aspx?stepid=" + echo(stepid) + "&workid=" + echo(workid) + "\"></iframe>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("            <div id=\"center\">\r\n");
	ViewBuilder.Append("                <iframe id=\"user\" name=\"user\" frameborder=\"0\" src=\"selectuser.aspx?stepid=" + echo(stepid) + "&workid=" + echo(workid) + "\"></iframe>\r\n");
	ViewBuilder.Append("            </div>\r\n");
	ViewBuilder.Append("        </div>\r\n");
	ViewBuilder.Append("        <div id=\"footer\">\r\n");
	ViewBuilder.Append("            <iframe id=\"control\" name=\"control\" scrolling=\"no\" frameborder=\"0\" src=\"control.aspx\"></iframe>\r\n");
	ViewBuilder.Append("        </div>\r\n");
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
