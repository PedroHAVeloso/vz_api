import 'package:dart_frog/dart_frog.dart';
import 'package:vz_api/services/phrases_service.dart';

Response onRequest(RequestContext context) {
  final responseMap = {
    'STATUS': 'OK',
    'NUMBER_OF_PHRASES': PhrasesService.getPhraseQuantity(),
    'ROUTES': {
      '/phrases': '[GET] Gets a phrase',
      '/phrases/{number}': '[GET] Gets N phrases (min: 1; max: 10)',
    },
  };

  return Response.json(body: responseMap);
}
