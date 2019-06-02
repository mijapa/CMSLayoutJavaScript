$(document).ready(function () {

    $('.button').click(function (evt) {
        evt.preventDefault();

        var id = $(this).data('id');
        console.log(id);
        $('.selected').hide().removeClass('selected');
        $('.' + id).addClass('selected').show();
    });

    $('#site').hide();
    let site = $('#site').html();
    console.log('site: ' + site);

    $('li.change').hide();
    $('.' + site).addClass('selected').show();

    // $('.functions').addClass('selected').show();
    // $('.pages').addClass('selected').show();
});