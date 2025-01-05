import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ms_dhoni/controller/news_controller.dart';
import 'package:provider/provider.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<NewsController>();
    if (controller.response == null) {
      controller.getNews();
    }

    return Scaffold(
      body: controller.response == null
          ?  Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: controller.response!.length,
              itemBuilder: (context, i) {
                return Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height / 2,
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          elevation: 8,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.network(
                                controller.response![i].newsImage ?? "",
                                fit: BoxFit.cover,
                              ),
                              // Gap(10),
                              Text(
                                controller.response![i].newsTitle ?? "",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
