import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ms_dhoni/controller/autos_controller.dart';
import 'package:provider/provider.dart';

class AutosView extends StatelessWidget {
  const AutosView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<AutosController>();
    if (controller.response == null) {
      controller.getAuto();
    }

    return Scaffold(

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
                      const Gap(8),
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
