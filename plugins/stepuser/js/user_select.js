function begin_set()
{
	jQuery(document).find("td[class='menulines']").each(function(){
		var user_id = jQuery(this).attr("id");  
        if(prcs_user.val() != "" && prcs_user.val() != null && (prcs_user.val().indexOf(","+user_id+",")>0 || prcs_user.val().indexOf(user_id+",")==0)){
            borderize_on(jQuery(this));	
        }else{
            borderize_off(jQuery(this));
        }
	});
	jQuery(document).find("td[class='menulines_op']").each(function(){
		var op_user_id = jQuery(this).attr("id").substr(0, jQuery(this).attr("id").length-3);
		if(op_user.val() == op_user_id){
			borderize_on(jQuery(this));
			jQuery($("opbox_"+op_user_id)).attr('checked', true);
		}else{
			borderize_off(jQuery(this));	
		}
	});
}
function begin_set_others()
{
    var remind_others_id_val = remind_others_id.val();
    jQuery("td[class='menulines']").each(function(){
		var user_id = jQuery(this).attr("id");
        if(remind_others_id_val.indexOf(user_id) >= 0)
        {   
            borderize_on(jQuery(this));
        }
	});
}
function click_user(user_id)
{
	var self = jQuery($(user_id));
	var user_name = self.attr('name');
    var prcs_user_val = prcs_user.val();
	if(prcs_user.val() == ""){ //如果经办为空则同时选择主办人
		set_op(user_id,user_name);
	}
	if(prcs_user_val.indexOf(","+user_id+",")>0 || prcs_user_val.indexOf(user_id+",")==0){
		if(prcs_user_val.indexOf(user_id+",") == 0){
			prcs_user.val(prcs_user.val().replace(user_id+",",""));
		}
		if(prcs_user_val.indexOf(","+user_id+",")>0){
			prcs_user.val(prcs_user.val().replace(","+user_id+",", ",")) ;
		}
		removeName(user_id);
		if(op_user.val() == user_id){
			unset_op();	
		}
	}else{
		prcs_user.val(prcs_user.val() + user_id + ",");
    	addName(user_id,user_name);	
	}
	begin_set();
}
function click_others(user_id)
{
    var self = jQuery($(user_id));
	var user_name = self.attr('name');
    var remind_others_id_val = remind_others_id.val();
    var remind_others_name_val = remind_others_name.val();
    if(remind_others_id_val.indexOf(user_id) >= 0)
    {
        var remind_others_id_val_left = remind_others_id_val.substr(0,remind_others_id_val.indexOf(user_id));
        var remind_others_id_val_right = remind_others_id_val.substr(remind_others_id_val.indexOf(user_id) + user_id.length + 1);
        var remind_others_name_val_left = remind_others_name_val.substr(0,remind_others_name_val.indexOf(user_name));
        var remind_others_name_val_right = remind_others_name_val.substr(remind_others_name_val.indexOf(user_name) + user_name.length + 1);
        var remind_others_id_val_new = remind_others_id_val_left + remind_others_id_val_right;
        var remind_others_name_val_new = remind_others_name_val_left + remind_others_name_val_right;
        remind_others_id.val(remind_others_id_val_new);
        remind_others_name.val(remind_others_name_val_new);
        borderize_off(self)
    }
    else
    {
        remind_others_id_val += user_id+",";
        remind_others_name_val += user_name+",";
        remind_others_id.val(remind_others_id_val);
        remind_others_name.val(remind_others_name_val);
        borderize_on(self);
    }
}
function add_all_others()
{
    var remind_others_id_val = remind_others_id.val();
    var remind_others_name_val = remind_others_name.val();
    jQuery("td[class='menulines']").each(function(){
		var user_id = jQuery(this).attr('id');
		var user_name = jQuery(this).attr('name');
        if(remind_others_id_val.indexOf(user_id) < 0)
        {
            remind_others_id_val += user_id+",";
            remind_others_name_val += user_name+",";
            remind_others_id.val(remind_others_id_val);
            remind_others_name.val(remind_others_name_val);
            borderize_on(jQuery(this));
        }
	});
}
function del_all_others()
{
    jQuery("td[class='menulines']").each(function(){
        var remind_others_id_val = remind_others_id.val();
        var remind_others_name_val = remind_others_name.val();
		var user_id = jQuery(this).attr('id');
		var user_name = jQuery(this).attr('name');
        if(remind_others_id_val.indexOf(user_id) >= 0)
        {
            var remind_others_id_val_left = remind_others_id_val.substr(0,remind_others_id_val.indexOf(user_id));
            var remind_others_id_val_right = remind_others_id_val.substr(remind_others_id_val.indexOf(user_id) + user_id.length + 1);
            var remind_others_name_val_left = remind_others_name_val.substr(0,remind_others_name_val.indexOf(user_name));
            var remind_others_name_val_right = remind_others_name_val.substr(remind_others_name_val.indexOf(user_name) + user_name.length + 1);
            var remind_others_id_val_new = remind_others_id_val_left + remind_others_id_val_right;
            var remind_others_name_val_new = remind_others_name_val_left + remind_others_name_val_right;
            remind_others_id.val(remind_others_id_val_new);
            remind_others_name.val(remind_others_name_val_new);
            borderize_off(jQuery(this));
        }
	});
}
function removeName(user_id)
{
	jQuery(prcs_op_block_div).find("div[class='user-tags'][user_id='"+user_id+"']").remove();
}
function addName(user_id,user_name)
{
	jQuery(prcs_op_block_div).append('<div class="user-tags" user_id="'+user_id+'">'+user_name+'<i class="close">×</i></div>');
}

function click_op(op_id) //处理主办
{ 
	var targetelement = jQuery($(op_id));
	var user_id = op_id.substr(0, op_id.length-3);
	var user_name = targetelement.attr('name');
    var prcs_user_val = prcs_user.val();
	if(op_user.val() == user_id){
		unset_op();
	}else{
		set_op(user_id,user_name);
		if(!(prcs_user_val.indexOf(","+user_id+",")>0 || prcs_user_val.indexOf(user_id+",")==0)){
      		click_user(user_id);
      	}      		
	}
	begin_set();
}

function  uncheck_all()
{
	jQuery("input[type='checkbox']").attr('checked', false);
  
}

function set_op(user_id,user_name)
{
	unset_op();
	if(top_flag != 0){ //没有主办人的情况下不做任何操作
		return;
	}
	op_user.val(user_id);
	jQuery(host_op_block_div).append('<div class="user-tags" user_id="'+user_id+'">'+user_name+'<i class="close">×</i></div>');
	uncheck_all();
	document.getElementById("opbox_"+user_id).checked=true;
}

function unset_op()
{
	op_user.val('');
	jQuery(host_op_block_div).find('.user-tags').remove();
	uncheck_all();
}


function borderize_on(targetelement)
{	
	var color = "#003FBF";
	jQuery(targetelement).css({
		'borderColor'		: "black",
		'backgroundColor'	: color,
		'color'				: "white",
		'fontWeight'		: "bold"
	});

}

function borderize_off(targetelement)
{
	jQuery(targetelement).css({
		'borderColor'		: "",
		'backgroundColor'	: '',
		'color'				: "",
		'fontWeight'		: ""
	});
}

function add_all()
{
	jQuery("td[class='menulines']").each(function(){
		var user_id = jQuery(this).attr('id');
		var user_name = jQuery(this).attr('name');
		if(prcs_user.val().indexOf(','+user_id+',') < 0 && prcs_user.val().indexOf(user_id + ',') != 0){
			prcs_user.val(prcs_user.val() + user_id + ',');
			addName(user_id, user_name);
		}
	});
	begin_set();
}

function del_all()
{
	jQuery("td[class='menulines']").each(function(){
		var user_id = jQuery(this).attr('id');
		var user_name = jQuery(this).attr('name');
		if(user_id == op_user.val()){
			unset_op();
		}
		if(prcs_user.val().indexOf(user_id + ',') == 0){
			prcs_user.val(prcs_user.val().replace(user_id + ',', ''));
		}
		if(prcs_user.val().indexOf(',' + user_id + ',') > 0){
			prcs_user.val(prcs_user.val().replace(',' + user_id +',', ','));
		}
		removeName(user_id);
	});
	begin_set();
}