import 'dart:convert';

import 'package:flutter/material.dart';

import '../../models/sneaker.dart';

class SneakersLoader {
  SneakersLoader();

  Future<List<Sneaker>> loadSneakers(BuildContext context) async {
    final content = await DefaultAssetBundle.of(context)
        .loadString('assets/data/service_response.json'); // Configuracion local

    final jsonMap = json.decode(content) as List;
    return jsonMap
        .map((e) => Sneaker.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
