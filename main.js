var frase = prompt ("Escribe una frase");

var veces = prompt ("cuantas veces quieres que se repita?");
	var times = Number(veces);

for (var i = 0; i < times; i++){
	console.log(frase);
}



/*

var number = prompt("Escribe un numero");
var first = Number(number);

var number = prompt("escbribe otro numero");
var second = Number(number);

var operacion = prompt("Escribe la operacion que desea");


switch(operacion){
  case "suma":
    var total = first + second;
	console.log(total);
	break;
  case "resta":
    var total = first - second;
	console.log(total);
	break;
  case "multiplicacion":
    var total = first * second;
	console.log(total);
	break;
  case "division":
    var total = first / second;
	console.log(total);
	break;
  default:
    console.log("Intenta de nuevo");
    break;
} */