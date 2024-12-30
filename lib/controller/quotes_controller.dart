import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ms_dhoni/modal/quotes_modal.dart';

class QuotesController extends ChangeNotifier {
  List<OfQuotes>? response;
  void getQuote() async {
    try {
      var api = await http
          .get(Uri.parse("https://mapi.trycatchtech.com/v3/dhoni/quotes_list"));
      if (api.statusCode == 200) {
        response = OfQuotes.quot(jsonDecode(api.body));
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
}
