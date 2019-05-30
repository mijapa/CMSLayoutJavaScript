$(document).ready(function(){

    $('.button').click(function(evt){
        evt.preventDefault();

        var id = $(this).data('id');
        console.log(id);
        $('.selected').hide().removeClass('selected');
        $('.' + id).addClass('selected').show();
    });
    $('li.change').hide();
    // $('.home').addClass('selected').show();
    $('.pages').addClass('selected').show();
});