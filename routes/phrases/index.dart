import 'package:dart_frog/dart_frog.dart';
import 'package:vz_api/services/phrases_service.dart';

Response onRequest(RequestContext context) {
  final phrase = PhrasesService.getPhrases(number: 1);

  final responseMap = {
    'STATUS': 'OK',
    'PHRASE': phrase,
  };

  return Response.json(body: responseMap);
}
