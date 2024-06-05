import 'package:flutter/material.dart';

class ImageAssetComponent extends StatelessWidget {


  final String pathImage;

  /// only give the width of the image because the image will be scaled to fit the width,
  /// for default the width is 200
  final double width;
  final double height;

  final BoxFit fit;

  const ImageAssetComponent({
    super.key,
    required this.pathImage,
    this.width = 200,
    this.height = 200,
    this.fit = BoxFit.contain,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      pathImage, 
      width: width,
      height: height,
      fit: fit,
      filterQuality: FilterQuality.high,
    );
  }
}