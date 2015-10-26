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
	});
};
	
function initFilterContacts() {
	$(".view-all").on('click', function(e){
		e.preventDefault();
		var contacts = $(".contact");
		contacts.each(function(){
			$(this).show();
		});
	});

	$(".filter-international").on('click', function(e){
		e.preventDefault();
		var contacts = $(".contact");
		contacts.each(function(){
			$(this).show();
			var value = $(this).children().children(".international").html();
			if(value != "true"){
				$(this).hide();
			};
		});
	});

	// $(".filter-extensions").on('click', function(e){
	// 	e.preventDefault();
	// 	var url = $(this).attr('href');
	// 	var container = $('.contacts-container');
	// 	var contacts = $(".contact");
	// 	contacts.each(function(){
	// 		$(this).children().children(".international")
	// 	});
	// });

	// $(".filter-dot-com").on('click', function(e){
	// 	e.preventDefault();
	// 	var url = $(this).attr('href');
	// 	var container = $('.contacts-container');
	// 	var contacts = $(".contact");
	// 	contacts.each(function(){
	// 		$(this).children().children(".international")
	// 	});
	// });

	// $(".filter-email-order").on('click', function(e){
	// 	e.preventDefault();
	// 	var url = $(this).attr('href');
	// 	var container = $('.contacts-container');
	// 	var contacts = $(".contact");
	// 	contacts.each(function(){
	// 		$(this).children().children(".international")
	// 	});
	// });

};


