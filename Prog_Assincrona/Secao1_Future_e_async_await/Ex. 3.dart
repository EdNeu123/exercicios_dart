Future<String> autenticar() async {
  await Future.delayed(Duration(seconds: 1));
  return 'token-abc-123';
}

Future<Map<String, dynamic>> buscarPerfil(String token) async {
  await Future.delayed(Duration(seconds: 1));
  return {'id': 'user-42', 'nome': 'Eduardo'};
}

Future<List<String>> buscarPedidos(String userId) async {
  await Future.delayed(Duration(seconds: 1));
  return ['Pedido #001', 'Pedido #002', 'Pedido #003'];
}

void main() async {
  final token = await autenticar();
  final perfil = await buscarPerfil(token);
  final pedidos = await buscarPedidos(perfil['id']);
  print(pedidos);
}
