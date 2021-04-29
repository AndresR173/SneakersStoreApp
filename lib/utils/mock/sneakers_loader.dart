import 'dart:convert';
import 'dart:io';

import 'package:sneakers_store/models/sneaker.dart';

class SneakersLoader {
  SneakersLoader();

  Future<List<Sneaker>> loadSneakers() async {
    final file = File('utils/mock/service_response.dart');
    final content = await file.readAsString(); // Configuracion local

    final jsonMap = json.decode(content) as List;
    return jsonMap
        .map((e) => Sneaker.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
