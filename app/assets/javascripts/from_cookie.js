window.App = window.App || {};

window.App.fromCookie =  {

  isNumeric: function(input) {
    return (input - 0) == input && input.length > 0;
  },

  udpateDom: function(){
    var currentUserId = $.cookie('current_user_id'),
      cartAmount = $.cookie('cart_amount');

    if(App.fromCookie.isNumeric(currentUserId)){
      $('#nav-bar li.logout').show();
      $('#nav-bar li.account').show();
      $('#nav-bar li.login').hide();
    } else {
      $('#nav-bar li.logout').hide();
      $('#nav-bar li.account').hide();
      $('#nav-bar li.login').show();
    }

    $('#nav-bar li.cart-indicator').html(cartAmount).show();
  }
};


$(function(){

  window.App.fromCookie.updateDom();

});
