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

	$(".filter-extensions").on('click', function(e){
		e.preventDefault();
		var contacts = $(".contact");
		contacts.each(function(){
			$(this).show();
			var value = $(this).children().children(".phone").html();
			if(value.length <= 13){
				$(this).hide();
			};
		});
	});

	$(".filter-dot-com").on('click', function(e){
		e.preventDefault();
		var contacts = $(".contact");
		contacts.each(function(){
			$(this).show();
			var value = $(this).children().children(".email").html();
			if(!value.includes(".com")){
				$(this).hide();
			};
		});
	});

	$(".filter-email-order").on('click', function(e){
		e.preventDefault();
		var contacts = $(".contact");
		var emails = [];
		contacts.each(function(){
			$(this).show();
			var value = $(this).children().children(".email").html();
			emails.push(value);
		});
		emails.sort()
		
		for(var i = 0 ; i < emails.length ; i++ ){
			contacts.each(function(){
				var value = $(this).children().children(".email").html();
				if(value == emails[i]){
					$(".contacts-container").append($(this));
					return false;
				};
			});
		};
	});
};








