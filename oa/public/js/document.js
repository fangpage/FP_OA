
var docM = {
    iframe : function(status){
        var tabId = $('#tab-content > ul > li[class="active"]').attr('node-data');
        if(tabId === "tab_form"){
            $.each(formIds,function(i,id){
                if($('#form-'+id).contents().find("object").length >0){
                    if(status === 'show') {
                        $('#form-'+id).contents().find("object").show();
                    } else {
                        $('#form-'+id).contents().find("object").hide();
                    }
                }
            });
           if($("#tab_aip_frame").length>0){
                if(status === 'show') {
                    $('#tab_aip_frame').contents().find("object").show();
                } else {
                    $('#tab_aip_frame').contents().find("object").hide();
                }
            }
           if($("#tab_doc_frame").length>0){
                if(status === 'show') {
                    $('#tab_doc_frame').contents().find("object").show();
                } else {
                    $('#tab_doc_frame').contents().find("object").hide();
                }
            }                
        } else {
            if($("#"+tabId+"_frame").contents().find("object").length > 0){
                if(status === "show") {
                    $("#"+tabId+"_frame").contents().find("object").show();
                } else {
                    $("#"+tabId+"_frame").contents().find("object").hide();
                }
            }
        }
    },
    switchTab : function(url){
        $('a[href="#'+url+'"]').trigger('click');
        if(url === 'tab_form') {
            $('#tab_aip_frame').attr("src", aipUrl);
        }
    },
    backdrop : function(){
        this.$backdrop = $('<div class="modal-backdrop fade"></div>').appendTo(document.body);
        this.$backdrop.addClass('in');
        this.$backdrop_loading = $('<img style="position:absolute; top:40%; left:50%; z-index:1060;" src="/themes/classic/public/images/common/loading.gif" />').appendTo(document.body);
    },
    removeBackdrop: function () {
        this.$backdrop && this.$backdrop.remove();
        this.$backdrop = null;
        this.$backdrop_loading && this.$backdrop_loading.remove();
        this.$backdrop_loading = null;
    }
};

var sendRead = {
    url : '',
    init : function(options){
        if(typeof options === 'object'){
            this.url = options.url;
        }
        this.bind();
        $(document).on('hidden', '#modal_sendread', function(){
            docM.iframe('show');
        });
    },
    check : function(){
        if($('#sendread_selector').val() == ""){
            $('#sendread_selector_em_').text('接收人 不可为空白.').parents('div.control-group').addClass('error');
            return false;
        }
        return true;
    },
    send : function(){
        var self = this;
        if (self.check()) {
            $.ajax({
                url: self.url + '/ajax/readform',
                type: 'post',
                data: $('#send_read_form').serialize(),
                success: function(message) {
                    $.notify({
                        'type' : 'success',
                        'message' : {
                            'icon' : 'icon-info',
                            'text' : message
                        }
                    }).show();
                    self.afterRun();
                }
            });
        }
    },
    beforeRun : function(){
        $('#sendread_selector_em_').text('').parents('div.control-group').removeClass('error');
        $('#sendread_selector').val('');
        $('#sendread_selector_name').val('');
        docM.iframe('hide');
    },
    afterRun : function(){
        docM.iframe('show');
        $('#modal_sendread').modal('hide');
    },
    close : function(){
        docM.iframe('show');
        $('#modal_sendread').modal('hide');
    },
    bind : function(){
        var self = this;
        $('#btn_sendread_submit').click(function(){
            self.send();
        });
        
        $('#btn_sendread').click(function(){
            self.beforeRun();
            $("#modal_sendread").modal("show");
        });
    }
};

$(document).ready(function($){
    
    sendRead.init({'url' : sendReadUrl});
    
    $(document).on('click','#turnModal a.close',function(){
        docM.iframe('show');
    });

    $(document).on('click', '#btn_turn_supervision', function(){
        TUtil.openUrl(this.href);
        return false;
    });

    $(document).on('click', '#btn_end', function(){
        docM.iframe('hide');
        if($('#modal_end').length > 0) {
            $('#modal_end').modal('show');
        }
    });
    
    $(document).on('click', '#btn_archive', function(){
        var url = $('#archive-form').attr('action');
        $.get(url, function(data){
            if(data == 'ok'){
                docM.iframe('hide');
                $('#modal_archive_alert') && $('#modal_archive_alert').remove();
                $('#modal_archive').modal('show');
            } else {
                window._originalAlert('存在未办理完毕的流程，不能归档！');
            }
        });
    });
    
    $(document).on('click', '#btn_archive_save', function(){
        var url = $('#archive-form').attr('action');
        var data = $('#archive-form').serialize();
        $('#modal_archive_alert') && $('#modal_archive_alert').remove();
        docM.backdrop();
        $.post(url, data, function(res){
            docM.removeBackdrop();
            if($.type(res) == 'object'){
                if(res.error == ''){
                    $('#modal_archive').modal('hide');
                    docM.iframe('show');
                    $.notify({
                        'type' : 'success',
                        'message' : {
                            'icon' : 'icon-info',
                            'text' : '归档成功！'
                        }
                    }).show();
                } else {
                    $('<div class="alert alert-error" id="modal_archive_alert" ></div>').prependTo('#modal_archive .modal-body');
                    $('#modal_archive_alert').text(res.error);
                }
            }
        },'json');
    });
    
    $(document).on('click', '#btn_turn_doc', function(){
        docM.iframe('hide');
        $('#turn_doc_modal').modal('show');
    });
    
    $(document).on('click', '#turn_doc_submit', function(e){
        $('#turn_doc_form').submit();
        $('#turn_doc_modal').modal('hide');
        docM.iframe('show');
    });
    
    $(document).on('click', '#btn_sendsep', function(){
        
        $.get(sendSepUrl, function(data){
            window._originalAlert(data);
        });
    });

});

