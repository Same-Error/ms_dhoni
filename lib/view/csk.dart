import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:ms_dhoni/controller/csk.dart';
import 'package:provider/provider.dart';

class Csk extends StatelessWidget {
  const Csk({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<CskController>();
    if (controller.response == null) {
      controller.getCsk();
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          "MS Dhoni-The App",
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
      ),
      body: controller.response == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : controller.response!.isEmpty
              ? Text("No Data Available")
              : GridView.builder(
                  itemCount: controller.response!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, i) {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 200,
                              width: 200,
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                elevation: 10,
                                child: Image.network(
                                  controller.response![i].image ?? "",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Gap(10),
                          ],
                        ),
                      ),
                    );
                  },
                ),
    );
  }
}
