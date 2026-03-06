// Crie uma lista de nomes de frutas (no mínimo 6). Use o método .where()
// para filtrar apenas as frutas que começam com a letra 'M'. Converta o
// resultado para uma lista e imprima. Depois, use .map() para criar uma nova
// lista com os nomes em MAIÚSCULAS.

var frutas = ['pera', 'mamão', 'damasco', 'uva', 'morango'];
var frutascomM = frutas.where((f) => f.startsWith('m')).toList();

void main() {
  print(
    'Frutas que começam com M: $frutascomM',
  ); // Imprime as frutas filtradas.

  var frutasMaiusculas = frutas
      .map((f) => f.toUpperCase())
      .toList(); // Converte os nomes para maiúsculas.
  print('Frutas em MAIÚSCULAS: $frutasMaiusculas'); // Imprime a nova lista.
}
