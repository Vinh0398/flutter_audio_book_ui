import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookCategoryWidget extends StatelessWidget {
  const BookCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SvgPicture.asset(
        "assets/onboarding/Categories.svg",
        fit: BoxFit.cover,
      ),
    );
  }
}
