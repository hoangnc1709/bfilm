import 'package:auto_route/auto_route.dart';
import 'package:bfilm/router/app_route.gr.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final StackRouter router;

  @override
  void initState() {
    router = AutoRouter.of(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                router.push(const IntroRoute());
              },
              child: const Text('Home Page'),
            ),
          ],
        ),
      ),
    );
  }
}
