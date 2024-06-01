import 'package:flutter/material.dart';
import 'package:landing_page/Components/elevation_card_component.dart';
import 'package:landing_page/Components/image_asset_component.dart';
import 'package:landing_page/Components/sans_font_component.dart';

class AnimatedCardImageComponent extends StatefulWidget {
  final String imagePath;
  final String? text;
  final bool reverse;
  final Widget? child;

  /// The width of the card
  /// Default value is 250
  final double width;
  final double height;

  const AnimatedCardImageComponent({
    super.key,
    required this.imagePath,
    this.text,
    this.reverse = false,
    this.child,
    this.width = 250,
    this.height = 250,
  });

  @override
  State<AnimatedCardImageComponent> createState() => _AnimatedCardImageComponentState();
}

class _AnimatedCardImageComponentState extends State<AnimatedCardImageComponent>
    with SingleTickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..repeat(reverse: true);

  late Animation<Offset> animation = Tween(
    begin: widget.reverse ? const Offset(0, 0.08) : Offset.zero,
    end: widget.reverse ? Offset.zero : const Offset(0, 0.08),
  ).animate(controller);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: ElevationCardComponent(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            widget.child ??
                ImageAssetComponent(
                  pathImage: widget.imagePath,
                  width: widget.width,
                  height: widget.height,
                ),
            const SizedBox(
              height: 10,
            ),
            if (widget.text != null)
              SansBold(
                text: widget.text!,
              ),
          ],
        ),
      ),
    );
  }
}
