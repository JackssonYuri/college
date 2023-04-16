class Teste {
  int A = 0;
  int B = 0;
  
  void mult(){
    int result = 0;
    result = A * B;
    print("$result");
  }
}
  
void main(){
 // criando um objeto, pode come;car com ver
 // aqui instanciamos nossa pessoa
  Teste mult1 = new Teste(); // em Dart o new é opcional, pode-se colocar ou não, na dúvida coloca para ficar claro que está criando uma nova pessoa
// acessando os atributos
  mult1.A = 20;
  mult1.B = 30;
  mult1.mult();
 
}
