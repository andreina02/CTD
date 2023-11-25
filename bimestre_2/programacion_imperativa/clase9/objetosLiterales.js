let arrayCuentas = [
  {
    nroCuenta: 5486273622,
    tipoDeCuenta: "Cuenta Corriente",
    saldoEnPesos: 27771,
    titularCuenta: "Abigael Natte",
  },
  {
    nroCuenta: 1183971869,
    tipoDeCuenta: "Caja de Ahorro",
    saldoEnPesos: 8675,
    titularCuenta: "Ramon Connell",
  },
  {
    nroCuenta: 9582019689,
    tipoDeCuenta: "Caja de Ahorro",
    saldoEnPesos: 27363,
    titularCuenta: "Jarret Lafuente",
  },
  {
    nroCuenta: 1761924656,
    tipoDeCuenta: "Cuenta Corriente",
    saldoEnPesos: 32415,
    titularCuenta: "Ansel Ardley",
  },
  {
    nroCuenta: 7401971607,
    tipoDeCuenta: "Cuenta Unica",
    saldoEnPesos: 18789,
    titularCuenta: "Jacki Shurmer",
  },
];
// podes continuar tu codigo a partir de aca!

let consultar = function (titular) {
  for (let i = 0; i < this.clientes.length; i++) {
    if (this.clientes[i].titularCuenta === titular) {
      return this.clientes[i];
    }
  }
  return "Lo siento, cliente no encontrado";
};

let depositoFn = function (titular, cantidad) {
  let cliente = this.consultarCliente(titular);

  if (typeof cliente === "object") {
    cliente.saldoEnPesos += cantidad;
    return `Deposito realizado, su nuevo saldo es ${cliente.saldoEnPesos}`;
  } else {
    return "lo siento";
  }
};

let extraccionFn = function (titular1, cantidad1) {
  let cliente1 = this.consultarCliente(titular1);
  if (typeof cliente1 !== "string") {
    cliente1.saldoEnPesos -= cantidad1;
    if (cliente1.saldoEnPesos < 0) {
      return "fondos insuficientes";
    } else {
      return `Extraccion realizada, su nuevo saldo es ${cliente1.saldoEnPesos}`;
    }
  } else {
    return "lo siento";
  }
};

let banco = {
  clientes: arrayCuentas,
  consultarCliente: consultar,
  deposito: depositoFn,
  extraccion: extraccionFn,
};

// let clienteEncontrado = banco.consultarCliente("Abigael Natte");
// console.log(clienteEncontrado);

// let a = banco.deposito("Jacki Shurmer", 1000);
// console.log(a);

let b = banco.extraccion("Abigael", 30000);
console.log(b);
