import 'package:flutter/material.dart';
import 'package:ms_dhoni/controller/selfie.dart';
import 'package:provider/provider.dart';

class Selfie extends StatelessWidget {
  const Selfie({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<SelfieController>();
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: const Text(
          "Selfie",
        ),
      ),
      body: controller.response == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: controller.response!.length,
              itemBuilder: (context, i) {
                return Center(child: Text(controller.response![i].id ?? ""));
              }),
    );
  }
}
