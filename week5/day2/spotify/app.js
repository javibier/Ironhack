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
				var artistId = theArtist.id

				var html = `
				  <li>
				    <h3> ${theArtist.name} </h3>
				  </li>
                  <img src = ${theArtist.images[1].url}>
                  <br>
                  <button class= ".js-album-search"
                  data="${artistId}">
                  ${theArtist.name}</button>     
				 `;
				$('.js-artists-list').append(html);
				console.log(html);
			});

			function handleError (error) {
			    console.log("Error!");
			    console.log(error.responseText);
		    }
		}	

				$(".js-album-search").on('click',searchAlbum);

				function searchAlbum (theEvent) {
					console.log("Fetch Album Detail")

					event.preventDefault();

	                var btn = theEvent.currentTarget;

	                var albumId = $(btn).data()
					
					$.ajax({
					  type: "GET",
					  url: `https://api.spotify.com/v1/search?type=artist&query=${albumId}/albums`,
					  success: showAlbum,
					  error: handleError
					});
				}

					function showAlbum (data) {
						console.log("Success!");
				        console.log(response);

						var albumArray = response.artists.items;
						console.log(albumArray);

						response.artists.items.forEach(function (theArtist) {
						  var secondsearch = `
							  <li>
							    <h3> ${theArtist.album} </h3>
							  </li>
		                  
						      `;
							$('.js-album-list').append(secondsearch);
							console.log(secondsearch);	
						});
					}

					function handleError (error) {
			            console.log("Error!");
			            console.log(error.responseText);
					}

});   
