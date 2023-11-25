// let arr = ["star wars", "totoro", "rocky", "pulp fiction", "la vida es bella"];

// const convertirMAyuscula = (arreglo) => {
//   let nuevoArreglo = [];

//   for (let i = 0; i < arreglo.length; i++) {
//     nuevoArreglo.push(arreglo[i].toUpperCase());
//   }

//   return nuevoArreglo;
// };

// // let res = convertirMAyuscula(arr);
// // console.log(res);

// let arr2 = ["toy story", "finding Nemo", "kung-fu panda", "wally", "fortnite"];

// const agregar = (arreglo1, arreglo2) => {
//   let elementoEliminado = arreglo2.pop();
//   console.log(elementoEliminado);
//   for (let i = 0; i < arreglo2.length; i++) {
//     arreglo1.push(arreglo2[i]);
//   }
//   let x = convertirMAyuscula(arreglo1);
//   return x;
// };

// let y = agregar(arr, arr2);
// console.log(y);

// const asiaScores = [8, 10, 6, 9, 10, 6, 6, 8, 4];
// const euroScores = [8, 10, 6, 8, 10, 6, 7, 9, 5];

// const comparar = (array1, array2) => {
//   for (let i = 0; i < array2.length; i++) {
//     console.log(array1[i] === array2[i]);
//   }
// };

// comparar(asiaScores, euroScores);

// let suma = [-5, 10, 20];
// const sumaArray = (arrayNumeros) => {
//   let a = 0;
//   for (let i = 0; i < arrayNumeros.length; i++) {
//     a += arrayNumeros[i];
//   }
//   return a;
// };

// let b = sumaArray(suma);
// console.log(b);

// let letras = ["h", "o", "l", "a"];

// const join = (str) => {
//   let c = "";
//   for (let i = 0; i < str.length; i++) {
//     c += str[i];
//   }
//   return c;
// };

// let d = join(letras);
// console.log(d);

// let arreglo = [1, 3, 4, 5, 8];
// function imprimirInverso(arr) {
//   for (let i = arr.length - 1; i >= 0; i--) {
//     console.log(arr[i]);
//   }
// }
// console.log(imprimirInverso(arreglo));

let arreglo3 = [1, 3, 4, 5, 10];
function inversor(arr) {
  let ar1 = [];
  for (let i = arr.length - 1; i >= 0; i--) {
    ar1.push(arr[i]);
  }
  return ar1;
}
console.log(
  "array invertido -->",
  inversor(arreglo3),
  "arreglo original: ",
  arreglo3
);
