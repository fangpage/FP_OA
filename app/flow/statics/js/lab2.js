$(function(){
	
	$('#b1').click(function(){
		$obj = $('select option:selected').clone(true);
		if($obj.size() == 0){
			alert("请至少选择一条!");
		}
		$('#s2').append($obj);
		$('select option:selected').remove();
	});
	
	$('#b2').click(function(){
		$('#s2').append($('#s1 option'));
	});
	
	$('#b3').click(function(){
		$obj = $('select option:selected').clone(true);
		if($obj.size() == 0){
			alert("请至少选择一条!");
		}
		$('#s1').append($obj);
		$('select option:selected').remove();
	});
	
	$('#b4').click(function(){
		$('#s1').append($('#s2 option'));
	});
	
	$('option').dblclick(function(){
		var flag = $(this).parent().attr('id');
		if(flag == "s1"){
			var $obj = $(this).clone(true);
			$('#s2').append($obj);
			$(this).remove();
		} else {
			var $obj = $(this).clone(true);
			$('#s1').append($obj);
			$(this).remove();
		}
	});
	
});