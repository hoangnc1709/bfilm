// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/annotations.dart';
import 'package:bfilm/features/authentication/sign-in/ui/sign_in_page.dart';
import 'package:bfilm/features/authentication/sign-up/ui/sign_up_page.dart';
import 'package:bfilm/features/home_page/ui/pages/home_page.dart';
import 'package:bfilm/features/intro/ui/pages/intro_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: IntroPage, path: '/intro'),
    AutoRoute(page: SignInPage, path: "/sign-in"),
    AutoRoute(page: SignUpPage, path: "/sign-up")
  ],
)
class $AppRouter {}
