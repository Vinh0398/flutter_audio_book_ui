import 'package:flutter_audio_book_ui/book_detail_ui/book_detail_page.dart';
import 'package:flutter_audio_book_ui/chapter_ui/book_chapter_page.dart';
import 'package:flutter_audio_book_ui/home_ui/home_page.dart';
import 'package:flutter_audio_book_ui/onboarding_ui/onboarding_page.dart';
import 'package:go_router/go_router.dart';

class RoutePath {
  RoutePath._();

  static const onBoardingPath = "/";
  static const homePagePath = "/home";
  static const bookDetailPath = "bookDetail";
  static const bookChapterPath = "chapter";
}

final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: RoutePath.onBoardingPath,
    routes: [
      _onBoardingRoute(),
      _homePageRoute(),
    ]);

GoRoute _onBoardingRoute() {
  return GoRoute(
    path: RoutePath.onBoardingPath,
    builder: (context, state) {
      return const OnBoardingPage();
    },
  );
}

GoRoute _homePageRoute() {
  return GoRoute(
    path: RoutePath.homePagePath,
    pageBuilder: (context, state) {
      return const NoTransitionPage(
        child: HomePage(),
      );
    },
    routes: [
      GoRoute(
          path: "${RoutePath.bookDetailPath}/:bookId",
          builder: (context, state) {
            return BookDetailPage(
              bookId: state.params['bookId'],
            );
          },
          routes: [
            GoRoute(
              path: RoutePath.bookChapterPath,
              builder: (context, state){
                return const BookChapterPage();
              }
            )
          ]),
    ],
  );
}
