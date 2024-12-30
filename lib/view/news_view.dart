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
      appBar: AppBar(
        title: const Text(
          "News",
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
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: controller.response!.length,
              itemBuilder: (context, i) {
                return Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 400,
                        width: double.infinity,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          elevation: 10,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.network(
                                controller.response![i].newsImage ?? "",
                                fit: BoxFit.cover,
                              ),
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
