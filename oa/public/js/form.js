/*
 * 表单预览及表单数据保存js
 */
formUtils = {
    requiredField: [],
    accessWriteField: []
};
formUtils.init = function() {
    if (typeof window.top.onResize === 'function')
        window.top.onResize();
    if ($('#formSave').length > 0) {
        $('#formSave').live('click', formUtils.formSave);
    }
}
formUtils.initCalendar = function() {
    var format = 'yy-mm-dd';
    var jsonFormat = {
        dateFormat: format
    };
    $('input[data-type="date"]').each(function() {
        $(this).datepicker(jsonFormat);
    });
};
formUtils.formSave = function(callback) {
       var b = true;
        //var hasError = formUtils.validateField();
//        if (hasError['hasError']) {
//            alert('必填字段[' + hasError['fieldName'] + ']不能为空！');
//            if ($.type(callback) === 'function') {
//                callback(-1);
//            }
//            return false;
//      };
        var options = {
        url: '/app/workflow/flowform.aspx', //提交给哪个执行
        type: 'POST',
        success: function (data) {
            $.notify({
					type: 'success',
					message: {
						text: '表单数据保存成功',
						icon: 'icon-info'
					}
			}).show();
			b = true;
			if ($.type(callback) === 'function') {
			  callback(1);
			}
         } //显示操作提示
       };
       $('#frmpost').ajaxSubmit(options);
       var options2 = {
           url: '/app/workflow/flowform.aspx', //提交给哪个执行
           type: 'POST',
           success: function (data) {
           } //显示操作提示
       };
       $('#frmcomment').ajaxSubmit(options2);
    return b;
}
formUtils.validateField = function() {
    var requiredFields = formUtils.requiredField;
    var hasError = false;
    var fieldName = '';
    for (var i in requiredFields) {
        switch (requiredFields[i]) {
            case 'v_text':
            case 'v_int':
            case 'v_float':
            case 'v_date':
            case 'v_email':
            case 'date':
            case 'datetime':
            case 'custom':
            case 'user':
            case 'dept':
            case 'macro':
            case 'tcount':
            case 'select':
                if ($('#data_' + i).val() == '') {
                    $('#data_' + i).focus();
                    fieldName = $('#data_' + i).attr('title');
                    hasError = true;
                }
                break;
            case 'checkbox':
                if ($('#data_' + i).is(':checked') == false) {
                    $('#data_' + i).focus();
                    fieldName = $('#data_' + i).attr('title');
                    hasError = true;
                }
                break;
            case 'label':
                hasError = true;
                $('#data_' + i + ' input').each(function() {
                    if ($(this).is(':checked')) {
                        hasError = false;
                    }
                });
               if(hasError)
                    fieldName = $('#data_' + i).attr('title');
                break;
            case 'textarea':
                if ($('#data_' + i).val() == '') {
                    $('#data_' + i).focus();
                    fieldName = $('#data_' + i).attr('title');
                    hasError = true;
                }
                break;
            case 'listview':
                break;
            case 'countersign':
                if ($('#data_' + i + ' div[is_update="yes"]').find('textarea').val() == '') {
                    $('#data_' + i + ' div[is_update="yes"]').find('textarea').focus();
                    fieldName = $('#data_' + i).attr('title');
                    hasError = true;
                }                
                break;
            case 'signature':
                break;
            case 'fileupload':
                break;
        }
        if (hasError) {
            break;
        }
    }
    return {"hasError": hasError, "fieldName": fieldName};
}
