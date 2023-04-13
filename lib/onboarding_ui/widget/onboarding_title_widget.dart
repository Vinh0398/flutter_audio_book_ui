import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';

class OnBoardingTitleWidget extends StatelessWidget {
  const OnBoardingTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: const TextSpan(children: <TextSpan>[
        TextSpan(
          text: "Choose Your Favourite ",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: Dimens.size40,
            color: AppColors.titleColor,
          ),
        ),
        TextSpan(
          text: "Genre",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: Dimens.size40,
            color: AppColors.access,
          ),
        ),
      ]),
      maxLines: 2,
    );
  }
}
