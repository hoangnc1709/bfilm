import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ColorButton extends StatelessWidget {
  const ColorButton({
    super.key,
    this.colors = const [
      Color(0xFFFF35B8),
      Color(0xFF09FACA),
    ],
    required this.child,
    this.onTap,
    this.borderRadius = 50,
    this.strokeWidth = 4,
    this.width = double.infinity,
  });
  final List<Color> colors;
  final Widget child;
  final Function()? onTap;
  final double borderRadius;
  final double strokeWidth;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: const Color.fromARGB(42, 255, 255, 255),
      ),
      width: width,
      child: OutlineGradientButton(
        padding: const EdgeInsets.all(16),
        onTap: onTap,
        gradient: LinearGradient(colors: colors),
        strokeWidth: strokeWidth,
        radius: Radius.circular(borderRadius),
        child: Center(child: child),
      ),
    );
  }
}
