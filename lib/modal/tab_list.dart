import 'package:ms_dhoni/modal/tab_modal.dart';
import 'package:ms_dhoni/view/autos_view.dart';
import 'package:ms_dhoni/view/family_view.dart';
import 'package:ms_dhoni/view/gallery_view.dart';
import 'package:ms_dhoni/view/news_view.dart';
import 'package:ms_dhoni/view/quotes_view.dart';
import 'package:ms_dhoni/view/videos_view.dart';

List<TabModal> ofNavs = [
  TabModal(
    image: "gallery.png",
    name: "GALLERY",
    nav: const GalleryView(),
  ),
  TabModal(
    image: "quotes.png",
    name: "QUOTES",
    nav: const QuotesView(),
  ),
  TabModal(
    image: "videos.png",
    name: "VIDEOS",
    nav: VideosView(),
  ),
  TabModal(
    image: "family.png",
    name: "FAMILY",
    nav: const FamilyView(),
  ),
  TabModal(
    image: "autos.png",
    name: "AUTOS",
    nav: const AutosView(),
  ),
  TabModal(
    image: "news.png",
    name: "NEWS",
    nav: const NewsView(),
  ),
];
