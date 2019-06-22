var VKWFUser = {
    hiddenFiled : null,
    textField : null,
    modal : null,
    baseUrl : null,
    dept : null,
    wfField : null,
    wfTaskField : null,
    handlerUrl :null,
    roleUrl:null
};

VKWFUser.init = function(hiddenField, textField, modal){
    this.hiddenFiled = hiddenField;
    this.textField = textField;
    this.modal = modal;

    this.wf = $('#'+VKWFUser.wfField).val();
    this.wft = $('#'+VKWFUser.wfTaskField).val();

    this.bindEvent();
};

VKWFUser.load = function(){
    $('#vk_wfuser_tab1 .data li:not(.header)').remove();
    $('#vk_wfuser_tab2 .data li:not(.header)').remove();
    $('#vk_wfuser_tab3 .data li:not(.header)').remove();
    $('#vk_wfuser_tab3 .td-nav-list').empty();
    $('#vk_wfuser_search .data li:not(.header)').remove();
    $('.nav-pills a[href="#vk_wfuser_tab2"]').trigger('click');
    $.ajax({
        url : VKWFUser.handlerUrl,
        type : 'POST',
        data : {'wf':VKWFUser.wf, 'wft':VKWFUser.wft},
        dataType : 'json',
        success : function(data){
            if(!$.isEmptyObject(data)){
                $.each(data, function(i, n){
                    if(!$.isEmptyObject(n)){
                        $('#vk_wfuser_tab1 .data').append('<li node-data="'+n.id+'"><a>'+n.name+'</a></li>');
                        $('#vk_wfuser_tab2 .data').append('<li node-data="'+n.id+'"><a>'+n.name+'</a></li>');
                    }
                })
            }
        }
    });

    $.ajax({
        url : VKWFUser.roleUrl,
        type : 'POST',
        data : {'wf':VKWFUser.wf, 'wft':VKWFUser.wft},
        dataType : 'json',
        success : function(data){
            if(!$.isEmptyObject(data)){
                $.each(data, function(i, n){
                    if(!$.isEmptyObject(n)){
                        $('#vk_wfuser_tab3 .td-nav-list').append('<li node-data="'+n.id+'"><a>'+n.name+'</a></li>');
                    }
                })
            }
        }
    });
}

VKWFUser.show = function(){
    $('#'+this.modal).modal('show');
};

VKWFUser.hide = function(){
    $('#'+this.modal).modal('hide');
};

VKWFUser.getNode = function(){
    return $('#'+this.modal+' .tab-pane.active .data li.active');
};

VKWFUser.bindEvent = function(){

    $(document).on('click', '#'+this.modal+' .btn-primary', function(){
        var $node = VKWFUser.getNode();
        $('#'+VKWFUser.hiddenFiled).val($node.attr('node-data'));
        $('#'+VKWFUser.textField).val($node.text());

        VKWFUser.hide();
    });

    $(document).on('click', '#'+this.modal+' .data > li:not(.header) > a', function(){
        $(this).parents('ul').children().removeClass('active');
        $(this).parent().addClass('active');
    });

    $(document).on('click', '#'+this.modal+' .rolelist a', function(){
        $(this).parents('ul').children().removeClass('active');
        $(this).parent().addClass('active');
        var nodeData = $(this).parent().attr('node-data');
        var wf = $('#'+VKWFUser.wfField).val();
        var wft = $('#'+VKWFUser.wfTaskField).val();
        $.ajax({
            url : VKWFUser.baseUrl,
            type : 'POST',
            data : {'action':'role', 'role':nodeData, 'wf':wf, 'wft':wft},
            dataType : 'json',
            success : function(data){
                if(!$.isEmptyObject(data)){
                    $('#vk_wfuser_tab3 .data li:not(.header)').remove();
                    for(n in data){
                        $('#vk_wfuser_tab3 .data').append('<li node-data="'+data[n].id+'"><a>'+data[n].user_name+'</a></li>');
                    }
                }
            }
        });

    });

    $(document).on('keyup', '#'+this.modal+' .search-query', function(){
        var wf = $('#'+VKWFUser.wfField).val();
        var wft = $('#'+VKWFUser.wfTaskField).val();
        var val =  $(this).val();
        $('#'+VKWFUser.modal+' a[href="#vk_wfuser_search"]').trigger('click');

        $.ajax({
            url : VKWFUser.baseUrl,
            type : 'post',
            data : {action : 'search', keyword:val, wf: wf, wft: wft},
            dataType : 'json',
            success : function(data){
                $('#vk_wfuser_search .data li:not(.header)').remove();
                if(!$.isEmptyObject(data)){
                    for(n in data){
                        $('#vk_wfuser_search .data').append('<li node-data="'+data[n].id+'"><a>'+data[n].user_name+'</a></li>');
                    }
                } else {
                    $('#vk_wfuser_search .data').append('<li node-data=""><a>无此用户信息！</a></li>');
                }
            }
        });
    });
};

VKWFUser.zTreeOnClick = function(event,treeId,treeNode){
    var wf = $('#'+VKWFUser.wfField).val();
    var wft = $('#'+VKWFUser.wfTaskField).val();
    $.ajax({
        url : VKWFUser.baseUrl,
        type : 'POST',
        data : {'action':'org', 'org':treeNode.id, 'wf':wf, 'wft':wft},
        dataType : 'json',
        success : function(data){
            $('#vk_wfuser_tab2 .data li:not(.header)').remove();
            for(n in data){
                $('#vk_wfuser_tab2 .data').append('<li node-data="'+data[n].id+'"><a>'+data[n].user_name+'</a></li>');
            }
        }
    });
};

function vk_selectwfuser(hiddenField, textField, modal) {
    VKWFUser.init(hiddenField, textField, modal);
    VKWFUser.load();
    VKWFUser.show();
}

function vk_del_selectwfuser(hiddenField, textField) {
    $('#'+hiddenField).val('');
    $('#'+textField).val('');
}
