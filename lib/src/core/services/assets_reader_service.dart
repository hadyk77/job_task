import 'dart:convert';

import 'package:flutter/services.dart';

class AssetsReaderService {
  Future<Map<String, dynamic>> readJson(String path) async {
    final fullPath = "assets/json/$path.json";
    final String response = await rootBundle.loadString(fullPath);
    return jsonDecode(response);
  }
}
