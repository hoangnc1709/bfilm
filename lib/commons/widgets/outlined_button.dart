import 'package:bfilm/commons/data/spacing.dart';
import 'package:flutter/material.dart';

class BOutLineButton extends StatelessWidget {
  const BOutLineButton({
    super.key,
    this.icon,
    required this.lableText,
    this.onPressed,
    this.border = 14,
  });
  final String lableText;
  final Widget? icon;
  final Function()? onPressed;
  final double border;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        // border color
        side: MaterialStateProperty.all(
          const BorderSide(
            color: Colors.white,
            width: 1,
          ),
        ),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 14),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(border),
            ),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) icon!,
          horizontalSpacing16,
          Text(
            lableText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
