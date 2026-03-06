// Crie uma função 'saudar' que recebe nome (obrigatório), titulo (opcional, padrão 'Sr.') e mostrarHora (opcional, padrão false).
// se mostrarHora for
// true, inclua a hora atual na saudação. Use parâmetros nomeados.

// Dica: Use {required String nome, String titulo = 'Sr.', bool mostrarHora = false} na
// assinatura.

String saudar({
  required String nome,
  String titulo = 'Sr.',
  bool mostrarHora = false,
}) {
  String saudacao = 'Bem vindo, $titulo $nome!';

  if (mostrarHora) {
    String horaAtual = DateTime.now()
        .toLocal()
        .toString(); // Obtém a hora atual como string usa o .toLocal() para ajustar para o fuso horário local
    saudacao += ' A hora atual é: $horaAtual';
  }

  return saudacao;
}

void main() {
  String saudacao1 = saudar(nome: 'Eduardo');
  String saudacao2 = saudar(nome: 'Iago', titulo: 'Mrs.');
  String saudacao3 = saudar(nome: 'Luiz', mostrarHora: true);

  print(saudacao1);
  print(saudacao2);
  print(saudacao3);
}
