
void printItem(int item) => print(item);
var dobrarItem = (int item) => print(item*2);
const list = [1, 2, 3];

void main() {
  
  list.forEach(printItem);
  print('Dobrar Itens');
  list.forEach(dobrarItem);

}

