import 'package:bfilm/router/app_route.gr.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(BFilm());
}

class BFilm extends StatelessWidget {
  BFilm({super.key});
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'BFilm',
      theme: ThemeData(
        fontFamily: 'Sans-Serif',
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
