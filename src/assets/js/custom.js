/**
 * Main JS file for BlogInn behaviours
 */

// Responsive video embeds
var videoEmbeds = [
	'iframe[src*="youtube.com"]',
	'iframe[src*="vimeo.com"]'
];
reframe(videoEmbeds.join(','));

// Menu panel toggle
var menuToggle = document.querySelectorAll('.menu-toggle');
if (menuToggle) {
	for (var i = 0; i < menuToggle.length; i++) {
		menuToggle[i].addEventListener('click', function (e) {
			document.body.classList.toggle('menu--opened');
			e.preventDefault();
		});
	}
}

// Members panel toggle
var membersToggle = document.querySelectorAll('.member-panel-toggle');
if (membersToggle) {
	for (var i = 0; i < membersToggle.length; i++) {
		membersToggle[i].addEventListener('click', function (e) {
			document.body.classList.remove('menu--opened');
			document.body.classList.toggle('member--panel--opened');
			e.preventDefault();
		});
	}
}

// Gallery adjustments
var images = document.querySelectorAll('.kg-gallery-image img');
images.forEach(function (image) {
	var container = image.closest('.kg-gallery-image');
	var width = image.attributes.width.value;
	var height = image.attributes.height.value;
	var ratio = width / height;
	container.style.flex = ratio + ' 1 0%';
});

// Scroll to top
document.getElementById('top-link').addEventListener('click', function (e) {
	document.querySelector('.site-nav').scrollIntoView({ behavior: 'smooth' });
	e.preventDefault();
});
