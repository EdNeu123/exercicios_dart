Future<List<String>> buscarProdutos() async {
  await Future.delayed(Duration(seconds: 2));
  return ['Produto A', 'Produto B'];
}

Future<List<String>> buscarCategorias() async {
  await Future.delayed(Duration(seconds: 1));
  return ['Eletronicos', 'Roupas'];
}

Future<List<String>> buscarPromocoes() async {
  await Future.delayed(Duration(seconds: 3));
  return ['50% off', 'Frete gratis'];
}

Future<List<String>> buscarDestaques() async {
  await Future.delayed(Duration(seconds: 2));
  return ['Produto em Alta', 'Novo Lancamento'];
}

void main() async {
  var inicio = DateTime.now();
  final resultados = await Future.wait([
    buscarProdutos(),
    buscarCategorias(),
    buscarPromocoes(),
    buscarDestaques(),
  ]);
  final tempoParalelo = DateTime.now().difference(inicio).inSeconds;
  print('Paralelo: ${tempoParalelo}s');
  print(resultados);

  inicio = DateTime.now();
  await buscarProdutos();
  await buscarCategorias();
  await buscarPromocoes();
  await buscarDestaques();
  final tempoSequencial = DateTime.now().difference(inicio).inSeconds;
  print('Sequencial: ${tempoSequencial}s');
}
