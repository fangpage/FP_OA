var JITDSign = {};

JITDSign.CONFIG = {
    ServerUrl: '/plugins/JITDSign/signer.aspx', //验证服务器地址
    RandomUrl: '/plugins/JITDSign/randomnum.aspx',//认证码生成地址
    Token: '',  //密令
    IP:''       //客户端IP
};

JITDSign.Signer = {
    /*
        当给出的证书主体字段的名称，
        如果证书主体的值是null,调用JITDSignOcx的证书选择
        如果调用出错返回null
    */
    doValidateCer: function () {
        JITDSignOcx.SetCertChooseType(1);
        JITDSignOcx.SetCert("SC", "", "", "", "", "");
        if (JITDSignOcx.GetErrorCode() != 0) {
            alert("错误码：" + JITDSignOcx.GetErrorCode() + "　错误信息：" + JITDSignOcx.GetErrorMessage(JITDSignOcx.GetErrorCode()));
            return 1;
        }
        return 0;
    },
    AuthRequest: function () {
        /*生成请求认证原文*/
        $.ajax({
            type: 'POST',
            url: JITDSign.CONFIG.RandomUrl,
            data: 'token=' + JITDSign.CONFIG.Token,
            success: function (strRandomNum) {
                if (strRandomNum == "") {
                    alert("原文为空，请求失败。");
                    return;
                }
                /*
                生成认证报文
                */
                if (JITDSign.Signer.doValidateCer() == 0) {
                    var temp_DSign_Result = JITDSignOcx.AttachSignStr("", strRandomNum);
                    $.ajax({
                        type: 'POST',
                        url: JITDSign.CONFIG.ServerUrl + '?token=' + JITDSign.CONFIG.Token + '&signed_original=' + strRandomNum + '&client_ip=' + JITDSign.CONFIG.IP,
                        data: { strSignedData: temp_DSign_Result },
                        success: function (strAuthResult) {
                            var res = JITDSign.Signer.getStrID(strAuthResult);
                            if (res != "") {
                                $("#usercode").val(res);
                                $("#logintype").val('1');
                                $("#frmlogin").submit();
                            } else {
                                alert("用户不存在！");
                                return;
                            }
                        }
                    });
                }
            }
        });
    },
    getStrID: function (res) {
        var str1, str2;
        var i, j;
        i = res.indexOf(",");
        str2 = res.substring(0, i);
        j = str2.indexOf(" ");
        str1 = str2.substring(j);
        return str1;
    }
}