/// Realiza o controle dos dados nas rotas de frases.
class PhrasesController {
  /// Obtém se o número de frases é valido. O número deve ser inteiro e estar
  /// entre 1 inclusive e 10 inclusive para retornar verdadeiro, no contrário
  /// retorna falso.
  ///
  /// Exemplo de uso:
  ///
  /// ```dart
  /// bool numberIsValid = PhrasesController.checkNumberValid(number: 5);
  /// ```
  static bool checkNumberValid({required String number}) {
    if (int.tryParse(number) == null) {
      return false;
    }

    if (int.parse(number) < 1) {
      return false;
    }

    if (int.parse(number) > 10) {
      return false;
    }

    return true;
  }
}
