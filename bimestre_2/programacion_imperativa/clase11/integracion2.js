// // A partir de el siguiente array de edades nos solicitan realizar lo siguiente:

const edades = [11, 12, 15, 18, 25, 22, 10, 33, 18, 5];

// // a) Obtener en un nuevo array las edades menores a 18.
// const edadMenor18 = (array) => {
//   let edadesMenores18 = [];
//   for (let i = 0; i <= array.length; i++) {
//     if (array[i] < 18) {
//       edadesMenores18.push(array[i]);
//     }
//   }
//   return edadesMenores18;
// };

// let a = edadMenor18(edades);
// console.log(a);

// // b) Obtener en un nuevo array las edades mayor o igual a 18.
// const edadMayor18 = (array) => {
//   let edadesMayores18 = [];
//   for (let i = 0; i <= array.length; i++) {
//     if (array[i] >= 18) {
//       edadesMayores18.push(array[i]);
//     }
//   }
//   return edadesMayores18;
// };

// let b = edadMayor18(edades);
// console.log(b);

// // c) Obtener en un nuevo array las edades igual a 18.
// const edadIgual18 = (array) => {
//   let edadesIguales18 = [];
//   for (let i = 0; i <= array.length; i++) {
//     if (array[i] == 18) {
//       edadesIguales18.push(array[i]);
//     }
//   }
//   return edadesIguales18;
// };

// let c = edadIgual18(edades);
// console.log(c);

// // d) Obtener el menor.

// // e) Obtener el mayor.

// // f) Obtener el promedio de edades.
// const promedio = (array) => {
//   let suma = 0;
//   for (let i = 0; i < array.length; i++) {
//     suma += array[i];
//   }
//   return suma / array.length;
// };
// let f = promedio(edades);
// console.log(f);

// g) Incrementar en 1 todas las edades.

const incrementarEdades = function (array) {
  for (let i = 0; i < array.length; i++) {
    array[i] += 1;
  }
};

console.log(`arreglo Edades Antes: [${edades}]`);
incrementarEdades(edades);
console.log(`arreglo Edades Después: [${edades}]`);

// A partir de este array trabajaremos sobre los siguientes enunciados, resolviendo de la forma que nos parezca más adecuada
const arrayCuentas = [
  {
    titular: "Arlene Barr",
    estaHabilitada: false,
    saldo: 3253.4,
    edadTitular: 33,
    tipoCuenta: "sueldo",
  },
  {
    titular: "Roslyn Torres",
    estaHabilitada: false,
    saldo: 3229.45,
    edadTitular: 27,
    tipoCuenta: "sueldo",
  },
  {
    titular: "Cleo Lopez",
    estaHabilitada: true,
    saldo: 1360.19,
    edadTitular: 34,
    tipoCuenta: "corriente",
  },
  {
    titular: "Daniel Malone",
    estaHabilitada: true,
    saldo: 3627.12,
    edadTitular: 30,
    tipoCuenta: "sueldo",
  },
  {
    titular: "Ethel Leon",
    estaHabilitada: true,
    saldo: 1616.52,
    edadTitular: 34,
    tipoCuenta: "sueldo",
  },
  {
    titular: "Harding Mitchell",
    estaHabilitada: true,
    saldo: 1408.68,
    edadTitular: 25,
    tipoCuenta: "corriente",
  },
];

// Obtener un nuevo array de cuentas cuyas edades sean menores a 30.

const cuentasEdadMenor30 = (arreglo) => {
  let nuevoArreglo = [];
  for (let i = 0; i < arreglo.length; i++) {
    if (arreglo[i].edadTitular < 30) {
      nuevoArreglo.push(arreglo[i]);
    }
  }
  return nuevoArreglo;
};

// let aa = cuentasEdadMenor30(arrayCuentas);
// console.log(aa);

// Obtener un nuevo array de cuentas cuyas edades sean mayor o igual a 30.
// Obtener un nuevo array de cuentas cuyas edades sean menores o igual a 30.
// Obtener la cuenta con el titular de la misma más joven.
// Obtener un array con las cuentas habilitadas.
// Obtener un array con las cuentas deshabilitadas.
// Obtener la cuenta con el menor saldo.
// Obtener la cuenta con el mayor saldo.
