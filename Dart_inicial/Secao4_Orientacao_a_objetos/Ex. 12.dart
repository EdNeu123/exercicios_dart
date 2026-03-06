//Exercicio anterior:
// class Produto {  
//   String nome;  
//   double preco;  
//   int estoque;    
   
//   Produto(this.nome, this.preco, this.estoque); 
   
//   void exibirInfo() {  
     
//     print('Produto: $nome | Seu valor é R\$ $preco | Estoque: $estoque');   
         
//   }  
// } 

// void main() {  
//   Produto produto1 = Produto('Xiaomi', 3500.00, 10);  
//   Produto produto2 = Produto('Smartwatch', 1500.00, 25);  
//   Produto produto3 = Produto('Fone de Ouvido', 200.00, 50);    
   
//   produto1.exibirInfo();  
//   produto2.exibirInfo();  
//   produto3.exibirInfo(); 
// }
// Estenda a classe 'Produto' do exercício anterior adicionando dois 
// construtores nomeados: 
//(1) 'Produto.semEstoque()' que cria um produto com estoque zero, 
//(2) 'Produto.promocao()' que cria um produto com desconto de 20% no preço. Teste ambos.

class Produto {  
  String nome;  
  double preco;  
  int estoque;    
   
  Produto(this.nome, this.preco, this.estoque); 
   
  // Construtor nomeado para criar um produto sem estoque
  Produto.SemEstoque(this.nome, this.preco) : estoque = 0;
  
  // Construtor nomeado para criar um produto em promoção
  Produto.Promocao(this.nome, double precoOriginal, this.estoque) 
      : preco = precoOriginal * 0.8; // Aplica o desconto de 20%
   
  void exibirInfo() {  
    print('Produto: $nome | Seu valor é R\$ $preco | Estoque: $estoque');   
  }  
}

void main() {  
  // Criando um produto usando o construtor padrão
  Produto produto1 = Produto('Xiaomi', 3500.00, 10);  
  // Criando um produto sem estoque usando o construtor nomeado
  Produto produto2 = Produto.SemEstoque('Smartwatch', 1500.00);  
  // Criando um produto em promoção usando o construtor nomeado
  Produto produto3 = Produto.Promocao('Fone de Ouvido', 200.00, 50);    
   
  produto1.exibirInfo();  
  produto2.exibirInfo();  
  produto3.exibirInfo(); 
}