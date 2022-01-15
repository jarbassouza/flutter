void main() {
  
  saudacoes('Jarbas', false);
   saudacoes('Delaure' );
}

void saudacoes(String nome, [bool mostrarAgora = true]) {
  
  print('-'  * 30);
  print('Saudações do $nome');
  print('Seja Bem-Vindo!');

  if (mostrarAgora) {
    print('Agora São: ${agora()}');
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
