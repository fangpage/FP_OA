var send = {
    id : null,
    apis : [],
    isHidden:false,
    clickMode : 0,
    treeObj : null,
    load : function() {
        $('#selected_send_dept tbody tr').live('click', function(){
            $(this).remove();
            var treeNode = zTree_sendDept.getNodeByParam('id',$(this).attr('item_id'),null);
            if(treeNode.checked)
                zTree_sendDept.checkNode(treeNode,false,false);
            send.counter();
        });
        $(document).on('hidden', '#select-dept', function(){
            send.close();
        });
    },
    zTreeOnClick : function(event,treeId,treeNode) {
        send.treeObj = treeId === 'sendDept' ? zTree_sendDept : zTree_deptOtherTree;
        if(treeNode.checked) {
            send.treeObj.checkNode(treeNode,false,false);
            if($('#dept_'+treeNode.id).length> 0 && treeNode.id != 0)
                $('#dept_'+treeNode.id).remove();
        } else {
            if(send.clickMode == '1'){     
                send.treeObj.checkNode(treeNode,true,false);
                if(!$('#dept_'+treeNode.id).length && treeNode.id != 0)
                    $('#selected_send_dept tbody').append('<tr id="dept_'+treeNode.id+'" item_name="'+treeNode.name+'" item_id="'+treeNode.id+'" class="dept_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>'+treeNode.name+'</td></tr>');
            } else if (send.clickMode == '2') {
                send.treeObj.checkNode(treeNode,true,false);
                send.zTreeOnCheck(event,treeId,treeNode);
            } else {
                send.treeObj.checkNode(treeNode,true,true);
                send.zTreeOnCheck(event,treeId,treeNode);
            }
        }
        send.counter();
    },
    zTreeOnCheck : function(event,treeId,treeNode){
        if(treeNode.checked) {
            if(!$('#dept_'+treeNode.id).length && treeNode.id != 0)
                $('#selected_send_dept tbody').append('<tr id="dept_'+treeNode.id+'" item_name="'+treeNode.name+'" item_id="'+treeNode.id+'" class="dept_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>'+treeNode.name+'</td></tr>');
            send.checkChildDept(treeNode);
        } else {
            if($('#dept_'+treeNode.id).length> 0)
                $('#dept_'+treeNode.id).remove();
            send.uncheckChildDept(treeNode);
        }
        send.counter();
    },
    checkChildDept : function(treeNode){
        if(treeNode.hasOwnProperty('children')) {
            for(var i=0;i<treeNode.children.length;i++){
                if(send.clickMode == '2'){
                    send.treeObj.checkNode(treeNode.children[i],true,false);
                    if(!$('#dept_'+treeNode.children[i].id).length)
                        $('#selected_send_dept tbody').append('<tr id="dept_'+treeNode.children[i].id+'" item_name="'+treeNode.children[i].name+'" item_id="'+treeNode.children[i].id+'" class="dept_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>'+treeNode.children[i].name+'</td></tr>');
                } else {
                    if(!$('#dept_'+treeNode.children[i].id).length)
                        $('#selected_send_dept tbody').append('<tr id="dept_'+treeNode.children[i].id+'" item_name="'+treeNode.children[i].name+'" item_id="'+treeNode.children[i].id+'" class="dept_selected"><td style="text-align:center;"><span class="pull-left icon-checkmark-3" style="color: #468847;"></span>'+treeNode.children[i].name+'</td></tr>');
                    send.checkChildDept(treeNode.children[i]);
                }
            }
        }
    },
    uncheckChildDept : function(treeNode){
        if(treeNode.hasOwnProperty('children')) {
            for(var i=0;i<treeNode.children.length;i++){
                if($('#dept_'+treeNode.children[i].id).length> 0)
                    $('#dept_'+treeNode.children[i].id).remove();
                send.uncheckChildDept(treeNode.children[i]);
            }
        }
    },
    counter : function(){
        $('#select-dept #selected-counter').remove();
        var length = $('#selected_send_dept tbody tr').length;
        if(length == 0){
            var treeNode = send.treeObj.getNodeByParam('id',0,null);
            var selectNodes = send.treeObj.getSelectedNodes();
            if(selectNodes.length > 0) {
                for(var i=0;i<selectNodes.length;i++)
                    send.treeObj.cancelSelectedNode(selectNodes[i]);
            }
            if(treeNode.checked) {
                send.treeObj.checkNode(treeNode,false,false);
            }
        } else {
            $('#send_confirm').before('<span class="pull-left" id="selected-counter">共选中<em style="font-size:20px;color:#f21717"> ' + length + ' </em>个部门</span>');
        }
    },
    beforeSend : function(){
        send.isHidden = true;
        send.activeOp();
    },
    confirm : function(){
        var deptIds = '';
        var selectedObj = $('#selected_send_dept tbody tr');
        if(selectedObj.length > 0) {
            selectedObj.each(function(){
                deptIds += $(this).attr('item_id') + ',';
            });
            $('#Document_receiveDeptIds').val(deptIds);
            $.post(sendUrl, $('#send-dept-form').serialize(), function(data){
                $('#select-dept').modal('hide');
                window._originalAlert(data.msg);
                if($('#document-over-detail').length > 0) {
                    $.fn.yiiGridView.update('document-over-detail');
                }
            }, 'json');
        } else {
            $.notify({
                type:'error',
                message:{
                    text:'尚未选中发送部门！',
                    icon:'icon-info'
                }
            }).show();
            return false;
        }
    },
    close:function(){
        send.isHidden = false;
        send.activeOp();
    },
    activeOp: function(){
        var tabId = $('#tab-content > ul > li[class="active"]').attr('node-data');
        if(tabId == "tab_form"){
            $.each(formIds,function(i,id){
                if($('#form-'+id).contents().find("object").length >0){
                    if(!send.isHidden) {
                        $('#form-'+id).contents().find("object").show();
                    } else {
                        $('#form-'+id).contents().find("object").hide();
                    }
                }   
            });
           if($("#tab_aip_frame").length>0){
                if(!send.isHidden) {
                    $('#tab_aip_frame').contents().find("object").show();
                } else {
                    $('#tab_aip_frame').contents().find("object").hide();
                }
            }
           if($("#tab_doc_frame").length>0){
                if(!send.isHidden) {
                    $('#tab_doc_frame').contents().find("object").show();
                } else {
                    $('#tab_doc_frame').contents().find("object").hide();
                }
            }              
        } else {
            if($("#"+tabId+"_frame").contents().find("object").length > 0){
                if(!send.isHidden) {
                    $("#"+tabId+"_frame").contents().find("object").show();
                } else {
                    $("#"+tabId+"_frame").contents().find("object").hide();
                }
            }
        }
        $('#select-dept').modal(send.isHidden ? 'show' : 'hide');
    }
};