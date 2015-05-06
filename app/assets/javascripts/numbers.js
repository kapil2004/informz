$(function(){
  
  $('.numbers').each(function(n) {
    var num = $(this).data('num');
    var _this = $(this);
    
    $.ajax('/numbers/fizzbuzz', {
      data: {num: num},
      // dataType: 'text',
      method: 'GET',
      success: function(result) {
        alert(result);
        $(_this).find('.fizzbuzz').text(result);
      }
    });
  });
  
});