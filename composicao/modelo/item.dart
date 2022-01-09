
// ignore_for_file: unnecessary_null_comparison

import './produto.dart';

class Item {
  
  Produto produto;
  int quantidade;
  double _preco = 0;

Item ({required this.produto, required this.quantidade});

 double get preco {

   if (produto != null && _preco == null) {
     _preco = produto.precoComDesconto;
   }
   return _preco;

 }
 void set preco (double novoPreco) {

   if(novoPreco > 0){
   
     preco = novoPreco;
   
   }
 
 }

}