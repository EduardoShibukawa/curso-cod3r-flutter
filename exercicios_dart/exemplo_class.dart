class Produto{
  String nome;
  double preco;

  Produto({this.nome, this.preco = 9.99});
}

main() {
  var p1 = new Produto(nome: "Lapis", preco: 4.5);
  var p2 = new Produto(nome: "Batata");
  

  print("O produto ${p1.nome} tem preço R\$ ${p1.preco}"); 
  print("O produto ${p2.nome} tem preço R\$ ${p2.preco}"); 
}