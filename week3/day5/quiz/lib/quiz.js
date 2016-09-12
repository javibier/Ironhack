"use strict";

class Quiz {
    constructor () {
       this.question = [];
       this.currentCount = 0;
    }

nextQuestion (nextQuest) {
	this.question.push(nextQuest);
}

currQuest () {
	var count = this.currentCount;
	var currQuest = this.question [count];
	return currQuest.ques_text;

}

answer (input) {
	var count = this.currentCount;
	var currQuest = this.question [count];

	if (input.toLowerCase() === currQues.answer.toLowerCase()) {
		console.log("You have answered correctly");
		console.log("");

		this.currentCount += 1;

		return true;
	}

	else {
		console.log("Wrong answer");
		console.log("");

		return false;
	}
  }

  theEnd () {
  	if (this.currentCount >= this.question.length){
  		return true;
  	}
  	else {
  		return false;
  	}
  }
}


module.exports = Quiz;