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

  /// The function to be executed when the image is clicked.
  final void Function()? onTap;

  const SvgIconComponent({
    super.key,
    required this.imagePath,
    this.color = Colors.black,
    this.size = 100,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.white,
      onTap: onTap,
      child: SvgPicture.asset(
        width: size,
        height: size,
        imagePath,
        colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        fit: BoxFit.contain,
      ),
    );
  }
}
