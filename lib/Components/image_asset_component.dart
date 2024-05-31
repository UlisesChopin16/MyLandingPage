import 'package:flutter/material.dart';

class ImageAssetComponent extends StatelessWidget {


  final String pathImage;

  /// only give the width of the image because the image will be scaled to fit the width,
  /// for default the width is 200
  final double width;

  const ImageAssetComponent({
    super.key,
    required this.pathImage,
    this.width = 200,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      pathImage, 
      width: width,
      height: width,
      fit: BoxFit.contain,
      filterQuality: FilterQuality.high,
    );
  }
}