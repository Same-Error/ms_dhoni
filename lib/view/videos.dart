import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ms_dhoni/controller/videos.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videos extends StatelessWidget {
  const Videos({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<VideosController>();
    if (controller.response == null) {
      controller.getVideo();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Videos",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF880E4F),
        actions: [
          Icon(Icons.favorite),
          Gap(16),
          Icon(Icons.more_vert),
          Gap(16),
        ],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: controller.response == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView(
              children: [
                GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 1,
                  ),
                  padding: EdgeInsets.all(12),
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller.response!.length,
                  itemBuilder: (context, i) {
                    YoutubePlayerController ytcontroller =
                        YoutubePlayerController(
                      initialVideoId: controller.response![i].url ?? "",
                      flags: YoutubePlayerFlags(
                        autoPlay: false,
                        mute: true,
                      ),
                    );

                    return SizedBox(
                      height: 200,
                      width: 200,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        elevation: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            YoutubePlayer(
                              controller: ytcontroller,
                              showVideoProgressIndicator: true,
                              progressIndicatorColor: Colors.redAccent,
                              onReady: () {
                                ytcontroller.play();
                                Get.snackbar("YT", "Video Loaded");
                              },
                            ),
                            Text(
                              controller.response![i].title ?? "",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
    );
  }
}
