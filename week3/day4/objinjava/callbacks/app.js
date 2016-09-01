
"user strict";

var fs = require("fs");

fs.readFile("movies.txt", "utf8", function (theError, movieFileContents) {
		var moviesArray = movieFileContents.split("\n");
	    console.log(moviesArray);
});


// ==========================================================================

var fs = require("fs");

fs.readFile("moveis.txt", "utf8", function (theError, movieFileContents) {

	if (theError === null) {
		var moviesArray = movieFileContents.split("\n");
	    console.log(moviesArray);
	}

	else {
		console.log("There is an error.");
		console.log( theError );
	}
	
});


// =======================================================================



var fs = require("fs");

fs.readFile("moveis.txt", "utf8", function (theError, movieFileContents) {

	if (theError === undefined) {
		var moviesArray = movieFileContents.split("\n");
	    console.log(moviesArray);
	}

	else {
		console.log("There is an error.")
		console.log( theError );
	}
	
});




var read = require("read");

var theOptions = { prompt: "What is your name?"};

function greetUser (theError, givenName) {
	console.log(`Hello, ${givenName}.`);
	
	var options2 = { prompt: "What is your birthdate?"};
	function userBirthdate (theError, birthdate) {
     console.log(`This is your birthdate ${givenName}: ${birthdate}`);
    }
	read(options2, userBirthdate);
}

read(theOptions, greetUser);




// var movieFilecontents = File.read("movies.txt");



// =================================================================


function shout (){
  console.log("5 seconds");
}


setTimeout(shout, 5000);


console.log("");
console.log("END OF PROGRAM");
console.log("");


// ================================================================


// "user strict";


function after4Seconds (){
  console.log("4 seconds");
}

setTimeout(after4Seconds, 4000);

function after10Seconds (){
  console.log("10 seconds");
}

setTimeout(after10Seconds, 10000);

function after1Second (){
  console.log("1 second");
}

setTimeout(after1Second, 1000);

console.log("");
console.log("END OF PROGRAM");
console.log("");