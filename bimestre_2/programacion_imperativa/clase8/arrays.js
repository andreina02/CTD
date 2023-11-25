// let numbers = [22, 33, 54, 66, 72];
// console.log(numbers[numbers.length]);

// let grupoDeAmigos = [
//   "Harry",
//   "Ron",
//   "Hermione",
//   "Spiderman",
//   "Hulk",
//   "Ironman",
//   "Penélope Glamour",
//   "Pierre Nodoyuna",
//   "Patán",
// ];
// console.log(grupoDeAmigos[5]);

// let str = "un string cualquiera";
// let arrayAleatorio = [
//   "Digital",
//   "House",
//   "true",
//   "string",
//   "123",
//   "false",
//   "54",
//   str,
// ];
// console.log(arrayAleatorio[arrayAleatorio.length - 1]);

let peliculas = [
  "star wars",
  "totoro",
  "rocky",
  "pulp fiction",
  "la vida es bella",
];

const mayuscula = (array) => {
  let resultado = [];

  for (let i = 0; i < array.length; i++) {
    resultado.push(array[i].toUpperCase());
  }

  return resultado;
};

let ejecucion = mayuscula(peliculas);
console.log(ejecucion);

let arr = ["pepe", "maria", "carmen", "juancito"];

const convertirMAyuscula = (arreglo) => {
  let nuevoArreglo = [];

  for (let i = 0; i < arreglo.length; i++) {
    nuevoArreglo.push(arreglo[i].toUpperCase());
  }

  return nuevoArreglo;
};

let res = convertirMAyuscula(arr);
console.log(res);
