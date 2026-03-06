import 'dart:async';

void main() async {
  final controller = StreamController<String>();

  controller.stream.listen(
    (mensagem) => print(mensagem),
    onDone: () => print('Chat encerrado'),
  );

  final mensagens = [
    'Oi, tudo bem?',
    'Sim! E voce?',
    'Tudo otimo, obrigado!',
    'Que bom',
    'Ate logo!',
  ];

  for (final msg in mensagens) {
    await Future.delayed(Duration(seconds: 1));
    controller.sink.add(msg);
  }

  await controller.close();
}
