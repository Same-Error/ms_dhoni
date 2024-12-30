import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ms_dhoni/modal/family.dart';
import 'package:http/http.dart' as http;

class FamilyController extends ChangeNotifier {
  List<OfFamily>? response;
  void getFam() async {
    try {
      var api = await http
          .get(Uri.parse("https://mapi.trycatchtech.com/v3/dhoni/family_list"));
      if (api.statusCode == 200) {
        response = OfFamily.fam(jsonDecode(api.body));
        notifyListeners();
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}
