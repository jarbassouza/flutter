void main() {
  Cachorro c1 = Cachorro('Rex', 5);
  Gato g1 = Gato('Mimi', 2);

  print(c1);
  print(g1);
}

class Animal {
  Animal(this.nome, this.idade); //Construtor

  String nome;
  int idade;

  void comer() {
    print('Comeu');
  }

  void dormir() {
    print('Dormiu');
  }

  @override
  String toString() {
    return ' Nome: $nome, Idade: $idade';
  }
}

class Cachorro extends Animal {
  Cachorro(String nome, int idade) : super(nome, idade); //Construtor

  void latir() {
    print('Latindo ...');
  }

  void dormir() {
    super.dormir();
    print('Cachorro ...');
  }

  @override
  String toString() {
    return 'Nome do Cachorro: $nome, Idade: $idade';
  }
}

class Gato extends Animal {
  Gato(String nome, int idade) : super(nome, idade); //Construtor
  void miar() {
    print('Miando ...');
  }

  @override
  void dormir() {
    print('Dorme Gato ...');
  }

  @override
  String toString() {
    return 'Nome do Gato: $nome, Idade: $idade';
  }
}
