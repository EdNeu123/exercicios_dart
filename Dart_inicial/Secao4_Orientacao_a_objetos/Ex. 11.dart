// Crie uma classe 'Produto' com os atributos: nome (String), preco (double) e 
// estoque (int). Implemente um construtor e um método 'exibirInfo()' que 
// imprime todas as informações do produto formatadas. Crie 3 objetos e 
// exiba suas informações. 

class Produto {  
  String nome;  
  double preco;  
  int estoque;    
   
  Produto(this.nome, this.preco, this.estoque); 
   
  void exibirInfo() {  
     
    print('Produto: $nome | Seu valor é R\$ $preco | Estoque: $estoque');   
         
  }  
} 

void main() {  
  Produto produto1 = Produto('Xiaomi', 3500.00, 10);  
  Produto produto2 = Produto('Smartwatch', 1500.00, 25);  
  Produto produto3 = Produto('Fone de Ouvido', 200.00, 50);    
   
  produto1.exibirInfo();  
  produto2.exibirInfo();  
  produto3.exibirInfo(); 
}