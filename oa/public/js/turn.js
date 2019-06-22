(function($) {
    var WFTurn = {
        settings: {
            'handlerUrl': null,
            'wfUrl': null,
            'turnUrl': null,
            'endTaskUrl': null,
            remindUrl: null,
            checkConditionUrl: null, //转交条件判断
            'wf': null,
            'proc': null,
            'hideinvalidproc': null,
            'task': null,
            'wft': null,
            'list': 'turn_user_list',
            'defaultUser': {},
            'required': null,
            'multi': null,
            'docFrameName': 'tab_doc_frame'
        },
        tasks: [],
        errors: [],
        selectedNodes: [],
        docsavemode : null,
        init: function(options) {
            this.settings = $.extend(this.settings, options || {});
        },
        iframe: function(status) {
            var tabId = $('#tab-content > ul > li[class="active"]').attr('node-data');
            if (tabId == "tab_form") {
                $.each(formIds, function(i, id) {
                    if ($('#form-' + id).contents().find("object").length > 0) {
                        if (status == 'show')
                            $('#form-' + id).contents().find("object").show();
                        else
                            $('#form-' + id).contents().find("object").hide();
                    }
                });
                if ($("#tab_aip_frame").length > 0) {
                    if (status == 'show')
                        $('#tab_aip_frame').contents().find("object").show();
                    else
                        $('#tab_aip_frame').contents().find("object").hide();
                }
                if ($("#tab_doc_frame").length > 0) {
                    if (status == 'show')
                        $('#tab_doc_frame').contents().find("object").show();
                    else
                        $('#tab_doc_frame').contents().find("object").hide();
                }
            } else {
                if ($("#" + tabId + "_frame").contents().find("object").length > 0) {
                    if (status == "show")
                        $("#" + tabId + "_frame").contents().find("object").show();
                    else
                        $("#" + tabId + "_frame").contents().find("object").hide();
                }
            }
        },
        updateRemind: function() {
            //if (this.settings.remindUrl) {
            //    $.get(this.settings.remindUrl, function(data) {
            //        if ($.type(data) === 'object' && !$.isEmptyObject(data)) {
            //            $('#TRemind_content_turn').val(data.title);
            //        }
            //    }, 'json');
            //} else {
            //    var title = $('.td-nav .td-nav-title').text();
            //    $('#TRemind_content_turn').val('您有待办的审批工作,标题:' + title);
            //}
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
        beforeTurn: function(callback) {
            var self = WFTurn;
            self.backdrop();

            var objs = new Array();

            if (window.frames['tab_form_frame'] && window.frames['tab_form_frame'].Operation !== undefined) {
                window.frames['tab_form_frame'].Operation.save();
            }
        },
        check: function() {

            this.errors = [];
            this.tasks = [];
            var taskId = [];
            var taskName = [];
            var taskType = [];
            var idString = "";
            var nameString = "";
            var idArray = new Array();
            var nameArray = new Array();
            $('#taskList li a i[class="icon-checkbox-checked-2"]').each(function() {
                var $task = $(this).parent();
                taskId.push($task.attr('node-data'));
                taskType.push($task.attr('node-type'));
                taskName.push($task.text());
            });

            if (taskId.length < 1) {
                this.errors.push('请选择流程步骤!');
                return false;
            }

            for (var i = 0; i < taskId.length; i++) {
                if (taskType[i] === 'end') {
                    $('#task_id').val(taskId[i]);
                    $('#task_type').val(taskType[i]);
                    return true;
                }
                var selectUserMode = $("#taskList").find("[node-data=" + taskId[i] + "]").attr("select_user_mode");
                if ((selectUserMode == "select")) {
                    idString = $("#turn_user_" + taskId[i]).val();
                    nameString = $("#turn_user_" + taskId[i] + "_name").val();
                    if (idString != "") {
                        idArray = idString.split(",");
                        nameArray = nameString.split(",");
                        for (var j = 0; j < idArray.length; j++) {
                            if (this.hasNode(taskId[i], {id: idArray[j]}) !== false)
                                this.addNode(taskId[i], {id: idArray[j], name: nameArray[j]});
                        }
                    }
                    var tmp = $('#turn_user_' + taskId[i]).val();
                    if (tmp.substr(-1) == ',')
                        tmp = substr(0, tmp.length - 1);
                    if (tmp == '') {
                        this.errors.push('请选择步骤[' + taskName[i] + ']办理人!');
                        return false;
                    }
                } else {
                    if (!this.selectedNodes[taskId[i]] || this.selectedNodes[taskId[i]].length == 0) {
                        this.errors.push('请选择步骤[' + taskName[i] + ']办理人!');
                        return false;
                    }
                }
                this.tasks.push({
                    'id': taskId[i],
                    'type': taskType[i],
                    'name': taskName[i],
                    'user': {'id': (selectUserMode == "select" ? idString : WFTurn.getIds(taskId[i]).join(',')), 'name': (selectUserMode == "select" ? nameString : WFTurn.getNames(taskId[i]).join(','))}
                });

                $('#list_turn_user_' + taskId[i]).val(selectUserMode == "select" ? idString : WFTurn.getIds(taskId[i]).join(','));
            }

            $('#task_id').val(taskId.join(','));
            $('#task_type').val(taskType.join(','));
            return true;
        },
        end: function() {
            WFTurn.iframe('hide');
            window.confirm('<h5>是否确认转交? </h5>', function(ret) {
                if (ret === true) {
                    $('#turnForm').attr('action', WFTurn.settings.endTaskUrl);
                    $('#turnForm').submit();
                } else {
                    WFTurn.iframe('show');
                }
            });
        },
        fastTurn: function() {
            WFTurn.initNodes(WFTurn.settings.wft, $('#list_turn_user_' + WFTurn.settings.wft).val(), $('#list_turn_user_' + WFTurn.settings.wft).attr('node-data-name'));
            if (this.check()) {
                var task = this.tasks.pop();
                var msg = '<h5>是否确认转交? </h5><span style="display: inline-block;padding-right: 20px;">办理步骤：</span><span class="label label-info">' +
                        task.name + '</span><br>';
                if (task.user.name) {
                    msg += '<span style="display: inline-block;padding-right: 20px;padding-left:14px;">办理人：</span><span class="label label-success">' +
                            task.user.name + '</span>';
                }
                WFTurn.iframe('hide');
                window.confirm(msg, function(ret) {
                    if (ret === true) {
                        $('#turnForm').submit();
                    } else {
                        $('#turnModal').modal('show');
                    }
                });
            } else {
                alert(this.errors.toString());
            }
        },
        turn: function() {

            $('#list_turn_user_' + WFTurn.settings.wft).val(this.getIds(this.settings.wft)).attr('node-data-name', this.getNames(this.settings.wft));
            if (this.check()) {
                $('#btnTurnSubmit').attr('disabled', true);
                $('#turnForm').submit();
            } else {
                alert(this.errors.toString());
            }
        },
        get: function() {
            var self = this;
            var node;
            var users = [];
            var active = false;

            if (WFTurn.settings.defaultUser[self.settings.wft] !== undefined) {
                if ($.isArray(WFTurn.settings.defaultUser[self.settings.wft])) {
                    $.merge(users, WFTurn.settings.defaultUser[self.settings.wft]);
                } else {
                    users.push(WFTurn.settings.defaultUser[self.settings.wft]);
                }
            }
            var postdata = {wf: self.settings.wf, wft: self.settings.wft, wfu: users, wfnode: self.settings.task};
            var selectedNodes = WFTurn.getSelectedNodes(self.settings.wft);
            WFTurn.initNodes(self.settings.wft);
            if (!$.isEmptyObject(selectedNodes)) {//修正查询节点状态
                for (i in selectedNodes) {
                    WFTurn.addNode(self.settings.wft, {id: selectedNodes[i].id, name: selectedNodes[i].name});
                }
            }
            var selectUserMode = $("#taskList").find("[node-data=" + self.settings.wft + "]").attr("select_user_mode");
            var selectTurnMode = $("#taskList").find("[node-data=" + self.settings.wft + "]").attr("mode");
            $("#turn_search_form_input_" + self.settings.wft).autocomplete(self.settings.handlerUrl, {
                highlight: false,
                extraParams: postdata,
                formatItem: function(data, i, n, value) {
                    var data = eval("(" + data + ")");
                    $('#' + self.settings.list).empty();
                    if (!$.isEmptyObject(data)) {
                        for (n in data) {
                            if ((((selectTurnMode!="single")  || (selectTurnMode=="single" && (WFTurn.selectedNodes[self.settings.wft].length==0))) && $.inArray(data[n].id, users) !== -1)
                                    || self.hasNode(self.settings.wft, {id: data[n].id}) !== false
                                    || (n === '0' && data.length === 1)) {
                                active = true;
                                var taskUserId = $("#turn_user_" + self.settings.wft);
                                var taskUserName = $("#turn_user_" + self.settings.wft + "_name");
                                var listTaskUser = $("#list_turn_user_" + self.settings.wft);
                                if (selectUserMode == "select" && (taskUserId.val() == "")) {
                                    taskUserId.val(listTaskUser.val());
                                    taskUserName.val(listTaskUser.attr("node-data-name"));
                                } else {
                                    if(selectTurnMode=="single"){
                                        WFTurn.selectedNodes[self.settings.wft] = [];
                                    }
                                    WFTurn.addNode(self.settings.wft, {id: data[n].id, name: data[n].name});
                                }
                            } else {
                                active = false;
                            }
                            node = '<li node-data="' + data[n].id + '" node-data-name="' + data[n].name + '" class="' + (active ? 'active' : '') + '"><a>' +
                                    '<div class="item">' +
                                    '<div class="select"><input type="checkbox" ' + (active ? 'checked' : '') + '/></div>' +
                                    '<div class="img"><img src="' + data[n].img + '"></div>' +
                                    '<div class="info">' +
                                    '<div><span class="text-name">' + data[n].name + '</span></div>' +
                                    '<div>' +
                                    '<div class="ellipsis text-org" ><i class="icon-tree-5"></i>' + data[n].org + '</div>' +
                                    '<div class="ellipsis text-role"><i class="icon-user"></i>' + data[n].role + '</div>' +
                                    '<div class="ellipsis text-position"><i class="icon-stack-user"></i>' + data[n].position + '</div>' +
                                    '</div>' +
                                    '</div></div></a></li>';
                            if (active) {
                                $('#' + self.settings.list).prepend(node);
                            } else {
                                $('#' + self.settings.list).append(node);
                            }
                        }
                        WFTurn.counter();
                    } else {
                        $('#' + self.settings.list).append('<li><a class="text-none">无数据</a></li>');
                    }
                },
                formatResult: function(data, value) {
                    var str = $("#turn_search_form_input_" + self.settings.wft).val();
                    return  str;
                }
            });

        },
        reset: function() {
            var self = this;
            var node;
            var users = [];
            var active = false;
            if (WFTurn.settings.defaultUser[self.settings.wft] !== undefined) {
                if ($.isArray(WFTurn.settings.defaultUser[self.settings.wft])) {
                    $.merge(users, WFTurn.settings.defaultUser[self.settings.wft]);
                } else {
                    users.push(WFTurn.settings.defaultUser[self.settings.wft]);
                }
            }
            var postdata = {wf: self.settings.wf, wft: self.settings.wft, wfu: users, wfnode: self.settings.task};
            var selectedNodes = WFTurn.getSelectedNodes(self.settings.wft);
            WFTurn.initNodes(self.settings.wft);
            if (!$.isEmptyObject(selectedNodes)) {//修正查询节点状态
                for (i in selectedNodes) {
                    WFTurn.addNode(self.settings.wft, {id: selectedNodes[i].id, name: selectedNodes[i].name});
                }
            }
            var selectUserMode = $("#taskList").find("[node-data=" + self.settings.wft + "]").attr("select_user_mode");
            var selectTurnMode = $("#taskList").find("[node-data=" + self.settings.wft + "]").attr("mode");
            $.ajax({
                url: self.settings.handlerUrl,
                type: 'get',
                data: postdata,
                dataType: 'json',
                async: false,
                success: function(data) {

                    $('#' + self.settings.list).empty();
                    if (!$.isEmptyObject(data)) {
                        for (n in data) {
                            if ((((selectTurnMode!="single")  || (selectTurnMode=="single" && (WFTurn.selectedNodes[self.settings.wft].length==0))) && $.inArray(data[n].id, users) !== -1)
                                    || self.hasNode(self.settings.wft, {id: data[n].id}) !== false
                                    || (n === '0' && data.length === 1)) {

                                active = true;
                                var taskUserId = $("#turn_user_" + self.settings.wft);
                                var taskUserName = $("#turn_user_" + self.settings.wft + "_name");
                                var listTaskUser = $("#list_turn_user_" + self.settings.wft);
                                if (selectUserMode == "select" && (taskUserId.val() == "")) {
                                    taskUserId.val(listTaskUser.val());
                                    taskUserName.val(listTaskUser.attr("node-data-name"));
                                } else {
                                    if(selectTurnMode=="single"){
                                        WFTurn.selectedNodes[self.settings.wft] = [];
                                    }
                                    WFTurn.addNode(self.settings.wft, {id: data[n].id, name: data[n].name});
                                }
                            } else {
                                active = false;
                            }
                            node = '<li node-data="' + data[n].id + '" node-data-name="' + data[n].name + '" class="' + (active ? 'active' : '') + '"><a>' +
                                    '<div class="item">' +
                                    '<div class="select"><input type="checkbox" ' + (active ? 'checked' : '') + '/></div>' +
                                    '<div class="img"><img src="' + data[n].img + '"></div>' +
                                    '<div class="info">' +
                                    '<div><span class="text-name">' + data[n].name + '</span></div>' +
                                    '<div>' +
                                    '<div class="ellipsis text-org" ><i class="icon-tree-5"></i>' + data[n].org + '</div>' +
                                    '<div class="ellipsis text-role"><i class="icon-user"></i>' + data[n].role + '</div>' +
                                    '<div class="ellipsis text-position"><i class="icon-stack-user"></i>' + data[n].position + '</div>' +
                                    '</div>' +
                                    '</div></div></a></li>';
                            if (active) {
                                $('#' + self.settings.list).prepend(node);
                            } else {
                                $('#' + self.settings.list).append(node);
                            }
                        }
                        WFTurn.counter();
                    } else {
                        $('#' + self.settings.list).append('<li><a class="text-none">无数据</a></li>');
                    }
                }
            });

        },
        handler: function() {
            $('#turnModal').modal({ 'width': '800', 'show': true });
        },
        checkCondition: function() {
            var returnFlag = false;
            $('#taskList > li').show();
            $.ajax({
                type:'POST',
                url:this.settings.checkConditionUrl,
                data:{id: $('#model_id').val()},
                async:false,
                success:function(data){
                    $('#taskList a').unbind('click');
                    $('#taskList a').find('i[class="icon-spam"]').removeClass().addClass('icon-checkbox-unchecked-3');
                    data = $.parseJSON(data);
                    for (var i in data) {
                        var taskItem = $('#taskList a[node-data="' + i + '"]');
                        taskItem.find('i').removeClass().addClass('icon-spam').css({color: '#dd4b39'});
                        taskItem.on('click', function() {
                            if(data[$(this).attr('node-data')]['msg']!=""){
                                _originalAlert(data[$(this).attr('node-data')]['msg']); 
                            }else{
                                _originalAlert('不符合条件公式：' + data[$(this).attr('node-data')]['expression']);
                            }
                             return false;
                        });
                        if(WFTurn.settings.hideinvalidproc) {
                            taskItem.parent('li').hide();
                        }
                    }
                }
            });
            if($('#taskList a').find('i[class="icon-spam"]').length == $('#taskList a').length){
                _originalAlert('您无相关权限，不能选择，请联系系统管理员');
                returnFlag = true;
            }
            return returnFlag;
        },
        load: function() {
            var $firstNode = $('.td-nav-list > li').first();
            if ($firstNode.attr('required')) {
                $firstNode.siblings().each(function() {
                    if (!$(this).find('i[class="icon-spam"]').length) {
                        if ($(this).attr('required')) {
                            $(this).find('a').trigger('click');
                        }
                    }
                });
            }
            if (!$firstNode.find('i[class="icon-spam"]').length) {
                if (!$firstNode.parent().attr('required') && ($firstNode.attr('multi')) && ($firstNode.parent().find("li.active").length == 0)) {
                    $("#turn_information").hide();
                } else if (($firstNode.parent().find("li.active").length == 0)) {
                    $firstNode.find('a').trigger('click');
                } 
            } else {
                if($("#taskList").find("i.icon-checkbox-checked-2").length>0)
                   $("#turn_information").show();
                else 
                  $("#turn_information").hide();
                $('#allow_mobile_box').hide();
            }
        },
        getSelectedNodes: function(wft) {
            return this.selectedNodes[wft];
        },
        initNodes: function(wft, ids, names) {
            if (this.settings.multi) {
                if (!this.selectedNodes[wft]) {
                    this.selectedNodes[wft] = [];
                }
            } else {
                this.selectedNodes = [];
                this.selectedNodes[wft] = [];
            }

            if (ids && names) {
                var idArr = ids.split(',');
                var nameArr = names.split(',');
                for (i in idArr) {
                    this.addNode(wft, {id: idArr[i], name: nameArr[i]});
                }
            }
            WFTurn.counter();
        },
        initSelected: function() {
            $('#turn_user_list').children().each(function() {
                if (WFTurn.hasNode(WFTurn.settings.wft, {id: $(this).attr("node-data"), name: $(this).attr("node-data-name")})) {
                    $(this).addClass('active').find(':checkbox').attr('checked', true);
                } else {
                    $(this).removeClass('active').find(':checkbox').attr('checked', false);
                }
            });
        },
        hasNode: function(wft, node, type) {
            if (!wft) {
                return false;
            }
            if (!node || $.isEmptyObject(node)) {
                return this.selectedNodes[wft] ? this.selectedNodes[wft].length : 0;
            } else {
                var n = false;
                $.each(this.selectedNodes[wft], function(i, obj) {
                    if (obj.id === node.id) {
                        (type && type == 'return') ? (n = i) : (n = true);
                        return;
                    }
                });
                return n;
            }
        },
        getIds: function(wft) {
            var nodes = this.getSelectedNodes(wft) ? this.getSelectedNodes(wft) : [];
            var ids = [];
            for (var i = 0; i < nodes.length; i++) {
                ids.push(nodes[i].id);
            }
            return ids;
        },
        getNames: function(wft) {
            var nodes = this.getSelectedNodes(wft) ? this.getSelectedNodes(wft) : [];
            var names = [];
            for (var i = 0; i < nodes.length; i++) {
                names.push(nodes[i].name);
            }
            return names;
        },
        addNode: function(wft, node) {
            if (this.hasNode(wft, node) === false) {
                this.selectedNodes[wft].push(node);
            }
        },
        removeNode: function(wft, node) {
            if (this.hasNode(wft, node) !== false) {
                this.selectedNodes[wft].splice(this.hasNode(wft, node, 'return'), 1);
            }
        },
        counter: function() {
            var count = 0;
            for (i in this.selectedNodes) {
                count += this.selectedNodes[i].length;
            }
            if (count > 0)
                $('#turnModal .counter').html('<span class="pull-left" id="selected-counter">共选中<em style="font-size:20px;color:#f21717"> ' + count + ' </em>个办理人</span>');
            else
                $('#turnModal .counter').html('');
        }
    };
    $(document).on('click', '#addsignuser', function() {
        WFTurn.iframe('hide');
        WFTurn.beforeTurn(function() {
            $("#addUserModal").modal("show");
        });
    });
    $(document).on('click', '#btn_turn_doc', function() {
        WFTurn.iframe('hide');
        WFTurn.beforeTurn(function() {
            $("#turn_doc_modal").modal("show");
        });
    });
    $(document).on('click', '#btn_send', function() {
        WFTurn.iframe('hide');
        WFTurn.docsavemode = 'clear';
        WFTurn.beforeTurn(function() {
            send.isHidden = true;
            send.activeOp();
        });
        WFTurn.docsavemode = null;
    });
    $(document).on('shown', '#addUserModal', function() {
        $('#adduser_selector_em_').text('').parents('div.control-group').removeClass('error');
        $('#adduser_selector').val('');
        $('#adduser_selector_name').val('');
    });
    $(document).on('hidden', '#addUserModal', function() {
        WFTurn.iframe('show');
    });
    $(document).on('hidden', '#turn_doc_modal', function() {
        WFTurn.iframe('show');
    });
    $(document).on('click', '#btn_turn_cancel', function() {
        WFTurn.iframe('show');
        $('#turnModal').modal('hide');
    });

    $(document).on('hidden', '#turnModal', function() {
        WFTurn.iframe('show');
    });
    $(document).on('shown', '#turnModal', function() {
        WFTurn.counter();
    });
    $(document).on('click', '#btn_allsave', function() {
        WFTurn.beforeTurn();
    });
    $(document).on('click', '#btn_close', function() {
        if (window._originalConfirm("关闭前是否保存？\r\n确定保存并关闭，取消直接关闭")) {
            if (typeof (window.external.OA_SMS) != "undefined") {
                WFTurn.beforeTurn(function() {
                    window.external.OA_SMS('', '', 'CLOSE_WINDOW');
                });
            } else {
                WFTurn.beforeTurn(function() {
                    window.close();
                });
            }
        } else {
            if (typeof (window.external.OA_SMS) != "undefined") {
                window.external.OA_SMS('', '', 'CLOSE_WINDOW');
            } else {
                window.close();
            }
        }
    });

    $(document).on('click', '#btn_turn', function() {
        WFTurn.beforeTurn(function() {
            WFTurn.initSelected();
            WFTurn.handler();
        });
    });

    $(document).on('click', '#btn_end', function() {
        WFTurn.iframe('hide');
        if ($('#modal_end').length > 0) {
            WFTurn.beforeTurn(function() {
                $('#modal_end').modal('show');
            });
        }
    });
    $(document).on('click', '#taskList a i', function() {
        if (!$(this).parent().parent().attr('required') && ($(this).parent().parent().attr('multi')) && !$(this).parent().parent().hasClass("active")) {
            if ($(this).hasClass("icon-checkbox-unchecked-3"))
                $(this).removeClass('icon-checkbox-unchecked-3').addClass('icon-checkbox-checked-2');
            else
                $(this).removeClass('icon-checkbox-checked-2').addClass('icon-checkbox-unchecked-3');
            return false;
        }
    });
    $(document).on('click', '#taskList a', function() {
        var mode = $(this).attr("select_user_mode");
        var turnMode = $(this).attr("mode");
        var wft = $(this).attr('node-data');
        var setting = $(this).attr('allow_setting_mobile_handler');
        var nodeType = $(this).attr('node-type');
        var canChange;
        $('div[id^="user_"]').hide();
        $('[id^="allow_mobile_handle_"]').parent().hide();
        $('#allow_mobile_handle_' + wft).parent().show();
        $('[id^="turn_search_form_input_"]').hide();
        $('#turn_search_form_input_' + wft).show();
        if (setting == '0') {
            $("#allow_mobile_box").hide();
        } else {
            $("#allow_mobile_box").show();
        }
        if($("#message_box").length>0){
            $("#message_box").hide();
        }
        if (nodeType == "end") {
            $("#turn_information").hide();
            $("#turn_information").prev().css({"padding-bottom": "20px"});
        } else {
            $("#turn_information").show();
            $("#turn_information").prev().css({"padding-bottom": "0px"});
        }
        if (mode == "list") {
            if(turnMode=="single"){
                $('#selectAll').parent().hide();
            }else{
               $('#selectAll').parent().show();
               $('#selectAll').attr('checked', false);
            }
            $("#turn_search_form").show();
            $("#turn_user_list").show(); 
          
          
        } else {
            $("#turn_search_form").hide();
            $("#turn_user_list").hide();
            $('#selectAll').parent().hide();
            $('#user_' + $(this).attr('node-data')).show();
        }
        if ($(this).parent().attr('disabled')) {
            window._originalAlert('有并发流程没有办结，流程不能转交！');
            return false;
        }
        if (!$(this).parent().attr('required') && ($(this).parent().attr('multi'))) {
            canChange = true;
        } else {
            canChange = false;
        }
        if (canChange && $(this).parent().hasClass("active")) {
            if ($(this).parent().find('i').hasClass('icon-checkbox-unchecked-3')) {
                $(this).parent().find('i').removeClass('icon-checkbox-unchecked-3').addClass('icon-checkbox-checked-2').css({
                    color: '#dd4b39'
                });
            } else {
                $(this).parent().find('i').addClass('icon-checkbox-unchecked-3').removeClass('icon-checkbox-checked-2').css({
                    color: '#dd4b39'
                });
            }
        }
        if (!$(this).parent().hasClass('active')) {
            WFTurn.init({'wft': wft, 'required': $(this).parent().attr('required'), 'multi': $(this).parent().attr('multi')});
            WFTurn.reset();
            WFTurn.get();
            $(this).parents('ul').children().each(function() {
                if ($(this).attr('multi')) {
                    if ($(this).find('i').hasClass('icon-checkbox-checked-2') || $(this).find('i').hasClass('icon-checkbox-unchecked-3')) {
                        $(this).removeClass("active").find('i').css({
                            color: 'black'
                        });
                        if ($(this).attr('required') !== "required" && (($(this).find('a').attr('select_user_mode') === 'list' && WFTurn.hasNode($(this).find('a').attr('node-data')) === 0) || ($(this).find('a').attr('select_user_mode') === 'select' && $('#trun_user_' + $(this).find('a').attr('node-data')).val()))) {
                            if (!canChange)
                                $(this).find('i').removeClass('icon-checkbox-checked-2').addClass('icon-checkbox-unchecked-3');
                        }
                    }
                } else {
                    if ($(this).find('i').hasClass('icon-checkbox-checked-2') || $(this).find('i').hasClass('icon-checkbox-unchecked-3')) {
                        $(this).removeClass("active").find('i').removeClass('icon-checkbox-checked-2').addClass('icon-checkbox-unchecked-3').css({
                            color: 'black'
                        });
                    }
                }
            });
            $(this).parent().addClass("active").find('i').removeClass('icon-checkbox-unchecked-3').addClass('icon-checkbox-checked-2').css({
                color: '#dd4b39'
            });
            $('#task_id').val($(this).attr('node-data'));
            $('#task_type').val($(this).attr('node-type'));
        }
        WFTurn.counter();
    });


    $(document).on('click', '#btnTurnSubmit', function() {
        WFTurn.turn();
    });

    $(document).on('click', '#turn_user_list a', function() {
        if ($(this).hasClass("text-none"))
            return false;
        var $li = $(this).parent();
        var selectWft =  $("#taskList").find("[node-data=" + WFTurn.settings.wft + "]");
        var type = selectWft.attr("node-type");
        var mode = selectWft.attr("mode");
        if (!$li.hasClass('active') && (type != "end")) {
            if(mode=="single"){
               $li.siblings().removeClass('active').find(':checkbox').attr('checked', false);
               WFTurn.selectedNodes[WFTurn.settings.wft] = [];
            }
            $li.addClass('active').find(':checkbox').attr('checked', true);
            WFTurn.addNode(WFTurn.settings.wft, {id: $li.attr('node-data'), name: $li.attr('node-data-name')});
        } else {
            $li.removeClass('active').find(':checkbox').attr('checked', false);
            WFTurn.removeNode(WFTurn.settings.wft, {id: $li.attr('node-data'), name: $li.attr('node-data-name')});
        }
        WFTurn.counter();
    });

    $(document).on('keyup focusout', 'input[id^="turn_search_form_input"]', function() {
        if ($(this).val() !== '') {
        } else {
            WFTurn.reset();
        }
    });
    $(document).on('dblclick', 'textarea[id^="turn_user_"]', function() {
        $(this).next().trigger("click");
    });
    $(document).on('click', '#selectAll', function() {
        var staus = $(this).attr('checked');
        var type = $("#taskList").find("[node-data=" + WFTurn.settings.wft + "]").attr("node-type");
        if (type == "end") {
            return false;
        }
        if (staus == 'checked')
        {
            value = true;
        } else
        {
            value = false;
        }
        $("#turn_user_list a").each(function() {
            var $li = $(this).parent();
            if (value) {
                $li.addClass('active').find(':checkbox').attr('checked', true);
                WFTurn.addNode(WFTurn.settings.wft, {id: $li.attr('node-data'), name: $li.attr('node-data-name')});
            } else {
                $li.removeClass('active').find(':checkbox').attr('checked', false);
                WFTurn.removeNode(WFTurn.settings.wft, {id: $li.attr('node-data'), name: $li.attr('node-data-name')});
            }
            WFTurn.counter();
        });
    });

    $.fn.turnModal = function(option) {
        if (typeof option === 'object') {
            return WFTurn.init(option);
        }
    };
})(jQuery);