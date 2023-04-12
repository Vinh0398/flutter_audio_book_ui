
import 'package:flutter_audio_book_ui/onboarding_ui/onboarding_page.dart';
import 'package:go_router/go_router.dart';

class RoutePath {
  RoutePath._();

  static const onBoardingPath = "/";
  static const homePagePath = "/home";
  static const bookDetailPath = "bookDetail";
}

get router => GoRouter(
        debugLogDiagnostics: true,
        initialLocation: RoutePath.onBoardingPath,
        routes: [
          _onBoardingRoute(),
        ]);

GoRoute _onBoardingRoute() {
  return GoRoute(
    path: RoutePath.onBoardingPath,
    builder: (context, state) {
      return const OnBoardingPage();
    },
  );
}
