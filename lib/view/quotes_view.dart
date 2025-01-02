import 'package:flutter/material.dart';
import 'package:ms_dhoni/controller/quotes_controller.dart';
import 'package:provider/provider.dart';

class QuotesView extends StatelessWidget {
  const QuotesView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<QuotesController>();
    if (controller.response == null) {
      controller.getQuote();
    }
    return Scaffold(

      body: controller.response == null
          ? const Center(child: CircularProgressIndicator())
          : GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemCount: controller.response!.length,
              itemBuilder: (context, i) {
                return Center(
                  child: SizedBox(
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
                );
              },
            ),
    );
  }
}
