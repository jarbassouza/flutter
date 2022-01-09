import '../cliente.dart';
import '../item.dart';
import '../venda.dart';
import '../produto.dart';

void main() {
  var venda = Venda(
      cliente: new Cliente(nome: 'Maria', cpf: '923.154.351-02'),
      itens: <Item>[
        Item(
            quantidade: 5,
            produto:
                Produto(
                  codigo: 34, 
                  desconto: 0.2, 
                  nome: 'Caneta', 
                  preco: 10)
                  ),
        Item(
            quantidade: 10,
            produto:
                Produto(
                  codigo: 35, 
                  desconto: 0.5, 
                  nome: 'Borracha', 
                  preco: 5)
                  )
      ]
      );
  
  print("O valor total da venda é  R\$. ${venda.valorTotal}");

}
