


(function($) {

    var WFRollback = {
        settings: {
            'rollBackUrl': null
        },
        init: function(options) {
            this.settings = $.extend(this.settings, options || {});
        },
        iframe: function(status) {
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
        updateRemind: function() {
            var title = $('.td-nav .td-nav-title').text();
            $('#TRemind_rollback_content').val('您有回退工作,标题:' + title);
        },
        removeBackdrop: function() {
            this.$backdrop && this.$backdrop.remove();
            this.$backdrop = null;
            this.$backdrop_loading && this.$backdrop_loading.remove();
            this.$backdrop_loading = null;
        },
        backdrop: function() {
            this.$backdrop = $('<div class="modal-backdrop fade"></div>').appendTo(document.body);
            this.$backdrop.addClass('in');
            this.$backdrop_loading = $('<img style="position:absolute; top:40%; left:50%; z-index:1060;" src="/themes/classic/public/images/common/loading.gif" />').appendTo(document.body);
        },
        beforeRollBack: function(callback) {
            var self = WFRollback;
            self.backdrop();
            var objs = new Array();
            if (formIds.length > 0) {
                $.each(formIds, function(i, id) {
                    window.frames['form-' + id] && window.frames['form-' + id].Operation.save();
                    objs.push({id: id, status: 0});
                });
            }

            var time = 0;
            var func = setInterval(function() {
                var n = 0,
                        len = objs.length,
                        ret = 0;
                for (i in objs) {
                    objs[i].status = window.frames['form-' + objs[i].id].Operation.getStatus();
                    if (objs[i].status !== 0) {
                        n++;
                    }
                }
                if (n === len) {
                    self.removeBackdrop();
                    for (i in objs) {
                        if (objs[i].status === -1) {
                            ret = -1;
                            break;
                        }
                    }
                    if (ret === -1) {
                        _originalAlert('数据保存错误！');
                    } else {
                        if ($.type(callback) === 'function') {
                            callback();
                        }
                    }
                    func = clearInterval(func);
                }
                if (time === 30) {
                    self.removeBackdrop();
                    _originalAlert('保存超时！');
                    func = clearInterval(func);
                }
                time++;
            }, 1000);
        },
        rollback: function() {
            if (WFRollback.check()) {
                $('#rollBackForm').submit();
            }
            return false;
        },
        check: function() {
            if ($('#msg').length > 0) {
                $('#msg').remove();
            }
            if (!$('#rollback_task_id').val()) {
                $('div[class="work-prcs-title"]').append('<span id="msg" style="float:right;margin-right:34px;"><font color="red">请选择回退步骤！</font></span>');
                return false;
            }
            var descrip = $("#feedback").val();
            var trimRegex = /(?:^[ \t\n\r]+)|(?:[ \t\n\r]+$)/g;
            if (!$('#feedback').val()||( descrip.replace(trimRegex, '') =='')){
                $('div[class="work-prcs-title"]').append('<span id="msg" style="float:right;margin-right:34px;"><font color="red">请填写回退意见！</font></span>');
                $('#feedback').focus();
                return false;
            }
            return true;
        },
        handler: function() {
            WFRollback.iframe('hide');
            WFRollback.load();
            $('#rollBackModal').modal({'width': '600', 'height': '450', 'show': true});
        },
        load: function() {
            $('.td-nav-list > li').first().find('a').trigger('click');
        }
    };
    $(document).on('click', '#btn_rollback_cancel', function() {
        WFRollback.iframe('show');
        $('#rollBackModal').modal('hide');
    });
    $(document).on('hidden', '#rollBackModal', function() {
        WFRollback.iframe('show');
    });
    $(document).on('click', '#rollback', function() {
        if ($('#msg').length > 0) {
            $('#msg').remove();
        }
        $('#feedback').val('');
            WFRollback.updateRemind();
            WFRollback.handler();
//        WFRollback.beforeRollBack(function() {
//        });
        });
    $(document).on('click', '#btnRollBackSubmit', function() {
        WFRollback.rollback();
    });
    $(document).on('click', 'div[class="procinfo"]', function() {
        var radioObj = $(this).find('input[name="rollbackproc"]');
        var taskUserIds = '';
        $(this).find('span[class="main"]').each(function(){
            taskUserIds += $(this).attr('node-data-id') + ',';
        });
        radioObj.attr('checked', true);
        $('#rollback_task_id').val(radioObj.val());
        $('#rollback_user_id').val(taskUserIds);
        $('#rollBackForm  > div').removeClass('active');
        $(this).addClass('active');
    });
    $.fn.turnModal = function(option) {
        if (typeof option === 'object') {
            return WFRollback.init(option);
        }
    };
})(jQuery);

