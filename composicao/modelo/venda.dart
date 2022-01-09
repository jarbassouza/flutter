import './cliente.dart';
import './item.dart';

class Venda {
  
  Cliente cliente;
  List<Item> itens;
  
  Venda({required this.cliente, this.itens = const [] });

}