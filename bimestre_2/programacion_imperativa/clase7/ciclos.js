// Crear una función que pida un valor por parámetro y muestre los 10 números siguientes.
const mostrarPrimerosDiez = (numero) => {
  for (let i = 0; i < 10; i++) {
    console.log(numero++ + 1);
  }
};

mostrarPrimerosDiez(15);

// Imprimir los números entre el 5 y el 20, saltando de tres en tres.
const imprimirNumeros = () => {
  for (let i = 5; i <= 20; i += 3) {
    console.log(i);
  }
};

imprimirNumeros();

// Escribir un programa que muestre la sumatoria de todos los números entre el 0 y el 100
const sumatoriaDeNumeros = () => {
  let x = 0;
  for (let i = 0; i <= 100; i++) {
    x += i;
  }
  return x;
};

let resultado = sumatoriaDeNumeros();
console.log(resultado);

// Dado un número entero positivo, mostrar su factorial. El factorial de un número se obtiene multiplicando todos los números enteros
// positivos que hay entre el 1 y ese número.

const factorial = (numeroPositivo) => {
  let y = 1;
  for (let i = 1; i <= numeroPositivo; i++) {
    y = y * i;
  }
  return y;
};

let result = factorial(4);
console.log(result);
