import 'package:flutter/material.dart';

import 'package:ms_dhoni/controller/autos_controller.dart';

import 'package:ms_dhoni/controller/family_controller.dart';
import 'package:ms_dhoni/controller/gallery_controller.dart';
import 'package:ms_dhoni/controller/news_controller.dart';
import 'package:ms_dhoni/controller/quotes_controller.dart';

import 'package:ms_dhoni/controller/videos_controller.dart';
import 'package:ms_dhoni/splash.dart';
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
        ChangeNotifierProvider(create: (context) => FamilyController()),
        ChangeNotifierProvider(create: (context) => VideosController()),
        ChangeNotifierProvider(create: (context) => QuotesController()),
        ChangeNotifierProvider(create: (context) => NewsController()),
        ChangeNotifierProvider(create: (context) => AutosController()),
        ChangeNotifierProvider(create: (context) => GalleryController()),
      ],
      child: MaterialApp(
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
