// Crie três mixins: 'Voador' (método voar()), 'Nadador' (método nadar()) e 'Corredor' (método correr()).
// Crie classes: 'Pato' (nada e voa), 'Golfinho' (nada) e 'Avestruz' (corre). Use mixins para adicionar as capacidades. Crie objetos e teste todos os métodos.

mixin Voador {
  void voar() => print('$runtimeType esta voando.');
}

mixin Nadador {
  void nadar() => print('$runtimeType esta nadando.');
}

mixin Corredor {
  void correr() => print('$runtimeType esta correndo.');
}

class Pato with Nadador, Voador {
  String nome;

  Pato(this.nome);

  void apresentar() {
    print('Eu sou $nome, um pato. Posso:');
    nadar();
    voar();
  }
}

class Golfinho with Nadador {
  String nome;

  Golfinho(this.nome);

  void apresentar() {
    print('Eu sou $nome, um golfinho. Posso:');
    nadar();
  }
}

class Avestruz with Corredor {
  String nome;

  Avestruz(this.nome);

  void apresentar() {
    print('Eu sou $nome, uma avestruz. Posso:');
    correr();
  }
}

void main() {
  final donald = Pato('Donald');
  final nemo = Golfinho('Nemo');
  final mario = Avestruz('Mario');

  donald.apresentar();
  print('');
  nemo.apresentar();
  print('');
  mario.apresentar();
}
