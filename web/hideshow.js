$(document).ready(function () {

    $('.button').click(function (evt) {
        evt.preventDefault();

        var id = $(this).data('id');
        console.log(id);
        $('.selected').hide().removeClass('selected');
        $('.' + id).addClass('selected').show();
    });

    // trick do przekazywania atrybutu z żądania do jQuery
    $('#site').hide();
    let site = $('#site').html();
    console.log('site: ' + site);

    $('li.change').hide();

    //show part from request or home part
    if (site != "") {
        $('.selected').hide().removeClass('selected');
        $('.' + site).addClass('selected').show();
    } else {
        $('.home').addClass('selected').show(); //default
        // $('.create').addClass('selected').show(); //testing purpose
        // $('.pages').addClass('selected').show(); //testing purpose

    }
});