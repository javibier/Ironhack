// function Animal (name, noise) {
// 	this.name = name;
// 	this.name = noise;
// }

// Animal.prototype.makenoise = finction () {
// 	console.log( this.name + "says: " + this.noise );

// };

// Animal.prototype.shout = finction () {
// 	console.log( this.noise.toUppercase() );

// };

// module.exports = Animal;



// +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// "use strict";

// class Animal {
// 	constructor (name, noise) {
// 		this.name = name;
// 	    this.name = noise;
// 	}

// 	makeNoise () {
// 		console.log( this.name + "says: " + this.noise );	
// 	}

//     shout () {
// 		console.log( this.noise.toUppercase() );	
// 	}	
// }

// module.exports = Animal;

// ========================================================================

"use strict";

class Animal {
	constructor (name, noise) {
		this.name = name;
	    this.noise = noise;
	}

	makeNoise () {
		console.log( `${this.name} says: ${this.noise}` );	
	}

    shout () {
		console.log( this.noise.toUpperCase() );	
	}	
}

module.exports = Animal;