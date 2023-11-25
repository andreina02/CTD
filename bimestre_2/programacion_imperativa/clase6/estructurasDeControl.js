let edad = -4;
if (edad < 18 && edad > 0) {
  console.log("No puede pasar al bar.");
} else if (edad < 21) {
  console.log("Puede pasar al bar, pero no puede tomar alcohol.");
} else if (edad < 0) {
  console.log("Error, edad inválida. Por favor ingrese un número válido.");
} else if (edad == 21) {
  console.log(
    "Bienvenido y felicitaciones por haber llegado a la mayoria de edad."
  );
} else {
  console.log("Puede pasar al bar y tomar alcohol.");
}

if (edad % 2 != 0) {
  console.log("¿Sabías que tu edad es impar?");
}

function totalAPagar(vehiculo, litrosConsumidos) {
  let pago = 0;
  switch (vehiculo) {
    case "coche":
      pago = pago + 86 * litrosConsumidos;
      break;
    case "moto":
      pago = pago + 70 * litrosConsumidos;
      break;
    case "autobús":
      pago = pago + 55 * litrosConsumidos;
      break;
  }

  if (litrosConsumidos >= 0 && litrosConsumidos <= 25)
    return (pago = pago + 50);

  if (litrosConsumidos > 25) {
    return (pago = pago + 25);
  }

  return pago;
}

let total = totalAPagar("", 5);
console.log(total);

function localSandwiches(
  base,
  pan,
  queso,
  tomate,
  lechuga,
  cebolla,
  mayonesa,
  mostaza
) {
  let x = 0;
  if (base == "pollo") {
    x = x + 150;
  } else if (base == "carne") {
    x = x + 200;
  } else if (base == "veggie") {
    x = x + 100;
  } else {
    return "Ingrese un producto valido";
  }

  if (pan == "blanco") {
    x += 50;
  } else if (pan == "negro") {
    x += 60;
  } else if (pan == "s/gluten") {
    x += 75;
  } else {
    return "Ingrese un producto valido";
  }

  if (queso == true) {
    x += 20;
  }

  if (tomate == true) {
    x += 15;
  }

  if (lechuga == true) {
    x += 10;
  }

  if (cebolla == true) {
    x += 15;
  }

  if (mayonesa == true) {
    x += 5;
  }

  if (mostaza == true) {
    x += 5;
  }

  return x;
}

let totalSandwiches = localSandwiches(
  "pollo",
  "negro",
  false,
  false,
  true,
  false,
  true,
  true
);
console.log(`El total a pagar es ${totalSandwiches}`);

let numeroSecreto = (numero) => {
  const min = 1;
  const max = 10;

  let x = Math.floor(Math.random() * (max - min + 1) + min);
  let y =
    numero == x
      ? "felicidades"
      : `Sigue intentando, numero secreto ${x}, numero introducido ${numero}`;
  //"Sigue intentando";
  return y;
};

let resultado = numeroSecreto(5);
console.log(resultado);

let abrirParacaidas = (altura, velocidad) => {
  if (velocidad < 1000 && altura >= 2000 && altura < 3000) {
    return console.log("abrir paracaidas");
  } else {
    return console.log("NO abrir paracaidas");
  }
};

let abrir = abrirParacaidas(3001, 999);
console.log(abrir);

function traductorCondicional(palabra) {
  switch (palabra) {
    case "casa":
      console.log("house");
      break;
    case "perro":
      console.log("dog");
      break;
    case "pelota":
      console.log("ball");
      break;
    case "arbol":
      console.log("tree");
      break;
    case "genio":
      console.log("genius");
      break;
    default:
      console.log("palabra incorrecta");
  }
}

let resuldadoPalabra = traductorCondicional("arbol");
console.log(resuldadoPalabra);

function valoracionPelicula(valoracion) {
  switch (valoracion) {
    case "Muy mala":
      console.log(
        "Calificaste la película como Muy Mala. Lo lamentamos mucho. Muchas gracias por tu visita"
      );
      break;
    case "Mala":
      console.log(
        "Calificaste la película como Mala. Lo lamentamos mucho. Muchas gracias por tu visita"
      );
      break;
    case "Mediocre":
      console.log(
        "Calificaste la película como Mediocre. Lo lamentamos mucho. Muchas gracias por tu visita"
      );
      break;
    case "Buena":
      console.log(
        "Nos alegramos de que te haya gustado. Muchas gracias por tu visita"
      );
      break;
    case "Muy buena":
      console.log(
        "Nos alegramos de que te haya gustado. Muchas gracias por tu visita"
      );
      break;
    default:
      console.log("Ingresaste un valor inválido");
  }
}

let resultadoValoracion = valoracionPelicula("Buena");
console.log(resultadoValoracion);
