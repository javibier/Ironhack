// var dymitri = {
// 	name: "Dymitri",
// 	noise: "Huff",
// 	makeNoise: function () {
// 		console.log( this.name + " says: " + this.noise );
// 	},
// 	shout: function () {
// 		console.log( this.noise.toUppercase() );
// 	}
// };

// dymitri.makeNoise();
// dymitri.shout();


// var chewie = {
// 	name: "chewie",
// 	noise: "Woff",
// 	makeNoise: function () {
// 		console.log( this.name + " says: " + this.noise );
// 	},
// 	shout: function () {
// 		console.log( this.noise.toUppercase() );
// 	}
// };

// chewie.makeNoise();
// chewie.shout();

// =====================================================================


// var Animal = require(".lib/animal.js");

// var dymitri = new Animal("Dymitri", "Huff");

// dymitri.makenoise();
// dymitri.shout();

// var chewie = new Animal("Chewie", "Woof");

// chewie.makenoise();
// chewie.shout();

// ======================================================================


"use strict";

var Animal = require("./lib/animal.js");

var dymitri = new Animal("Dymitri", "Huff");

dymitri.makeNoise();
dymitri.shout();

var chewie = new Animal("Chewie", "Woof");

chewie.makeNoise();
chewie.shout();