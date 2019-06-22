


(function($){

    var WFTurn = {
        settings : {
            'handlerUrl' : null,
            'wfUrl' : null,
            'turnUrl' : null,
            'endTaskUrl' : null,
            remindUrl : null,
            checkConditionUrl : null,//转交条件判断
            'wf' : null,
            'proc' : null,
            'task' : null,
            'wft' : null,
            'list' : 'turn_user_list',
            'search' : null,
            'defaultUser' : {},
            'required' : null,
            'multi' : null,
            'docFrameName' : 'tab_form_frame'
        }, 
        tasks : [],
        errors : [],
        selectedNodes : [],
        init : function(options){
            this.settings = $.extend(this.settings, options || {});
        },
        iframe : function(status){
            var tabId = $('#tab-content > ul > li[class="active"]').attr('node-data');
            if(tabId == "tab_form"){
                    $.each(formIds,function(i,id){
                        if($('#form-'+id).contents().find("object").length >0){
                            if(status == 'show')
                                $('#form-'+id).contents().find("object").show();
                            else
                                $('#form-'+id).contents().find("object").hide();
                        }
                    });
                   if($("#tab_aip_frame").length>0){
                        if(status == 'show')
                             $('#tab_aip_frame').contents().find("object").show();
                        else
                            $('#tab_aip_frame').contents().find("object").hide();
                    }
               if($("#tab_doc_frame").length>0){
                    if(status == 'show')
                         $('#tab_doc_frame').contents().find("object").show();
                    else
                        $('#tab_doc_frame').contents().find("object").hide();
                }
            } else {
                if($("#"+tabId+"_frame").contents().find("object").length > 0){
                    if(status == "show")
                        $("#"+tabId+"_frame").contents().find("object").show();
                    else
                        $("#"+tabId+"_frame").contents().find("object").hide();
                }
            }
        },
        updateRemind : function(){
            var title = $('.td-nav .td-nav-title').text();
            $('#TRemind_content_turn').val('您有待办的审批工作,标题:' + title);
        },
        removeBackdrop: function () {
            this.$backdrop && this.$backdrop.remove();
            this.$backdrop = null;
            this.$backdrop_loading && this.$backdrop_loading.remove();
            this.$backdrop_loading = null;
        },
        backdrop : function(){
            this.$backdrop = $('<div class="modal-backdrop fade"></div>').appendTo(document.body);
            this.$backdrop.addClass('in');
            this.$backdrop_loading = $('<img style="position:absolute; top:40%; left:50%; z-index:1060;" src="images/loading.gif" />').appendTo(document.body);
        },
        beforeTurn : function(callback){
            var self = WFTurn;
            self.backdrop();
			
            if(window.frames[this.settings.docFrameName] && window.frames[this.settings.docFrameName].Operation !== undefined){
                window.frames[this.settings.docFrameName].Operation.save();
            }
            
			window.location.href="workflownext.aspx?workid=2";
			
            var time = 0;
            var func = setInterval(function(){
                
				if($.type(callback) === 'function'){
                   callback();
				}
				
                if(time === 30){
                    self.removeBackdrop();
                    _originalAlert('保存超时！');
                    func = clearInterval(func);
                }
                time++;
            }, 1000);
        },
        check : function(){
            this.errors = [];
            this.tasks = [];
            var taskId = [];
            var taskName = [];
            var taskType = [];
            $('#taskList li a i[class="icon-checkbox-checked-2"]').each(function(){
                var $task = $(this).parent();
                taskId.push($task.attr('node-data'));
                taskType.push($task.attr('node-type'));
                taskName.push($task.text());
            });
           
            if(taskId.length < 1){
                this.errors.push('请选择流程步骤!');
                return false;
            }
            
            for(var i=0; i<taskId.length ; i++){
                if(taskType[i] === 'end'){
                    $('#task_id').val(taskId[i]);
                    $('#task_type').val(taskType[i]);
                    return true;
                }
                
                if(!this.selectedNodes[taskId[i]] || this.selectedNodes[taskId[i]].length == 0){
                    this.errors.push('请选择步骤['+ taskName[i] +']办理人!');
                    return false;
                }
                
                this.tasks.push({
                    'id':taskId[i],
                    'type':taskType[i],
                    'name':taskName[i],
                    'user':{'id':WFTurn.getIds(taskId[i]).join(','), 'name':WFTurn.getNames(taskId[i]).join(',')}
                });
                
                $('#turn_user_' + taskId[i]).val(WFTurn.getIds(taskId[i]).join(','));
            }
            
            $('#task_id').val(taskId.join(','));
            $('#task_type').val(taskType.join(','));
            return true;
        },
        end : function(){
            WFTurn.iframe('hide');
            window.confirm('<h5>是否确认转交? </h5>', function(ret){
                if(ret === true){
                    $('#turnForm').attr('action', WFTurn.settings.endTaskUrl);
                    $('#turnForm').submit();
                } else {
                    WFTurn.iframe('show');
                }
            });
        },
        fastTurn : function(){
            WFTurn.initNodes(WFTurn.settings.wft, $('#turn_user_'+WFTurn.settings.wft).val(), $('#turn_user_'+WFTurn.settings.wft).attr('node-data-name'));
            if(this.check()){
                var task = this.tasks.pop();
                var msg = '<h5>是否确认转交? </h5><span style="display: inline-block;padding-right: 20px;">办理步骤：</span><span class="label label-info">'+
                task.name+'</span><br>';
                if(task.user.name){
                    msg +='<span style="display: inline-block;padding-right: 20px;padding-left:14px;">办理人：</span><span class="label label-success">'+
                    task.user.name+'</span>';
                }
                WFTurn.iframe('hide');
                window.confirm(msg, function(ret){
                    if(ret === true){
                        $('#turnForm').submit();
                    } else {
                        $('#turnModal').modal('show');
                    }
                });
            } else {
                alert(this.errors.toString());
            }
        },
        turn : function(){
            $('#turn_user_'+WFTurn.settings.wft).val(this.getIds(this.settings.wft)).attr('node-data-name', this.getNames(this.settings.wft));
            if(this.check()){
                $('#btnTurnSubmit').attr('disabled', true);
                $('#turnForm').submit();
            }else {
                alert(this.errors.toString());
            }
        },
        get : function(){
            var self = this;
            var node;
            var users = [];
            var active = false;
            if(WFTurn.settings.defaultUser[self.settings.wft] !== undefined){
                if($.isArray(WFTurn.settings.defaultUser[self.settings.wft])){
                    $.merge(users, WFTurn.settings.defaultUser[self.settings.wft]);
                } else {
                    users.push(WFTurn.settings.defaultUser[self.settings.wft]);
                }
            }
            var postdata = {wf : self.settings.wf, wft : self.settings.wft, wfu : users};
            if(self.settings.search !== null){
                postdata.search = self.settings.search;
            }
            WFTurn.initNodes(self.settings.wft);
            $.ajax({
                url : self.settings.handlerUrl,
                type : 'post',
                data : postdata,
                dataType : 'json',
                async:false,
                success : function(data){
                    $('#'+self.settings.list).empty();
                    if(!$.isEmptyObject(data)){
                        for(n in data){
                            if($.inArray(data[n].id, users) !== -1 
                                    || self.hasNode(self.settings.wft, {id : data[n].id}) !== false
                                    || (n === '0' && data.length === 1)){
                                active = true;
                                WFTurn.addNode(self.settings.wft, {id : data[n].id, name : data[n].name});
                            } else {
                                active = false;
                            }
                            node = '<li node-data="'+data[n].id+'" node-data-name="'+data[n].name+'" class="'+(active ? 'active' : '')+'"><a>'+
                                    '<div class="item">'+
                                    '<div class="select"><input type="checkbox" '+ (active ? 'checked' : '') +'/></div>'+
                                    '<div class="img"><img src="'+data[n].img+'"></div>'+
                                    '<div class="info">'+
                                      '<div><span class="text-name">'+data[n].name+'</span></div>'+
                                      '<div>'+
                                        '<div class="ellipsis text-org" ><i class="icon-tree-5"></i>'+data[n].org+'</div>'+
                                        '<div class="ellipsis text-role"><i class="icon-user"></i>'+data[n].role+'</div>'+
                                        '<div class="ellipsis text-position"><i class="icon-stack-user"></i>'+data[n].position+'</div>'+
                                      '</div>'+
                                    '</div></div></a></li>';
                            if(active){
                                $('#'+self.settings.list).prepend(node);
                            } else {
                                $('#'+self.settings.list).append(node);
                            }
                        }
                        WFTurn.counter();
                    } else {
                        $('#'+self.settings.list).append('<li><a class="text-none">无数据</a></li>');
                    }
                }
            });
        },
        
        handler : function(){
            $.post(this.settings.wfUrl, {'type' : 'status', 'task' : this.settings.task, 'proc' : this.settings.proc}, function(data){
                if(data == 'end'){
                    WFTurn.end();
                } else if(data == 'stop') {
                    window._originalAlert('存在未办理完毕的并行流程，流程不能转交！');
                } else {
                    if($('#taskList a').length === 1){
                        var node = $('#taskList a').attr('node-data');
                        if($('#turn_user_' + node).val() !== '' && $('#turn_user_'+node).val() !== undefined){
                            WFTurn.load();
                            WFTurn.fastTurn();
                        } else {
                            WFTurn.iframe('hide');
                            WFTurn.load();
                            $('#turnModal').modal({'width':'800','show':true});
                        }
                    } else {
                        WFTurn.iframe('hide');
                        WFTurn.load();
                        $('#turnModal').modal({'width':'800','show':true});
                    }
                }
            });
        },
        checkCondition:function(){
          $.post(this.settings.checkConditionUrl,{
              'id':$('#model_id').val(),
          },function(data){
              $('#taskList a').unbind('click');
              $('#taskList a').find('i[class="icon-spam"]').removeClass().addClass('icon-checkbox-unchecked-3');
              data = $.parseJSON(data);
              for(var i in data){
                  var taskItem = $('#taskList a[node-data="'+i+'"]');
                  taskItem.find('i').removeClass().addClass('icon-spam').css({color:'#dd4b39'});
                  taskItem.on('click',function(){
                      _originalAlert('不符合条件公式：'+data[$(this).attr('node-data')]['expression']);
                      return false;
                  });
              }
          });  
        },
        
        load : function(){
            var $firstNode = $('.td-nav-list > li').first();
            
            if($firstNode.attr('required')){
                $firstNode.siblings().each(function(){
                    if($(this).attr('required')){
                        $(this).find('a').trigger('click');
                    }
                });
            }
            $firstNode.find('a').trigger('click');
        },
        
        getSelectedNodes : function(wft){
            return this.selectedNodes[wft];
        },
        
        initNodes : function(wft, ids, names){
            if(this.settings.multi){
                if(!this.selectedNodes[wft]){
                    this.selectedNodes[wft] = [];
                }
            } else {
                this.selectedNodes = [];
                this.selectedNodes[wft] = [];
            }
            
            if(ids && names){
                var idArr = ids.split(',');
                var nameArr = names.split(',');
                for(i in idArr){
                    this.addNode(wft, {id : idArr[i], name : nameArr[i]});
                }
            }
            WFTurn.counter();
        },
        
        initSelected : function(){
            $('#turn_user_list').children().each(function(){
                if(WFTurn.hasNode(WFTurn.settings.wft, {id : $(this).attr("node-data"), name : $(this).attr("node-data-name")})){
                    $(this).addClass('active').find(':checkbox').attr('checked', true);
                } else {
                    $(this).removeClass('active').find(':checkbox').attr('checked', false);
                }
            });
        },
        
        hasNode : function(wft, node){
            if(!wft){
                return false;
            }
            if(!node || $.isEmptyObject(node)){
                return this.selectedNodes[wft] ? this.selectedNodes[wft].length : 0;
            } else {
                var n = false;
                $.each(this.selectedNodes[wft], function(i, obj){
                    if(obj.id === node.id){
                        n = i;
                        return;
                    }
                });
                return n;
            }
        },
        
        getIds : function(wft){
            var nodes = this.getSelectedNodes(wft);
            var ids = [];
            for(var i=0; i<nodes.length; i++){
                ids.push(nodes[i].id);
            }
            return ids;
        },
        
        getNames : function(wft){
            var nodes = this.getSelectedNodes(wft);
            var names = [];
            for(var i=0; i<nodes.length; i++){
                names.push(nodes[i].name);
            }
            return names;
        },
        
        addNode : function(wft, node){
            if(this.hasNode(wft, node) === false){
                this.selectedNodes[wft].push(node);
            }
        },

        removeNode : function(wft, node){
            if(this.hasNode(wft, node) !== false){
                this.selectedNodes[wft].splice(this.hasNode(wft, node), 1);
            }
        },
        
        counter : function(){
            var count = 0;
            for(i in this.selectedNodes){
                count += this.selectedNodes[i].length;
            }
            if(count > 0)
                $('#turnModal .counter').html('<span class="pull-left" id="selected-counter">共选中<em style="font-size:20px;color:#f21717"> ' + count + ' </em>个办理人</span>');
            else
                $('#turnModal .counter').html('');
        }
    };

    $(document).on('click', '#btn_turn_cancel', function(){
        WFTurn.iframe('show');
        $('#turnModal').modal('hide');
    });
    
    $(document).on('hidden', '#turnModal', function(){
        WFTurn.iframe('show');
    });

    $(document).on('click', '#btn_turn', function(){
        WFTurn.beforeTurn(function(){
            WFTurn.updateRemind();
            //WFTurn.initSelected();
            //WFTurn.handler();
            //WFTurn.checkCondition();;
        });
    });

    $(document).on('click', '#taskList a', function(){
        $('#selectAll').attr('checked', false);
        
        if($(this).parent().attr('disabled')){
            window._originalAlert('有并发流程没有办结，流程不能转交！');
            return false;
        }
        
        if(!$(this).parent().hasClass('active')){
            WFTurn.init({'wft':$(this).attr('node-data'), 'required' : $(this).parent().attr('required'), 'multi' : $(this).parent().attr('multi')});
            WFTurn.get();
            $(this).parents('ul').children().each(function(){
                if($(this).attr('multi')){
                    $(this).removeClass("active").find('i').css({
                        color:'black'
                    }); 
                    if($(this).attr('required') !== "required" && WFTurn.hasNode($(this).find('a').attr('node-data')) === 0){
                        $(this).find('i').removeClass('icon-checkbox-checked-2').addClass('icon-checkbox-unchecked-3'); 
                    }
                } else {
                    if($(this).find('i').hasClass('icon-checkbox-checked-2') || $(this).find('i').hasClass('icon-checkbox-unchecked-3')) {
                        $(this).removeClass("active").find('i').removeClass('icon-checkbox-checked-2').addClass('icon-checkbox-unchecked-3').css({
                            color:'black'
                        }); 
                    }
                }
            });
            $(this).parent().addClass("active").find('i').removeClass('icon-checkbox-unchecked-3').addClass('icon-checkbox-checked-2').css({
                color:'#dd4b39'
            });
        }
    });

    $(document).on('click', '#btnTurnSubmit', function(){
        WFTurn.turn();
    });

    $(document).on('click', '#turn_user_list a', function(){
        var $li = $(this).parent();
        if(!$li.hasClass('active')){
            $li.addClass('active').find(':checkbox').attr('checked', true);
            WFTurn.addNode(WFTurn.settings.wft, {id : $li.attr('node-data'), name : $li.attr('node-data-name')});
        } else {
            $li.removeClass('active').find(':checkbox').attr('checked', false);
            WFTurn.removeNode(WFTurn.settings.wft, {id : $li.attr('node-data'), name : $li.attr('node-data-name')});
        }
        WFTurn.counter();
    });
    
    $(document).on('keyup focusout', '#turn_search_form_input', function(){
        if($(this).val() !== ''){
            WFTurn.init({'search':$(this).val()});
            WFTurn.get();
        } else {
            WFTurn.init({'search':null});
            WFTurn.get();
        }
    });
    
    $(document).on('click', '#selectAll', function() {
        var staus = $(this).attr('checked');
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

    $.fn.turnModal = function(option){
        if(typeof option === 'object'){
            return WFTurn.init(option);
        }
    };

})(jQuery);

