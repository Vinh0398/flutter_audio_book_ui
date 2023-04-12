import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/onboarding_ui/widget/book_category_widget.dart';
import 'package:flutter_audio_book_ui/onboarding_ui/widget/next_btn_widget.dart';
import 'package:flutter_audio_book_ui/onboarding_ui/widget/onboarding_title_widget.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191815),
      body: buildOnBoardingBody((){}),
    );
  }
}

Widget buildOnBoardingBody(Function()? onPress) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 22),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 51),
          child: OnBoardingTitleWidget(),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 75),
            child: BookCategoryWidget(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 55),
          child: NextButtonWidget(onPress: onPress),
        )
      ],
    ),
  );
}
