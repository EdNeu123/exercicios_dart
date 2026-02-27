// Crie um Map onde as chaves são IDs de produtos (int) e os valores são
// nomes de produtos (String). Adicione 5 produtos. Implemente funções para: (
//1) buscar um produto por ID,
//(2) listar todos os produtos,
//(3) remover um produto por ID.
// Use Map<int, String> produtos = {}; e os métodos .containsKey(), .remove(), .forEach().

String buscarProduto(int id) {
  if (produtos.containsKey(id)) {
    return 'Produto encontrado: ${produtos[id]}';
  } else {
    return 'Produto com ID $id não encontrado.';
  }
}

String listarProdutos() {
  StringBuffer buffer = StringBuffer('Lista de Produtos:\n');
  produtos.forEach((id, nome) {
    buffer.writeln('ID: $id, Nome: $nome');
  });
  return buffer.toString();
}

String removerProduto(int id) {
  if (produtos.containsKey(id)) {
    String nomeRemovido = produtos[id]!;
    produtos.remove(id);
    return 'Produto removido: $nomeRemovido';
  } else {
    return 'Produto com ID $id não encontrado para remoção.';
  }
}

Map<int, String> produtos = {
  1: 'Lapiseira',
  2: 'Borracha',
  3: 'Bola',
  4: 'Caderno',
  5: 'Penal',
};

void main() {
  print(buscarProduto(3)); // Busca o produto com ID 3.
  print(listarProdutos()); // Lista todos os produtos.
  print(removerProduto(2)); // Remove o produto com ID 2.
  print(listarProdutos()); // Lista novamente para mostrar a remoção.
}
