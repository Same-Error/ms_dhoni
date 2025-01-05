import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewPage extends StatelessWidget {
  final image;
  const PhotoViewPage({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF880E4F),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: PhotoView(
        imageProvider: NetworkImage(image),
        minScale: PhotoViewComputedScale.contained,
      ),
    );
  }
}
