import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ms_dhoni/modal/autos_modal.dart';

class AutosController extends ChangeNotifier {
  List<OfAuto>? response;
  void getAuto() async {
    try {
      var api = await http
          .get(Uri.parse("https://mapi.trycatchtech.com/v3/dhoni/auto_list"));
      if (api.statusCode == 200) {
        response = OfAuto.autoss(jsonDecode(api.body));
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
}
