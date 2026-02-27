// Exercício 6: Função de Alta Ordem
// Crie uma função 'executarOperacao' que recebe dois números
//e uma função como parâmetros. A função passada deve realizar uma operação
// matemática (soma, subtração, multiplicação ou divisão) entre os números.
// Teste com diferentes operações.
// Avançado

// double executarOperacao(double a, double b, Function operacao) {
//     return operacao(a, b);
// }

double executarOperacao(
  double a,
  double b,
  double Function(double, double)
  operacao, // Especifica que 'operacao' é uma função que recebe dois doubles e retorna um double
) {
  return operacao(a, b);
}

void main() {
  double soma = executarOperacao(
    10,
    5,
    (x, y) => x + y,
  ); // Faz a soma usando a função anônima.
  double subtracao = executarOperacao(10, 5, (x, y) => x - y);
  double multiplicacao = executarOperacao(10, 5, (x, y) => x * y);
  double divisao = executarOperacao(10, 5, (x, y) => x / y);

  print('Soma: $soma');
  print('Subtração: $subtracao');
  print('Multiplicação: $multiplicacao');
  print('Divisão: $divisao');
}
