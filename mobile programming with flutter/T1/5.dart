abstract class Aluno{
  int _matricula;
  String _nome;
  Aluno(this._matricula,this._nome);
  
  int getMatricula() => _matricula;
  String getNome() => _nome;
  
  double calcularMedia(List notas){
    double soma = 0.0;
  
    for(int i = 0; i < notas.length; i++){
      soma += notas[i];
    }
    return soma/notas.length;
  }
  @override
  String toString(){
    return "Aluno | Nome: $_nome, Matrícula: $_matricula"; 
    
    
  }

}

class AlunoEspecial extends Aluno{
  int _limiteDisciplina;
  AlunoEspecial(int matricula, String nome,this._limiteDisciplina):super(matricula,nome);
  
  int getLimiteDisciplina() =>_limiteDisciplina;
  
  @override
  String toString(){
    return "---- AlunoEspecial ----\nNome: $_nome\nMatrícula: $_matricula\nLimite de Disciplina: $_limiteDisciplina"; 
    
    
  }
}

void main(){
  AlunoEspecial aluno1 = AlunoEspecial(9080, "Jacksson", 10);
  print("-------- Dados --------\n${aluno1.toString()}");

}

