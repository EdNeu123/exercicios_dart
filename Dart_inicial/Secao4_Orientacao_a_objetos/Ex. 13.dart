// Crie uma classe 'ContaBancaria' com atributos: titular (String), saldo (double). Adicione métodos: depositar(valor) e sacar(valor). Crie uma classe 'ContaPoupanca' que herda de ContaBancaria e adiciona um método 'aplicarRendimento(taxa)' que aumenta o saldo pela taxa informada.

class ContaBancaria {
  String titular;
  double saldo;

  ContaBancaria(this.titular, this.saldo);

  void depositar(double valor) {
    if (valor <= 0) {
      print('Valor de deposito invalido.');
      return;
    }
    saldo += valor;
    print('$titular depositou R\$ $valor. Saldo atual: R\$ $saldo');
  }

  void sacar(double valor) {
    if (valor <= 0) {
      print('Valor de saque invalido.');
      return;
    }
    if (valor > saldo) {
      print('Saldo insuficiente para sacar R\$ $valor.');
      return;
    }
    saldo -= valor;
    print('$titular sacou R\$ $valor. Saldo atual: R\$ $saldo');
  }
}

class ContaPoupanca extends ContaBancaria {
  ContaPoupanca(String titular, double saldo) : super(titular, saldo);

  void aplicarRendimento(double taxa) {
    final rendimento = saldo * taxa;
    saldo += rendimento;
    print('Rendimento de ${(taxa * 100).toStringAsFixed(1)}% aplicado. '
        'Ganho: R\$ ${rendimento.toStringAsFixed(2)}. '
        'Novo saldo: R\$ ${saldo.toStringAsFixed(2)}');
  }
}

void main() {
  final conta = ContaBancaria('Eduardo', 1000.0);
  conta.depositar(500.0);
  conta.sacar(200.0);
  conta.sacar(2000.0);

  print('');

  final poupanca = ContaPoupanca('Maria', 2000.0);
  poupanca.depositar(1000.0);
  poupanca.aplicarRendimento(0.05);
  poupanca.sacar(100.0);
}