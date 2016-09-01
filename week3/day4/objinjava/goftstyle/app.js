"user strict";

var fs = require('fs');

fs.readFile("lib/json.parse", 'utf8', function (theError, jsoncontent) {
	
    if (theError === null) {
       var episodes = JSON.parse(jsoncontent);

       var epsort = episodes.sort(function(a, b) {
           return a.episode_number-b.episode_number
       });

       epsort.forEach(function(episodes) {

       var rating = Math.round(episodes.rating);
       // console.log(rating);

       
      
       if (rating === 9) {
         newRating = (`*********`)
         // console.log(newRating)
       }

       else if (rating === 8) {
        newRating = (`********`)
        // console.log(newRating)  
       }

       console.log(`Title: ${episodes.title} ${episodes.episode_number}`);
       console.log(episodes.description);
       console.log(`Rating: ${episodes.rating} ${newRating}`);
       // console.log("")
       // console.log(episodes[1])

	     });
    }

    else {
    	console.log("There is an error.");
    	console.log("");
		  console.log(theError);
    };

    

   
});

console.log("=======================================================================")

var fs = require('fs');

fs.readFile("lib/json.parse", 'utf8', function (theError, jsoncontent) {
  
    if (theError === null) {
       var episodes = JSON.parse(jsoncontent);

       var epfilter = episodes.filter(function (episode) {
           return episode.rating >= 8.5
       });

       var epsort = epfilter.sort(function(a, b) {
           return a.episode_number-b.episode_number
       });

       
       epsort.forEach(function(episodes) {

       var rating = Math.round(episodes.rating);
       // console.log(rating);

       
      
       if (rating === 9) {
         newRating = (`*********`)
         // console.log(newRating)
       }

       else if (rating === 8) {
        newRating = (`********`)
        // console.log(newRating)  
       }

       console.log(`Title: ${episodes.title} ${episodes.episode_number}`);
       console.log(episodes.description);
       console.log(`Rating: ${episodes.rating} ${newRating}`);
       // console.log("")
       // console.log(episodes[1])

       });
    }

    else {
      console.log("There is an error.");
      console.log("");
      console.log(theError);
    };

    

   
});