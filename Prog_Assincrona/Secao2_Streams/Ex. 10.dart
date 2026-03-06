import 'dart:async';
import 'dart:math';

void main() async {
  final random = Random();
  final eventos = ['click', 'scroll', 'input'];
  final controller = StreamController<String>();

  Timer? debounceTimer;
  String? ultimoEvento;

  int contador = 0;
  Timer.periodic(Duration(milliseconds: 500), (timer) {
    if (contador >= 10) {
      timer.cancel();
      controller.close();
      return;
    }
    controller.sink.add(eventos[random.nextInt(eventos.length)]);
    contador++;
  });

  controller.stream.listen((evento) {
    ultimoEvento = evento;
    print('evento recebido: $evento');
    debounceTimer?.cancel();
    debounceTimer = Timer(Duration(milliseconds: 1000), () {
      print('processando ultimo evento: $ultimoEvento');
    });
  }, onDone: () {
    print('stream encerrado');
  });

  await Future.delayed(Duration(seconds: 8));
}
