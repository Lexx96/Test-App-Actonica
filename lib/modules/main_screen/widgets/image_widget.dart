import 'package:flutter/material.dart';

/// Виджет вывода изображения товара
/// принимает размер изображения double [sizeImage],
/// путь для фотографии String [imagePath]
class ImageWidget extends StatelessWidget {
  final double sizeImage;
  final String imagePath;

  const ImageWidget({
    Key? key,
    required this.sizeImage,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeImage,
      width: sizeImage,
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      clipBehavior: Clip.hardEdge,
    );
  }
}
