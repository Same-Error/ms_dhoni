import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ms_dhoni/controller/autos_controller.dart';
import 'package:ms_dhoni/controller/csk.dart';
import 'package:ms_dhoni/controller/family.dart';
import 'package:ms_dhoni/controller/gallery_controller.dart';
import 'package:ms_dhoni/controller/news_controller.dart';
import 'package:ms_dhoni/controller/quotes_controller.dart';
import 'package:ms_dhoni/controller/selfie.dart';
import 'package:ms_dhoni/controller/videos.dart';
import 'package:ms_dhoni/view/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SelfieController()),
        ChangeNotifierProvider(create: (context) => CskController()),
        ChangeNotifierProvider(create: (context) => FamilyController()),
        ChangeNotifierProvider(create: (context) => VideosController()),
        ChangeNotifierProvider(create: (context) => QuotesController()),
        ChangeNotifierProvider(create: (context) => NewsController()),
        ChangeNotifierProvider(create: (context) => AutosController()),
        ChangeNotifierProvider(create: (context) => GalleryController()),
      ],
      child: GetMaterialApp(
        title: 'MS Dhoni',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          useMaterial3: true,
        ),
        home: const Splash(),
      ),
    );
  }
}
