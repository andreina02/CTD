// Ejercicio 1

// Realizar una función llamada restarPares que reciba por parámetro dos valores numéricos.
// Si ambos números recibidos son pares entonces se deberá retornar el resultado de restarle al primer parámetro el segundo.
// Si alguno o los dos no son pares , se deberá retornar un string que diga “Lo siento, uno o mas parámetros no son pares”

const restarPares = (num1, num2) => {
  if (num1 % 2 === 0 && num2 % 2 === 0) {
    return num1 - num2;
  } else if (num1 % 2 !== 0 || num2 % 2 !== 0) {
    return "Lo siento, uno o mas parámetros no son pares";
  }
};

let resultado = restarPares(2, 3);
console.log(resultado);

// Ejercicio 2

// Debemos poder controlar el acceso a un recital de música para una determinada persona. Para eso, debemos realizar una función
// que reciba dos parámetros:
// La edad de la persona, Number
// Si tiene o no, el ticket de entrada , booleano
// La función deberá evaluar las siguientes condiciones y retornar en cada caso lo que se pida:
// Si tiene entrada y es mayor o igual de 18 años: retorna un valor booleano true.
// Si tiene entrada pero es menor de 18 años: retorna un string que diga “Sólo puedes acceder con un adulto acompañante”.
// Si no tiene entrada: retorna un booleano false.

const controlarAcceso = (numero, entrada) => {
  if (numero >= 18 && entrada === true) {
    return true;
  } else if (numero < 18 && entrada === true) {
    return "Sólo puedes acceder con un adulto acompañante";
  } else if (entrada === false) {
    return false;
  }
};

let acceso = controlarAcceso(25, true);
console.log(acceso);

// Ejercicio 3

// Dado el siguiente arreglo de objetos. Realizar una función que reciba un array como parámetro,y lo recorra para filtrar
// los productos que sean de tipo “tecnologia” y que su precio sea mayor o igual a 50000, la función deberá retornar un
// nuevo arreglo con los productos que cumplan con las condiciones antes mencionadas.

let productos = [
  {
    producto: "remera",
    tipo: "indumentaria",
    precio: 2100,
  },
  {
    producto: "notebook",
    tipo: "tecnologia",
    precio: 200000,
  },
  {
    producto: "celular",
    tipo: "tecnologia",
    precio: 27000,
  },
  {
    producto: "protector solar",
    tipo: "cosmetica",
    precio: 2500,
  },
  {
    producto: "pantalon",
    tipo: "indumentaria",
    precio: 7500,
  },
  {
    producto: "tablet",
    tipo: "tecnologia",
    precio: 60000,
  },
];

const fitrarProducto = (arreglo) => {
  let tecnologia = [];
  for (let i = 0; i < arreglo.length; i++) {
    if (arreglo[i].tipo === "tecnologia" && arreglo[i].precio >= 50000) {
      tecnologia.push(arreglo[i]);
    }
  }
  return tecnologia;
};

let productoTecnologia = fitrarProducto(productos);
console.log(productoTecnologia);
