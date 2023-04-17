import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';

class ListBookTitleWidget extends StatelessWidget {
  final String bookCategoryTitle;
  final Function()? onPress;

  const ListBookTitleWidget({
    Key? key,
    required this.bookCategoryTitle,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: Dimens.size22),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          listBookTitle(bookCategoryTitle),
          Align(
            alignment: Alignment.centerRight,
            child: expandListBtn(onPress),
          ),
        ],
      ),
    );
  }

  Widget listBookTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: Dimens.size20,
        color: AppColors.textColor,
      ),
      textAlign: TextAlign.center,
    );
  }

  Widget expandListBtn(Function()? onPress) {
    return TextButton(
      onPressed: onPress,
      child: const Text(
        'See all',
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: Dimens.size14,
          color: AppColors.access,
        ),
      ),
    );
  }
}
