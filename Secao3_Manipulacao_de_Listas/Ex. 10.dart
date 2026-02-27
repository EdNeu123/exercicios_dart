// Crie dois Sets de números: A = {1, 2, 3, 4, 5} e B = {4, 5, 6, 7, 8}. Calcule e 
// imprima: 
//(1) a união dos conjuntos, 
//(2) a interseção, 
//(3) a diferença (A - B), 
// (4) verifique se 3 está no conjunto A. 

// Dica: Use .union(), .intersection(), .difference().
 
void main() {
  Set<int> A = {1, 2, 3, 4, 5};
  Set<int> B = {4, 5, 6, 7, 8};

  // União dos conjuntos A e B
  Set<int> uniao = A.union(B);
  print('União de A e B: $uniao');

  // Interseção dos conjuntos A e B
  Set<int> intersecao = A.intersection(B);
  print('Interseção de A e B: $intersecao');

  // Diferença entre A e B (A - B)
  Set<int> diferenca = A.difference(B);
  print('Diferença entre A e B (A - B): $diferenca');

  // Verificar se o número 3 está no conjunto A
  bool contemA = A.contains(3);
  print('O número 3 está no conjunto A? $contemA');
}