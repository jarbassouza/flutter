class Pessoa {
  String nome;
  int idade;
  bool casado;
  double? _dinheiro;

  Pessoa({required this.nome, required this.idade, this.casado = false}){print('Nome: $nome - Idade: $idade Anos');}
  
  int aniversario() {
    print('Parabens! $nome');
    idade++;
    return idade;
  }

  void casar() {
    casado = true;
  }

  void trocarNome(String n) {
    nome = n;
  }

  set dinheiro(double? valor) {
    if (valor != null && valor >= 0 && valor < 10000) {
      // print('Modificando dinheiro de $nome');
      _dinheiro = valor;
    }
  }

  double? get dinheiro {
    print('Lendo dinheiro de $nome');
    return _dinheiro;
  }

   @override
   String toString(){
    return 'Nome: ${nome} - Idade: ${idade}';
   }

}


void main() {
  Pessoa p1 = Pessoa(nome: 'Jarbas', idade: 53, casado: true);
  Pessoa p2 = Pessoa(nome: 'Aline', idade: 25, casado: true);

  p1.dinheiro = 1000;
  p2.dinheiro = 500;

  print('Dinheiro de ${p1.nome}: R\$.${p1.dinheiro}');
  print('Dinheiro de ${p2.nome}: R\$.${p2.dinheiro}');

print('********');
  print(p1);
}
