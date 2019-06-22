KindEditor.plugin('sign', function (K) {
    var editor = this, name = 'sign';
    // 点击图标时执行
    editor.clickToolbar(name, function () {
        var txtUser = document.getElementById("txtUser").value;
        var txtDate = document.getElementById("txtDate").value;
        editor.appendHtml('<p style="width:auto; clear:both;"><div style="width:160px; float:right; line-height:24px;">' + txtUser + '<br/>' + txtDate + '</div></p>');
    });
});