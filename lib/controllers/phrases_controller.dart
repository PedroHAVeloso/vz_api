/// Realiza o controle dos dados 
class PhrasesController {
  ///
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
