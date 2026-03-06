// Crie uma classe abstrata 'Veiculo' com um método abstrato 'acelerar()'. Implemente duas classes concretas: 'Carro' e 'Moto', cada uma com sua própria implementação de acelerar() que imprime uma mensagem diferente. Crie uma lista de veículos e chame acelerar() para cada um.
abstract class Veiculo {
  String modelo;

  Veiculo(this.modelo);

  void acelerar();

  void freiar() {
    print('$modelo esta freando.');
  }
}

class Carro extends Veiculo {
  int numPortas;

  Carro(String modelo, this.numPortas) : super(modelo);

  @override
  void acelerar() {
    print('$modelo acelera suavemente, motor V8 rugindo.');
  }
}

class Moto extends Veiculo {
  bool temSidecar;

  Moto(String modelo, this.temSidecar) : super(modelo);

  @override
  void acelerar() {
    print('$modelo acelera bruscamente, escapamento estourando.');
  }
}

void main() {
  final List<Veiculo> veiculos = [
    Carro('Civic', 4),
    Moto('CB 500', false),
    Carro('Fusca', 2),
    Moto('Harley Davidson', true),
  ];

  for (final veiculo in veiculos) {
    veiculo.acelerar();
    veiculo.freiar();
    print('');
  }
}
