import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ms_dhoni/controller/family.dart';
import 'package:provider/provider.dart';

class Family extends StatelessWidget {
  const Family({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<FamilyController>();
    if (controller.response == null) {
      controller.getFam();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Family",
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
          : GridView.builder(
              itemCount: controller.response!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, i) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          elevation: 10,
                          child: Card(
                            elevation: 3,
                            child: Image.network(
                              controller.response![i].image ?? "",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Gap(8),
                      Text(
                        controller.response![i].title ?? "",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
