import 'package:bfilm/commons/data/spacing.dart';
import 'package:bfilm/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class BLayout extends StatelessWidget {
  const BLayout({
    super.key,
    this.child = const SizedBox(),
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.backGround.path),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              verticalSpacing40,
              Assets.images.avatar.image(
                height: 200,
                width: 200,
              ),
              verticalSpacing60,
              child,
            ],
          ),
        ),
      ),
    );
  }
}
