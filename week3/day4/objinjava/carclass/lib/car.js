"use strict";

class Car {
	constructor (model, noise, wheel) {
		this.model = model;
	    this.noise = noise;
	    this.wheel = wheel
	}

	makeNoise () {
		console.log( `The ${this.model} model sounds like: ${this.noise} and has ${this.wheel}` );	
	}

    takingoff () {
		console.log( this.noise.toUpperCase() );	
	}

	wheels () {
		console.log( `It has ${this.wheel}` );
	}	
}

module.exports = Car;