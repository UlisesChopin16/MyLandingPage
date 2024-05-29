import 'package:flutter/material.dart';

class ElevationCardComponent extends StatelessWidget {

  final Widget child;

  const ElevationCardComponent({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitHeight,
      child: Card(
        color: Colors.white,
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadowColor: Colors.deepPurple,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: FittedBox(child: child),
        ),
      ),
    );
  }
}