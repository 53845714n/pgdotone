var mySwiper = new Swiper ('.swiper-container', {
	pagination: '.swiper-pagination',
    slidesPerView: 3,
    paginationClickable: true,
    autoplay: 2500,
    spaceBetween: 30
});

var swiper = new Swiper('.swiper-container-pia', {
    pagination: '.swiper-pagination',
    paginationClickable: true,
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    // Disable preloading of all images
    preloadImages: false,
    // Enable lazy loading
    lazyLoading: true,
    autoplay: 2500,
    spaceBetween: 30,
    loop: true,
    effect: 'fade'
});
var swiper = new Swiper('.swiper-container-mont', {
    pagination: '.swiper-pagination',
    paginationClickable: true,
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    // Disable preloading of all images
    preloadImages: false,
    // Enable lazy loading
    lazyLoading: true,
    autoplay: 2500,
    spaceBetween: 30,
    loop: true,
    effect: 'fade'
});
var swiper = new Swiper('.swiper-container-tos', {
    pagination: '.swiper-pagination',
    paginationClickable: true,
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    // Disable preloading of all images
    preloadImages: false,
    // Enable lazy loading
    lazyLoading: true,
    autoplay: 2500,
    spaceBetween: 30,
    loop: true,
    effect: 'fade'
});
var swiper = new Swiper('.swiper-container-lig', {
    pagination: '.swiper-pagination',
    paginationClickable: true,
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev',
    // Disable preloading of all images
    preloadImages: false,
    // Enable lazy loading
    lazyLoading: true,
    autoplay: 2500,
    spaceBetween: 30,
    loop: true,
    effect: 'fade'
});
        
$('.popup-gmaps').magnificPopup({
    disableOn: 700,
    type: 'iframe',
    mainClass: 'mfp-fade',
    removalDelay: 160,
    preloader: false,
    fixedContentPos: false,
    callbacks: {
        open: function () {
            new YT.Player('player', {
                events: {
                    'onStateChange': onPlayerStateChange
                }
            });
        }
    }
});

function onPlayerStateChange(event) {
    switch (event.data) {
        case YT.PlayerState.ENDED:
            $.magnificPopup.close();
            break;
    }
}

$('a[data-rel^=lightcase]').lightcase();

$("div.swiper-slide").click(function() {
	var bed     = $(this).children('img').attr('data-bed');
	var bath    = $(this).children('img').attr('data-bath');
	var surface = $(this).children('img').attr('data-surface');
	var roof    = $(this).children('img').attr('data-roof');
	var total = parseFloat(surface) + parseFloat(roof);
	var round_total = Math.round(total * 100) / 100;

    console.log($(this).children('img').attr('src'));

	$("div.swiper-slide").addClass('yes-filter');
	$(this).removeClass('yes-filter');
	$('.img-swiper').addClass('animated fadeOut');

	$('.img-swiper').attr('src', $(this).children('img').attr('src'));
    $('a[data-rel="lightcase"]').attr('href', $(this).children('img').attr('src'));

	$('.img-swiper').removeClass('animated fadeOut').addClass('animated fadeIn');

	if (bed != null && bath != null && surface != null && roof != null) {
		$(".h3-bed").text(bed);
		$(".h3-bath").text(bath);
		$(".h3-surface").text(surface + ' m2');
		$(".h3-roof").text(roof + ' m2');
		$(".h3-total").text(round_total + ' m2');
	}
});