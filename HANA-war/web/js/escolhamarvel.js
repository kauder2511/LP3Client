$(window).ready(function () {
    setTimeout(function () {
        var $container = $('.icon-list').isotope({
            layoutMode: 'masonry',
            itemSelector: '.icon'
        });

        $('.icon').each(function (i) {
            var self = $(this);
            setTimeout(function () {
                $(self).addClass('shown');
            }, i * 100);
        });

        $('.icon').on('click', function () {
            $('.icon').removeClass('active').addClass('inactive');
            $(this).removeClass('inactive').addClass('active');
        });
    }, 600);
});