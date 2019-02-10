$(document).ready(function() {
	
	// $(".left-panel").customScrollbar({preventDefaultScroll: true});

	// скрываем блок через установленный промежуток времени
	setTimeout(function(){
		$('[data-notify-hide]').slideUp(400); 
	}, 2000);
	
	// Скрываем блок по двойному клику
	$('[data-notify-hide]').dblclick(function() {
		 $(this).slideUp(400); 
	});


	CKEDITOR.replace('ckEditor');

});


$('.comment-add__button').on('click', function(e)  {
	e.preventDefault();
	comment = $('.leave-comment-form').children('.textarea');
	if (comment.val()=='') {
		$('.notification__error').fadeIn();
		comment.focus(function(event) {
			$('.notification__error').fadeOut();
		});
	}  else  {
		$('#comment-form').submit();
	}
});

//Map block

function initMap() {

	var zelenograd = {lat: 55.987364, lng: 37.195591};

	myMap = new google.maps.Map(document.getElementById('map'), {

		center: zelenograd,
		zoom: 13,
		styles: [
		    {
		        "featureType": "administrative",
		        "elementType": "labels.text.fill",
		        "stylers": [
		            {
		                "color": "#444444"
		            }
		        ]
		    },
		    {
		        "featureType": "landscape",
		        "elementType": "all",
		        "stylers": [
		            {
		                "color": "#f2f2f2"
		            }
		        ]
		    },
		    {
		        "featureType": "poi",
		        "elementType": "all",
		        "stylers": [
		            {
		                "visibility": "off"
		            }
		        ]
		    },
		    {
		        "featureType": "road",
		        "elementType": "all",
		        "stylers": [
		            {
		                "saturation": -100
		            },
		            {
		                "lightness": 45
		            }
		        ]
		    },
		    {
		        "featureType": "road.highway",
		        "elementType": "all",
		        "stylers": [
		            {
		                "visibility": "simplified"
		            }
		        ]
		    },
		    {
		        "featureType": "road.arterial",
		        "elementType": "labels.icon",
		        "stylers": [
		            {
		                "visibility": "off"
		            }
		        ]
		    },
		    {
		        "featureType": "transit",
		        "elementType": "all",
		        "stylers": [
		            {
		                "visibility": "off"
		            }
		        ]
		    },
		    {
		        "featureType": "water",
		        "elementType": "all",
		        "stylers": [
		            {
		                "color": "#46bcec"
		            },
		            {
		                "visibility": "on"
		            }
		        ]
		    }
		]
	});	//map

	//Markers

	var markerZelenograd = new google.maps.Marker({

		position: zelenograd,

		map: myMap,

		title: 'Зеленоград',

		icon: '../img/map-icon/location-icon.png'

	});
}
