window.App = window.App || {};

window.App.updateCartAmount = function(value) {
	if (value) {
		$('#nav-bar li.cart-indicator').html(value);
	}
};

$(function(){

	$.ajax({
		url: '/page_caching_info',
		dataType: 'json',
		success: function(data){
			window.App.updateCartAmount(data.cart_amount);
		}
	});

});

