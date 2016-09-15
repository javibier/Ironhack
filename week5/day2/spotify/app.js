$(document).ready(function () {

	$(".js-fetch-artist").on('click',fetchArtist);

	function fetchArtist (event) {
		console.log("Fetch Artist Click");

		event.preventDefault();

		var artists = $('.js-artists').val();

		$.ajax({
			type: "GET",
			url: `https://api.spotify.com/v1/search?type=artist&query=${artists}`,
			success: showArtist,
			error: handleError
		});


	}

		function showArtist (response) {
			console.log("Success!");
	        console.log(response);

			var artistsArray = response.artists.items;
			console.log(artistsArray);



			artistsArray.forEach(function (theArtist) {
				var html = `
				  <li>
				    <h3> ${theArtist.name} </h3>
				  </li>
                  <img src = ${theArtist.images[1].url}>
                  
				 `;
				$('.js-artists-list').append(html);
				console.log(html);
			});
			
		}


		function handleError (error) {
            console.log("Error!");
            console.log(error.responseText);
		}
});    