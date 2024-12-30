import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ms_dhoni/modal/news_modal.dart';

class NewsController extends ChangeNotifier {
  List<OfNews>? response;

  void getNews() async {
    try {
      var api = await http.get(
          Uri.parse("https://mapi.trycatchtech.com/v3/dhoni/dhoni_news_list"));
      if (api.statusCode == 200) {
        response = OfNews.newss(jsonDecode(api.body));
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
}
