import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIconComponent extends StatelessWidget {
  /// The path of the image to be displayed.
  final String imagePath;

  /// The color of the image.
  /// for default is black.
  final Color color;

  /// The size of the image.
  /// for default is 100.
  final double size;

  const SvgIconComponent({
    super.key,
    required this.imagePath,
    this.color = Colors.black,
    this.size = 100,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      width: size,
      height: size,
      imagePath,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      fit: BoxFit.contain,
    );
  }
}
