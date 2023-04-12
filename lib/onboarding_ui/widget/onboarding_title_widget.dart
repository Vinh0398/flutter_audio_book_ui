import 'package:flutter/material.dart';

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
            fontSize: 40,
            color: Color(0xFFF1EEE3),
          ),
        ),
        TextSpan(
          text: "Genre",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 40,
            color: Color(0xFFE36166),
          ),
        ),
      ]),
      maxLines: 2,
    );
  }
}
