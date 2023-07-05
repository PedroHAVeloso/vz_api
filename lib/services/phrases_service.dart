import 'dart:math';
import 'package:vz_api/all_phrases_list.dart';

/// Provém todas as interações da API com a lista de frases.
class PhrasesService {
  /// Obtém uma quantidade N [number] de frases, retornando uma lista com elas.
  ///
  /// Exemplo de uso:
  ///
  /// ```dart
  /// List<String> phrases = PhrasesService.getPhrases(number: 10);
  /// ```
  static List<String> getPhrases({required int number}) {
    final phrases = <String>[];

    for (var i = 0; i < number; i++) {
      final phrase = getAleatoryPhrase();
      phrases.add(phrase);
    }

    return phrases;
  }

  /// Obtém uma frase aleatória da lista de frases, retornando-a como String.
  ///
  /// Exemplo de uso:
  ///
  /// ```dart
  /// String phrase = PhrasesService.getAleatoryPhrase();
  /// ```
  static String getAleatoryPhrase() {
    final random = Random();
    final phrase = allPhrasesList[random.nextInt(getPhraseQuantity())];

    return phrase;
  }

  /// Obtém a quantidade de frases atualmente na lista de frases, retornando um
  /// int.
  ///
  /// Exemplo de uso:
  ///
  /// ```dart
  /// int phraseQuantity = PhrasesService.getPhraseQuantity();
  /// ```
  static int getPhraseQuantity() {
    final phraseQuantity = allPhrasesList.length;

    return phraseQuantity;
  }
}
