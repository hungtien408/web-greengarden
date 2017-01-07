function pageLoad() {
}
(function ($) {
    $(window).load(function () {
        heightbanner();
        fixheight();
        insertlogo();
        scroll_btn();
        heightimg();
        myfunload();
        EqualSizer('.new-box .item'); // add in $(window).load(function () { });
        EqualSizer('.new-box .item .item-name');
        EqualSizer('.library-item'); // add in $(window).load(function () { });
        //window.location.hash = '';
        
        
    $(window).resize(function () {
        heightbanner();
        fixheight();
        insertlogo();
        scroll_btn();
        heightimg();
    });
    $(function () {
        mymap();
        click_menumo();
    });
    $(function () {
        $('#menu a[href*="#"]:not([href="#"])').click(function () {
            if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                if (target.length) {
                    $('html, body').animate({
                        scrollTop: target.offset().top 
                    }, 1000);
                    return false;
                }
            }
            //window.location.hash = '';
        });
    });
    });
})(jQuery);
$(window).bind('resize', function (e) {
    if (window.RT) clearTimeout(window.RT);
    window.RT = setTimeout(function () {
        this.location.reload(false); / false to get page from cache /
    }, 0);
});
//function===============================================================================================
function myfunload() {

    $('#sliderGallery .slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '#sliderGallery .slider-nav'
    });
    $('#sliderGallery .slider-nav').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        asNavFor: '#sliderGallery .slider-for',
        dots: false,
        focusOnSelect: true,
        responsive: [
                   {
                       breakpoint: 665,
                       settings: {
                           slidesToShow: 4,
                       }
                   },
                   {
                       breakpoint: 450,
                       settings: {
                           slidesToShow: 3,
                       }
                   }
        ]
    });
    $(function () {
        $('a[data-modal]').on('click', function () {
            $($(this).data('modal')).modal();
            return false;
        });
    });

   
}


function insertlogo() {
    if ($(window).width() < 992) {
        $('.wrapper-menu').insertBefore('.logo');
    }
    else {
        $('.wrapper-menu').insertAfter('.logo');
    }
}
function heightbanner() {
    var wwinheight = $(window).height();
    if ($(window).width() > 992) {
        $(".carousel-inner").height(wwinheight);
    }
    else {
        $(".carousel-inner").height(wwinheight - 100);
        $('#menu li a').click(function () {
            $('#menu').slideUp();
        });
    }
};
$("#menu li:first-child").addClass("active");
$(".carousel-inner .item").each(function () {
    var n = $(this).attr("data-img");
    $(this).css("background-image", "url('" + n + "')");
})


$.each($('.row'), function () {
    var h = $(this).attr("data-height");
    $(this).css("height", h);
});

function scroll_btn() {
    if ($(window).width() > 992) {
        $('.scroll_cir').on('click', function () {
            $('html, body').animate({
                scrollTop: $('#row2').offset().top
            }, 1000);
        });
    }
    else {
        $('.scroll_cir').on('click', function () {
            $('html, body').animate({
                scrollTop: $('#row2').offset().top - 100
            }, 1000);
        });
    }
}

/******************/
if ($(window).height() <= 992) {
    $('#header').addClass('header-992');
}
/*************************/
var sectionIds = {};

$(".row-nav").each(function () {
    var $this = $(this);
    sectionIds[$this.attr("id")] = $this.first().offset().top + 200;
});


var count2 = 0;
$(window).scroll(function (event) {

    var scrolled = $(this).scrollTop();

    //If it reaches the top of the row, add an active class to it
    $(".row-nav").each(function () {

        var $this = $(this);

        if (scrolled >= $this.first().offset().top) {
            $(".row-nav").removeClass("active");
            $this.addClass("active");
        }
    });

    //when reaches the row, also add a class to the navigation
    for (key in sectionIds) {
        if (scrolled >= sectionIds[key]) {
            $(".nav-btn").removeClass("active");
            var c = $("[data-row-id=" + key + "]");
            c.addClass("active");
        }
    }


    //Check if we've reached the top
    if (scrolled > count2) { count2++; }
    else { count2--; }

    count2 = scrolled;

    if (count2 == 0) {
        $('h1 ,h2').addClass('animationActive');
    } else {
        $('h1 ,h2').removeClass('animationActive');
    }

});

/**************
 IN-NAVIGATION
**************/
$(".nav-btn").click(function () {
    //$(this).addClass("active");
    //$(this).siblings().removeClass("active");

    //var i = $(this).index();

    //var name = $(this).attr("data-row-id");
    //var id = "#" + name;
    //var top = $(id).first().offset().top;
    //if ($(window).width() > 992) {
    //    $('html, body').animate({ scrollTop: top + 'px' }, 1000);
    //}
    //else {
    //    $('html, body').animate({ scrollTop: (top - 100) + 'px' }, 1000);
    //}
});




/**********************************/
$(window).scroll(function () {
    if ($(this).scrollTop() > 400) {
        $('.scroll-to-top').fadeIn();
    } else {
        $('.scroll-to-top').fadeOut();
    }
});

$('.scroll-to-top').on('click', function (e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: 0 }, 800);
    return false;
});



//==================
function mymap() {
    mympp();
    var timeout;
    $(window).resize(function () {
        clearTimeout(timeout);
        setTimeout(function () {
            mympp();
        }, 500);
    });
}
function mympp() {
    $('#mapwrap').remove();
    if ($(window).width() > 768) {
        $('#mapshow').append('<div id="mapwrap"><iframe id="iframe" src="map.aspx" frameborder="0" height="100%" width="100%"></iframe></div>');
    }
}
//=================height-header=====================
function fixheight() {
    if ($(window).height() <= 768 && $(window).width() > 992) {
        $('#header').addClass('header-768');
        $('.header-768').mCustomScrollbar({
            autoHideScrollbar: true,
            theme: "dark-thick",
        });
        $('.header-768').height($(window).height());
    }
}

function click_menumo() {
    $('.wrapper-menu a.menu-mo').click(function () {
        $('#menu').stop(true, false, true).slideToggle(300);
    })
}
function heightimg() {
    var n = $('.utilities-item .utilities-img img').height();
    $('.utilities-content').outerHeight(n);
}
function DoEqualSizer(myclass) {
    var heights = $(myclass).map(function() {
        $(this).height('auto');
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(myclass).height(maxHeight);
};

function EqualSizer(myclass) {
    $(document).ready(DoEqualSizer(myclass));
    window.addEventListener('resize', function() { 
        DoEqualSizer(myclass); 
    });
};

