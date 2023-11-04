$(function()
{
	$("[number]").keyup(function(e)
	{
		var curr_val=$(this).val();
		if(!$.isNumeric(curr_val))
		{
			curr_val=curr_val.substr(0,curr_val.length-1);
		}
		$(this).val(curr_val);
	});
	$("[max_value]").keyup(function(e)
	{
		e.preventDefault();
		var maximum_val=$(this).attr("max_value");
		var curr_val=$(this).val();
		maximum_val=Number(maximum_val);
		curr_val=Number(curr_val);
		if(curr_val>maximum_val)
		{
			$(this).val(maximum_val);
			$(this).addClass('error-input');
			$(this).removeClass('input-success');
			$(this).focusout();
			$(this).focus();
			//alert("You can collect maximum "+maximum_val);
			Growl.info({title:"Alert",text:"Maximum "+maximum_val+" is allowed."});
		}
		else
		{
			$(this).removeClass('error-input');
			$(this).addClass('input-success');
		}
	});
});