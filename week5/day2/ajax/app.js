console.log("We are GO!!!!");

$(document).ready(function () {

	$(".js-fetch-characters").on('click',fetchCharacters);
	$(".js-add-Ironstallion").on('click',addIronstallion);
	$(".js-add-NewCharacter").on('click',addNewCharacter);


	function addNewCharacter (theEvent) {
      theEvent.preventDefault();

      console.log("Add New Character Click");


      var name = $('.js-name').val();
      var occupation = $('.js-occupation').val();
      var weapon = $('.js-weapon').val();


      console.log(`Weapon: ${weapon}`);
      var newCharacter = {
				name: name,
				occupation: occupation,
				weapon: weapon
			};

      $.ajax({
				type: "POST",
				url: "https://ironhack-characters.herokuapp.com/characters",
				data: newCharacter,
				success: updateList,
				error: handleError
	   });			

	}


	function fetchCharacters () {
		console.log("Fetch Characters Click");
		$.ajax({
			type: "GET",
			url: "https://ironhack-characters.herokuapp.com/characters",
			success: showCharacters,
			error: handleError
		});

		function showCharacters (response) {
			var charactersArray = response

			charactersArray.forEach(function (theCharacter) {
				var html = `
				  <li>
				    <h3> ${theCharacter.name} </h3>
				    <h3> ${theCharacter.occupation} </h3>
				    <h3> ${theCharacter.weapon} </h3>
				  </li>
				 `;
				$('.js-characters-list').append(html);
			});
			console.log("Success!");
	        console.log(response);
		}

	}

		function handleError (error) {
            console.log("Error!");
            console.log(error.responseText);
		}

		function addIronstallion (response) {
			console.log("Add Iron Click");
			var addIron = {
				name: "Ironstallion",
				occupation: "Hero",
				weapon: "Shadowmourne"
			};

			$.ajax({
				type: "POST",
				url: "https://ironhack-characters.herokuapp.com/characters",
				data: addIron,
				success: updateList,
				error: handleError
			});

		}
         function updateList(){

        }
});