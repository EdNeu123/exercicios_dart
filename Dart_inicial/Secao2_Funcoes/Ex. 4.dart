// Crie duas versões de uma função que calcula a área de um retângulo: uma
// tradicional com corpo {} e outra usando arrow function (=>). Ambas devem
// receber largura e altura como parâmetros e retornar a área. Teste com
// valores 5 e 10.

//funções
double calcularArea(double largura, double altura) {
  return largura * altura;
}

double calcularAreaArrow(double l, double h) => l * h;

//variáveis
double largura = 5;
double altura = 10;

void main() {
  double areaTradicional = calcularArea(largura, altura);
  double areaArrow = calcularAreaArrow(largura, altura);

  print('Área calculada com função tradicional: $areaTradicional');
  print('Área calculada com arrow function: $areaArrow');
}
