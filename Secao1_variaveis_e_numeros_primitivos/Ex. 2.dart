// Crie uma constante 'pi' usando const com o valor 3.14159.
// Crie uma variável 'dataAtual' usando final que armazena DateTime.now().
// Tente reatribuir valores a ambas e observe os erros.
// Documente no código o que acontece.

// const = constante em tempo de compilação (compile-time)
// final = variável que só pode ser atribuída uma vez (em runtime)

const pi = 3.14159;
final dataAtual = DateTime.now();

void main() {
  print('Os valores atuais de pi e data atual são: $pi e $dataAtual');

  ///////////////////////////////////
  // TENTANDO REATRIBUIR 'pi'
  ///////////////////////////////////

  pi = 3.14;
  // ERRO:
  // "Error: Setter not found: 'pi'"

  // Explicação:
  // 'const' cria uma constante em tempo de compilação.
  // O valor é fixo e imutável.
  // Não pode ser alterado em nenhuma hipótese.

  ///////////////////////////////////
  // TENTANDO REATRIBUIR 'dataAtual'//
  ///////////////////////////////////

  dataAtual = DateTime.now();
  // ERRO:
  // "Error: Can't assign to the final variable 'dataAtual'"

  // Explicação:
  // 'final' permite atribuição apenas UMA vez.
  // Depois que recebe valor, não pode ser alterado.
  // Diferente de const, o valor é definido em tempo de execução.

  print(
    '\nTestes concluídos! Veja os comentários no código para entender os erros.',
  );
}
