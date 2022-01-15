void main(List<String> args) {

  saudacoes(
    'Jarbas', 
    cliente: 'Jota', 
    mostrarAgora: false);
}

void saudacoes(
  String nome, {
  bool mostrarAgora: true,
  String? cliente,
}) {
  print('Saudações de ${nome}');

  if (cliente != null) {
    print('Seja Bem-Vindo(a) ${cliente}');
  }
  if(mostrarAgora){
    print('Agora São: ${agora()}');
  }
}

String agora() {
  DateTime agora = DateTime.now();
  return agora.toString();
}
