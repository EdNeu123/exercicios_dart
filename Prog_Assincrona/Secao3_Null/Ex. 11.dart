Map<String, String> cache = {};

Future<String?> buscarDaAPI(String chave) async {
  await Future.delayed(Duration(seconds: 1));
  final valores = {
    'tema': 'dark',
    'idioma': 'pt-BR',
    'timeout': '30',
  };
  return valores[chave];
}

Future<String?> buscarConfiguracao(String chave) async {
  if (cache[chave] != null) {
    return cache[chave];
  }

  final valor = await buscarDaAPI(chave);
  cache[chave] = valor ?? 'valor-padrao';
  return cache[chave];
}

void main() async {
  final tema = await buscarConfiguracao('tema');
  print(tema?.toUpperCase() ?? 'nao definido');

  final temaDoCach = await buscarConfiguracao('tema');
  print(temaDoCach);

  final inexistente = await buscarConfiguracao('cor-primaria');
  print(inexistente);
}
