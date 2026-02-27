// Exercício 7: Manipulação de Listas
// Crie uma lista de números inteiros de 1 a 10. Adicione o número 11 ao final.
// Remova o número 5. Exiba o tamanho da lista, o primeiro e o último
// elemento. Por fim, use forEach para imprimir todos os elementos.
// Básico

// Dica: Use .add(), .remove(), .length, .first, .last e .forEach().

List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

void main() {
  lista.add(11); // Adiciona o número 11 ao final da lista.
  lista.remove(5); // Remove o número 5 da lista.

  print('Tamanho da lista: ${lista.length}'); // Exibe o tamanho da lista.
  print('Primeiro elemento: ${lista.first}'); // Exibe o primeiro elemento.
  print('Último elemento: ${lista.last}'); // Exibe o último elemento.

  print('Elementos da lista:');
  lista.forEach((element) => print(element));
}
