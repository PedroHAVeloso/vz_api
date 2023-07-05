import 'package:dart_frog/dart_frog.dart';
import 'package:vz_api/controllers/phrases_controller.dart';
import 'package:vz_api/services/phrases_service.dart';

Response onRequest(RequestContext context, String number) {
  final numberValid = PhrasesController.checkNumberValid(number: number);

  if (!numberValid) {
    final responseMap = {
      'STATUS': 'ERROR',
      'REASON': 'NUMBER IS INVALID',
    };

    return Response.json(body: responseMap, statusCode: 400);
  }

  final phrases = PhrasesService.getPhrases(number: int.parse(number));

  final responseMap = {
    'STATUS': 'OK',
    'PHRASE': phrases,
  };

  return Response.json(body: responseMap);
}
