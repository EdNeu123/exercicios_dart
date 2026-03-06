import 'dart:async';

void main() async {
  final controller = StreamController<int>.broadcast();
  int contagem = 0;
  int soma = 0;

  controller.stream.listen((n) => print('Listener 1 - valor: $n'));

  controller.stream.listen((n) {
    contagem++;
    print('Listener 2 - total de eventos: $contagem');
  });

  controller.stream.listen((n) {
    soma += n;
    print('Listener 3 - soma acumulada: $soma');
  });

  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(milliseconds: 300));
    controller.sink.add(i);
  }

  await controller.close();
}
