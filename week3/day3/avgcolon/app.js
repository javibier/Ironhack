// // var avgNum = require("./lib/averagenum.js");

// var number = '80:70:90:100';

// var nocolonnumstring = number.replace(/:/g,",");

// var nocolonnumstring.reduce(add,0);

// function add(a, b) {

// 	return a + b;

// }



// console.log(number);

// console.log(nocolonnumstring);



// var sum = [1, 2, 3].reduce(add, 0);

// function add(a, b) {

//     return a + b;

// }

// console.log(sum); // 6

var number = '80:70:90:100';

function sumDigits(number) {
  var str = number.toString();
  var sum = 0;

  for (var i = 0; i < str.length; i++) {
    sum += parseInt(str.charAt(i), 10);
  }

  return sum;
}

console.log(sum);