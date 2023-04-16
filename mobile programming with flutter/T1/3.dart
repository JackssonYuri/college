//Questão 3
class Carro{
String placa;
String cor;
int ano;
Carro(this.placa, this.cor, this.ano);

}

class CarroFrete extends Carro{
  double capacidade;
  CarroFrete(String placa, String cor, int ano, this.capacidade) : super(placa,cor,ano);
  
  void printar() {
print("Placa do carro: $placa");
print("Cor do carro: $cor");
print("Ano do carro: $ano");
print("Capacudade do carro: $capacidade");
}
}
void main() {
CarroFrete animal1 = CarroFrete("XXX9999", "preta", 1999, 20);
animal1.printar();
  }
