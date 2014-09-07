// This encapsulates javascript
$(function(){
	  
	  var overlay = $('.search-overlay');

	  $(document).on('keypress', function(event){
	  	var code = event.keyCode || event.which;

	  	// a - z, A - Z
	  	if ((code >= 65 && code <= 90) || (code >= 97 && code <= 122 || code >= 48 && code <= 57)){
	  		console.log('Only a-z or A-Z has been pressed, or 0 - 9');
	  		console.log(code);	
	  		overlay.removeClass('fadeOut').addClass('fadeIn');
	  	}
	  })

	  // This is to capture an escape key
	  $(document).on('keyup', function(event){
	  	var code = event.keyCode || event.which;
	  	console.log(code);
	  	// escape key
	  	if (code == 27){
	  		overlay.removeClass('fadeIn').addClass('fadeOut');
	  	}
	  });

});