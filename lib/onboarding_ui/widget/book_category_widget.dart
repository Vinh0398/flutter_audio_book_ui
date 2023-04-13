import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookCategoryWidget extends StatelessWidget {
  const BookCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      Assets.svgs.categories,
      fit: BoxFit.cover,
    );
  }
}
