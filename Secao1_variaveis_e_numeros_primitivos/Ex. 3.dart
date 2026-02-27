// Crie uma String contendo o número '42'. Converta-a para int e double.
// Depois, crie um int com valor 100 e converta-o para String. Imprima todos
// Use int.parse(), double.parse() e .toString() para conversões.

String numeroString = '42';
double numeroDouble = double.parse(numeroString);

void main() {
  int numeroInt = int.parse(numeroString);
  int valorInteiro = 100;
  String valorString = valorInteiro.toString();

  print('String original: $numeroString');
  print('Convertido para int: $numeroInt');
  print('Convertido para double: $numeroDouble');
  print('Int original: $valorInteiro');
  print('Convertido para String: $valorString');
}
