import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';
import 'package:flutter_audio_book_ui/gen/assets.gen.dart';

class BookImageBackGround extends StatelessWidget {
  final String bookImageUrl;

  const BookImageBackGround({
    Key? key,
    required this.bookImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.size330,
      child: Stack(
        children: [
          Positioned(
            top: Dimens.size9,
            bottom: Dimens.size70,
            left: Dimens.size10,
            right: Dimens.size10,
            child: Image.asset(
              Assets.images.bookBackground.path,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            top: Dimens.size73,
            left: Dimens.size44,
            right: Dimens.size44,
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.size14),
              ),
              child: Image.asset(
                bookImageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
