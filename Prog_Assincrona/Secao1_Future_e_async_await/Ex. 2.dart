import 'dart:math';

Future<String> buscarUsuario() async {
  await Future.delayed(Duration(seconds: 2));
  if (Random().nextBool()) throw Exception('Falha ao buscar usuario');
  return 'Maria Silva';
}

void main() async {
  try {
    final nome = await buscarUsuario();
    print(nome);
  } catch (e) {
    print('Erro: $e');
  }
}
