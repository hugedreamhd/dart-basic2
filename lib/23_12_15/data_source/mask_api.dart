import 'dart:convert';

import '.../dto/mask_dto.dart';
import 'package:http/http.dart' as http;



class MaskApi {
  Future<MaskDto> getMaskInfoResult() async {
    final reponse =
        await http.get(Uri.parse('http://104.198.76:3000/mask'));
    return MaskDto.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  }

}