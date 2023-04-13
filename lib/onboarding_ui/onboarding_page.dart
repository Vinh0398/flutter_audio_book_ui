import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';
import 'package:flutter_audio_book_ui/onboarding_ui/widget/book_category_widget.dart';
import 'package:flutter_audio_book_ui/onboarding_ui/widget/next_btn_widget.dart';
import 'package:flutter_audio_book_ui/onboarding_ui/widget/onboarding_title_widget.dart';
import 'package:flutter_audio_book_ui/route/routes.dart';
import 'package:go_router/go_router.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundSplash,
      body: Stack(
        children: [
          _buildPositionedBackgroundImage(),
          _buildPositionedTopTitle(),
          _buildPositionedBottomButton(context),
        ],
      ),
    );
  }

  Positioned _buildPositionedBottomButton(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: Dimens.size22,
      child: _buildNextButton(
        onPress: () => context.go(
          RoutePath.homePagePath,
        ),
      ),
    );
  }

  Positioned _buildPositionedTopTitle() {
    return Positioned(
      top: Dimens.size73,
      left: 0,
      right: 0,
      child: _buildTitle(),
    );
  }

  Positioned _buildPositionedBackgroundImage() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: Dimens.size142,
      child: _buildBackground(),
    );
  }

  Widget _buildBackground() => const BookCategoryWidget();

  Widget _buildTitle() => const OnBoardingTitleWidget();

  Widget _buildNextButton({required Function() onPress}) {
    return NextButtonWidget(onPress: onPress);
  }
}
