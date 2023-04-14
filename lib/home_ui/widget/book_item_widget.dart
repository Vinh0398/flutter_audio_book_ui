import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';
import 'package:flutter_audio_book_ui/model/book_entity.dart';

class BookItemWidget extends StatefulWidget {
  final BookEntity bookData;
  final Function()? onPress;
  const BookItemWidget({
    Key? key,
    required this.bookData, this.onPress,
  }) : super(key: key);

  @override
  State<BookItemWidget> createState() => _BookItemWidgetState();
}

class _BookItemWidgetState extends State<BookItemWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      child: SizedBox(
        width: Dimens.size160,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            bookImage(widget.bookData.bookImage),
            Padding(
              padding: const EdgeInsets.only(top: Dimens.size14),
              child: bookName(widget.bookData.bookName),
            ),
            Padding(
              padding: const EdgeInsets.only(top: Dimens.size5),
              child: bookAuthor(widget.bookData.bookAuthor),
            ),
          ],
        ),
      ),
    );
  }

  Widget bookImage(String image) {
    return AspectRatio(
      aspectRatio: 160 / 235,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget bookName(String name) {
    return Text(
      name,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: Dimens.size16,
        color: AppColors.textColor,
      ),
    );
  }

  Widget bookAuthor(String author) {
    return Text(
      author,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: Dimens.size14,
        color: AppColors.textColor,
      ),
    );
  }
}
