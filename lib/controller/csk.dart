import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ms_dhoni/modal/csk.dart';
import 'package:http/http.dart' as http;

class CskController extends ChangeNotifier {
  List<OfCsk>? response;
  void getCsk() async {
    try {
      var api = await http.get(Uri.parse(
          "https://mapi.trycatchtech.com/v3/dhoni/csk_images_list_no_page"));

      if (api.statusCode == 200) {
        response = OfCsk.chennai(jsonDecode(api.body));
        notifyListeners();
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
