class Ingresso {
  int dia;
  int mes;
  int ano;
  double valor;

  Ingresso(this.dia, this.mes, this.ano, this.valor);

  String toString() {
    return "$dia/$mes/$ano: ${valor.toStringAsFixed(2)}";
  }
}

void main() {
  List<Ingresso> ingressos = [
    Ingresso(11, 6, 2023, 35.20),
    Ingresso(15, 7, 2023, 25.50),
    Ingresso(22, 8, 2023, 18.00),
    Ingresso(5, 9, 2023, 42.00)
  ];

  for (int i = 0; i < ingressos.length; i++) {
    print(ingressos[i]);
  }
}
