$(function() {
	$(".table1 tr:odd").addClass("oddbg");
	$(".table1 tr:even").addClass("evenbg");
	$(".table1 tr").hover(function() {
		$(this).addClass("overstyle");
	}, function() {
		$(this).removeClass("overstyle");
	});
});