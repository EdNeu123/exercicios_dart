import 'dart:async';

Future<String?> autenticar() async {
  await Future.delayed(Duration(seconds: 1));
  return 'jwt-token-xyz';
}

Future<Map<String, dynamic>?> buscarDadosUsuario(String? token) async {
  if (token == null) throw Exception('Token invalido');
  await Future.delayed(Duration(seconds: 1));
  return {'nome': 'Eduardo', 'plano': 'Pro', 'saldo': 1500.0};
}

Future<List<Map<String, dynamic>>> buscarDadosParalelo() async {
  final resultados = await Future.wait([
    Future.delayed(Duration(seconds: 2), () => {'fonte': 'Loja A', 'total': 5200}),
    Future.delayed(Duration(seconds: 1), () => {'fonte': 'Loja B', 'total': 3100}),
    Future.delayed(Duration(seconds: 3), () => {'fonte': 'Loja C', 'total': 7800}),
  ]);
  return resultados;
}

Stream<Map<String, dynamic>> streamAtualizacoes() async* {
  final eventos = [
    {'tipo': 'nova_venda', 'valor': 350, 'loja': 'Loja A'},
    {'tipo': 'estoque_baixo', 'produto': 'Item X', 'qtd': 2},
    {'tipo': 'nova_venda', 'valor': 780, 'loja': 'Loja C'},
  ];
  for (final evento in eventos) {
    await Future.delayed(Duration(seconds: 1));
    yield evento;
  }
}

void main() async {
  try {
    final token = await autenticar();
    final usuario = await buscarDadosUsuario(token);
    print('Bem-vindo, ${usuario?['nome'] ?? 'Visitante'}');

    final vendas = await buscarDadosParalelo();
    int total = 0;
    for (final v in vendas) {
      total += (v['total'] as int);
      print('${v['fonte']}: R\$ ${v['total']}');
    }
    print('Total: R\$ $total');

    await for (final evento in streamAtualizacoes()) {
      if (evento['tipo'] == 'nova_venda') {
        print('Nova venda em ${evento['loja']}: R\$ ${evento['valor']}');
      } else if (evento['tipo'] == 'estoque_baixo') {
        print('Estoque baixo: ${evento['produto']} (${evento['qtd']} restantes)');
      }
    }

    final saldo = usuario?['saldo'] as double?;
    print('Saldo: ${saldo != null ? 'R\$ $saldo' : 'nao disponivel'}');
  } on TimeoutException {
    print('Servidor demorou demais para responder');
  } catch (e) {
    print('Erro: $e');
  }
}
