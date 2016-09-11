"user strict";


var read = require("read");


var theQuestions = [
    "What is your name?",
    "What is Canada\'s national animal?",
    "What is converted into alcohol during brewing?",
    "In what year was Prince Andrew born?",
];

function theResponse (theError, theAnswer) {
  console.log("");
  console.log(`Answer: ${theAnswer}`);
 

a += 1;

if (a < theQuestions.length) {
    var options = { prompt: `${theQuestions[a]}`};

  console.log("");
  read(options, theResponse );
}

else {
   colsole.log("");
   console.log("Thanks for playing the quiz.") 
   };
};


var a = 0;

var options =  { prompt: `Questions #${a + 1}: ${theQuestions [a]}` };


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