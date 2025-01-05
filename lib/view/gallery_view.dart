import 'package:flutter/material.dart';
import 'package:ms_dhoni/controller/gallery_controller.dart';
import 'package:ms_dhoni/modal/tab_list.dart';
import 'package:ms_dhoni/view/photo_view.dart';
import 'package:provider/provider.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<GalleryController>();
    if (controller.response == null) {
      controller.getWallpapers();
    }

    return DefaultTabController(
      length: ofNavs.length,
      child: Scaffold(
        body: controller.response == null
            ? const Center(child: CircularProgressIndicator())
            : GridView.builder(
                itemCount: controller.response!.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, i) {
                  return Center(
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height / 2,
                      width: MediaQuery.sizeOf(context).height / 2,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        elevation: 8,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PhotoViewPage(
                                  image: controller.response![i].image ?? "",
                                ),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 3,
                            child: Image.network(
                              controller.response![i].image ?? "",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
