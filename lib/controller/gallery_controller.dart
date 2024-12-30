import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ms_dhoni/modal/gallery_modal.dart';

class GalleryController extends ChangeNotifier {
  List<OfWallpapers>? response;
  void getWallpapers() async {
    try {
      var api = await http.get(
          Uri.parse("https://mapi.trycatchtech.com/v3/dhoni/wallpapers_list"));
      if (api.statusCode == 200) {
        response = OfWallpapers.walls(jsonDecode(api.body));
        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }
}
