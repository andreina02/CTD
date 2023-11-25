// Microdesafio 1
function test1(x, y) {
  return y - x;
}

let a = test1(10, 40);
console.log(a);

// Microdesafio 2
function test2(x, y) {
  return x * 2;
  console.log(x);
  return x / 2;
}

let b = test2(10);
console.log(b);

// Crear una función que convierta pulgadas en centímetros.
// Recibe por parámetro pulgadas y retorna su equivalente en centímetros.
const conversor = (pulg) => pulg * 2.54;
let cm = conversor(5);
console.log(cm);

// Crear una función que recibe un string y lo convierte en una URL.
const conversorTexto = (texto) => "http://www." + texto + ".com";
let resultado = conversorTexto("pepito");
console.log(resultado);

// Crear una función que recibe un string y devuelve la misma frase pero con admiración.
const devolverString = (texto1) => texto1 + "!";
let resultado1 = devolverString("Andreina");
console.log(resultado1);

// Crear una función que calcule la edad de los perros, considerando que 1 año
// para nosotros son 7 de ellos.
const edadperro = (edadHumano) => edadHumano * 7;
let perroEdad = edadperro(5);
console.log(perroEdad);

// Crear una función que calcule el valor de tu hora de trabajo, introduciendo tu
// sueldo mensual como parámetro.
const valorHoraTrabajo = (salario) => salario / 40;
let horaTrabajo = valorHoraTrabajo(10000);
console.log(horaTrabajo);

// Crear la función calculadorIMC() que reciba la altura en metros y el peso en
// kilogramos y calcule el IMC de una persona.
const calculadorIMC = (peso, altura) => peso / (altura * altura);
let IMC = calculadorIMC(55, 1, 55);
console.log(IMC);

// Crear una función que recibe un string en minúscula, lo convierta a mayúsculas y lo retorne.
let textoMayuscula = function (minuscula) {
  return minuscula.toUpperCase();
};
let minus = textoMayuscula("tengo calor");
console.log(minus);

// Crear una función que recibe un parámetro y devuelve qué tipo de dato es ese parámetro.
let tipoDato = function (parametro) {
  return typeof parametro;
};
let typeData = tipoDato("hola");
console.log(typeData);

// Crear una función que le pasamos el radio de un círculo y nos devuelve la circunferencia.
let circunferencia = function (radio) {
  return 2 * radio * Math.PI;
};
let circunf = circunferencia(5);
console.log(circunf);
