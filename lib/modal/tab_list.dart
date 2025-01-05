import 'package:ms_dhoni/modal/tab_modal.dart';
import 'package:ms_dhoni/view/autos_view.dart';
import 'package:ms_dhoni/view/family_view.dart';
import 'package:ms_dhoni/view/gallery_view.dart';
import 'package:ms_dhoni/view/news_view.dart';
import 'package:ms_dhoni/view/quotes_view.dart';
import 'package:ms_dhoni/view/videos_view.dart';

List<TabModal> ofNavs = [
  TabModal(
    image: "gallery",
    name: "GALLERY",
    nav: const GalleryView(),
  ),
  TabModal(
    image: "quotes",
    name: "QUOTES",
    nav: const QuotesView(),
  ),
  TabModal(
    image: "videos",
    name: "VIDEOS",
    nav: const VideosView(),
  ),
  TabModal(
    image: "family",
    name: "FAMILY",
    nav: const FamilyView(),
  ),
  TabModal(
    image: "autos",
    name: "AUTOS",
    nav: const AutosView(),
  ),
  TabModal(
    image: "news",
    name: "NEWS",
    nav: const NewsView(),
  ),
];
