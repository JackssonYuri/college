//Questão 8
class Carro {
  String _placa;
  String _modelo;
  int _ano;
  Carro(this._placa, this._modelo, this._ano);
  String getPlaca() => _placa;
  String getModelo() => _modelo;
  int getAno() => _ano;
  @override
  String toString() {
    return "Placa: $_placa \nModelo: $_modelo \nAno: $_ano";
  }
}
  void main() {
    // criação dos objetos Carro
    Carro carro1 = Carro("ABC1234", "Gol", 2010);
    Carro carro2 = Carro("DEF5678", "Celta", 2018);
    Carro carro3 = Carro("JKK0102", "Palio", 2015);
    Carro carro4 = Carro("BTR2345", "Uno", 2012);

    // criação do Map e adição dos objetos
    Map<String, Carro> carros = {
      carro1.getPlaca(): carro1,
      carro2.getPlaca(): carro2,
      carro3.getPlaca(): carro3,
      carro4.getPlaca(): carro4,
    };

    // percorrendo o Map e exibindo os dados dos carros na tela
    for (Carro carro in carros.values) {
      print(carro);
      print("------");
    }
  }
