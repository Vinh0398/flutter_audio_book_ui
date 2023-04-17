import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';
import 'package:flutter_audio_book_ui/model/book_entity.dart';

class BookInformationWidget extends StatelessWidget {
  final String ratePoint;
  final String bookLanguage;
  final String bookTime;
  final String bookName;
  final String bookAuthor;

  const BookInformationWidget({
    Key? key,
    required this.ratePoint,
    required this.bookLanguage,
    required this.bookTime,
    required this.bookName,
    required this.bookAuthor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildBookInformation(),
        Padding(
          padding: const EdgeInsets.only(
            top: Dimens.size20,
          ),
          child: _buildBookName(
            bookName,
            bookAuthor,
          ),
        ),
      ],
    );
  }

  Widget _buildBookInformation() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildIcon(
          const Icon(
            Icons.star_rate_rounded,
            color: AppColors.access,
          ),
          ratePoint,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.size20,
          ),
          child: _buildIcon(
            const Icon(
              Icons.language_rounded,
              color: AppColors.access,
            ),
            bookLanguage,
          ),
        ),
        _buildIcon(
          const Icon(
            Icons.mic_rounded,
            color: AppColors.access,
          ),
          bookTime,
        ),
      ],
    );
  }

  Widget _buildBookName(String bookName, String bookAuthor) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            bookName,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Dimens.size25,
              color: AppColors.textColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: Dimens.size8,
            ),
            child: Text(
              bookAuthor,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: Dimens.size16,
                color: AppColors.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(Icon iconChild, String iconTitle) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        iconChild,
        Padding(
          padding: const EdgeInsets.only(
            left: Dimens.size5,
          ),
          child: Text(
            iconTitle,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: Dimens.size14,
                color: AppColors.textColor),
          ),
        ),
      ],
    );
  }
}
