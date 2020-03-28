$(function(){
  $('#favorite').on('click',function(){
    console.log('click');

    var userId = 1;
    $.ajax({ 
      url: 'like',
      type: 'PATCH',
      data: { user_id: userId },
      dataType: 'json'
    })
    .done(function(message){
      console.log("done");
    });
  });
});