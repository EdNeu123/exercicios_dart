

Future<String> buscarUsuario() {
  return Future.delayed(Duration(seconds: 2), () => 'Maria Silva');
}

void main() {
  buscarUsuario().then((nome) => print(nome));
}
