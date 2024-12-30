import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ms_dhoni/modal/selfie.dart';

class SelfieController extends ChangeNotifier {
  List<OfSelfie>? response;
  void getSelfie() async {
    try {
      var api = await http.get(Uri.parse(
          "https://mapi.trycatchtech.com/v3/dhoni/selfie_image_list"));
      if (api.statusCode == 200) {
        response = OfSelfie.self(jsonDecode(api.body));
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
}
