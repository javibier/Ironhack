"use strict";


var read = require("read");


var Question = require("./lib/question.js");
var Quiz = require("./lib/quiz.js");


var question1 = new Question(1,"What is your name?","Javier");
var question2 = new Question(2,"What is Canada\'s national animal?","Beaver");
var question3 = new Question(3,"What is converted into alcohol during brewing?","Water");
var question4 = new Question(4,"In what year was Prince Andrew born?","1979");

var theTest = new Quiz ();

theTest.nextQuestion( question1 );
theTest.nextQuestion( question2 ); 
theTest.nextQuestion( question3 ); 
theTest.nextQuestion( question4 );   


function theResponse (theError, input) {
  theTest.answer(input);

  if (theTest.theEnd() ) {
    console.log ("The End");
  }

  else {
     options.prompt = theTest.currQuest ();
     read(options, theResponse);
     }
  }


var options =  { prompt: theTest.currQuest() };


read(options, theResponse );





// var options = { prompt: "What is your name?"};

// function greetUser (theError, givenName) {
// 	console.log("");
// 	console.log(`Hello, ${givenName}.`);
// 	console.log("Answer Recorded");

//     var options2 = { prompt: "What is Canada\'s national animal?"};

//     function question2 (theError2, firstquest) {
//       console.log("");
// 	  console.log(`Hello, ${givenName}. The national animal of Canada is ${firstquest}.`);
// 	  console.log("Second answer Recorded");
// }
    
//     read(options2, question2);

// }

// read(options, greetUser); // this initiates the asking of the question
// // greetUser is the call back function

// console.log("");
// console.log("This is the last line.");