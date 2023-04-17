import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';

class TitleWidget extends StatelessWidget {
  final String? title;

  const TitleWidget({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title ?? "",
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: Dimens.size20,
          color: AppColors.textColor,
        ),
      ),
    );
  }
}
