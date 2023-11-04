$(function()
{
	$("[window]").click(function(e)
	{
		e.preventDefault();
		$this=$(this);
		var goto=$this.attr('href');
		var height=$this.attr("win_height");
		var width=$this.attr("win_width");
		var win = window.open(goto,'','width='+width+',height='+height+',menubar=yes,status=no,directories=no,scrollbars=yes,resizable=yes,toolbar=0');
		win.focus();
	});
	$(".tablesorter").tablesorter({"sortMultisortKey":"shiftKey"});
	document.addEventListener("contextmenu", function(e){
    e.preventDefault();
}, false);
});
