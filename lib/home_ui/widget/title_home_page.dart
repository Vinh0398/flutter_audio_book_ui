import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';

class HomePageTitle extends StatelessWidget {
  const HomePageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.size5,
        horizontal: Dimens.size16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Hey, ',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: Dimens.size22,
                    color: AppColors.textColor,
                  ),
                ),
                TextSpan(
                  text: 'User!',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: Dimens.size22,
                    color: AppColors.access,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "What will you listen today?",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Dimens.size22,
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
    );
  }
}
