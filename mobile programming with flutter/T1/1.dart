//Questão 1
class Carro {
 // atributos
  String placa = "";
  String cor = "";
  int ano = 0;
}

void main(){
 // criando um objeto, pode come;car com ver
 // aqui instanciamos nossa pessoa
  Carro carro1 = new Carro(); // em Dart o new é opcional, pode-se colocar ou não, na dúvida coloca para ficar claro que está criando uma nova pessoa
// acessando os atributos
  carro1.placa = "XXX9999";
  carro1.cor = "Preto";
  carro1.ano = 1999;
  print(carro1.placa);
  print(carro1.cor);
  print(carro1.ano);
}
