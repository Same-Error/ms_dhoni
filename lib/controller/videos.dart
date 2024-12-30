import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ms_dhoni/modal/videos.dart';
import 'package:http/http.dart' as http;

class VideosController extends ChangeNotifier {
  List<OfVideos>? response;

  void getVideo() async {
    try {
      var api = await http
          .get(Uri.parse("https://mapi.trycatchtech.com/v3/dhoni/videos_list"));
      if (api.statusCode == 200) {
        response = OfVideos.vid(jsonDecode(api.body));
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
}
