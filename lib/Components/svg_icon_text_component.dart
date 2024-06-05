import 'package:flutter/material.dart';
import 'package:landing_page/Components/sans_font_component.dart';
import 'package:landing_page/Components/svg_icon_component.dart';

class SvgIconTextComponent extends StatefulWidget {
  /// if animate is true.
  /// the color of the icon is black.
  /// when hovered the color will change to given color.
  /// the color of the icon
  /// by default is black.
  final Color color;

  /// Animate the container when hovered.
  /// by default is false.
  /// if true, the container will animate when hovered.
  final bool animate;

  /// The size of the container.
  final double size;

  /// The size of the text.
  /// by default is 12.
  final double sizeText;

  /// The text to be displayed.
  final String text;
  final String imagePath;

  /// how to align the text.
  /// for default is center.
  final TextAlign textAlign;

  /// The function to be executed when the container is clicked.
  final void Function()? onTap;

  const SvgIconTextComponent({
    super.key,
    required this.imagePath,
    required this.text,
    required this.size,
    this.onTap,
    this.textAlign = TextAlign.center,
    this.animate = false,
    this.color = Colors.black,
    this.sizeText = 12,
  });

  @override
  State<SvgIconTextComponent> createState() => _SvgIconTextComponentState();
}

class _SvgIconTextComponentState extends State<SvgIconTextComponent> with TickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    duration: duration,
    vsync: this,
  );

  late Color color = widget.animate ? Colors.black : widget.color;

  static const Duration duration = Duration(milliseconds: 200);

  late double height = widget.size;
  late double width = widget.size;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    controller.removeListener(() {});
    super.dispose();
  }

  // this is a method that will help us to calculate the size of the text
  // depending on the size.
  double calculateTextSize() {
    double size = widget.size;
    size = size / 3;
    return size;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.white,
      onTap: widget.onTap,
      child: MouseRegion(
        onEnter: (event) {
          if (!widget.animate) return;
          setState(() {
            color = widget.color;
            controller.forward();
            height = 50 + widget.size;
          });
        },
        onExit: (event) {
          if (!widget.animate) return;
          setState(() {
            color = Colors.black;
            controller.reverse();
            height = widget.size;
          });
        },
        child: AnimatedContainer(
          duration: duration,
          curve: Curves.easeInOut,
          height: widget.animate ? height : 50 + widget.size,
          // width: width + 20,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgIconComponent(
                  imagePath: widget.imagePath,
                  size: width,
                  color: color,
                ),
                Flexible(
                  child: Sans(
                    text: widget.text,
                    textAlign: widget.textAlign,
                    size: widget.sizeText,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
