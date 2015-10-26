function initDeleteContacts() {
	$(".contacts-container").on('click', '.delete', function(e){
		e.stopImmediatePropagation();
		e.preventDefault();
		var url = $(this).attr('href');
		var container = $(this).parent('.contact');
		$.ajax({url: url, method: 'delete'}).done(function(){
			container.remove();
		}).fail(function(){
			console.log("Failed to delete contact.");
		});
	})
};
	
function initFilterContacts() {

};
