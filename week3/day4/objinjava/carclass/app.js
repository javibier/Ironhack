"use strict";

var Car = require("./lib/car.js");

var ferrari = new Car("Ferrari", "Brommmm", "4 Michelins");

ferrari.makeNoise();
ferrari.takingoff();
ferrari.wheels();

var corvette = new Car("Corvette", "Vrommmm", "4 Goodyears");

corvette.makeNoise();
corvette.takingoff();
corvette.wheels();

var camaro = new Car("Camaro", "Phsssss", "4 Firestones");

camaro.makeNoise();
camaro.takingoff();
camaro.wheels();
