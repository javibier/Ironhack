$(document).ready(function () {

	$(".js-fetch-track").on('click',fetchTrack);
	$(".js-song-preview").on('click',playAudio);


	function fetchTrack (theEvent) {
		console.log("Fetch track Click");

		event.preventDefault();

		var tracks = $('.js-tracks').val();
		console.log(tracks)

		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/search?type=track&query=${tracks}`,
			success: showTrack,
			error: handleError
		});
	}

		function showTrack (response) {
			console.log("Success!");
	        console.log(response);

			var first_tracks = response.tracks.items[0];
			var albumCover = first_tracks.album.images[0].url
			var albumTitle = first_tracks.album.name
			var albumArtist = first_tracks.artists[0].name
			var songPreview = first_tracks.preview_url
			console.log(songPreview)

			$('.js-album-cover').html(`<img src="${albumCover}">`)
			$('.js-album-title').html(albumTitle)
			$('.js-album-artist').html(albumArtist)
			//$('.js-song-preview').html(`<audio src="${songPreview}">`)
			$('#audio').attr('src',songPreview)

			
		};

			function handleError (error) {
			    console.log("Error!");
			    console.log(error.responseText);
		    }

        function playAudio () {

           $('#audio').trigger('play');
        };   
});
