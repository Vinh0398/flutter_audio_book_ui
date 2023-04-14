import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/colors.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';

class NextButtonWidget extends StatefulWidget {
  final Function()? onPress;

  const NextButtonWidget({Key? key, required this.onPress}) : super(key: key);

  @override
  State<NextButtonWidget> createState() => _NextButtonWidgetState();
}

class _NextButtonWidgetState extends State<NextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Dimens.size16),
      child: MaterialButton(
        height: Dimens.size64,
        minWidth: double.infinity,
        onPressed: widget.onPress,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.size100),
        ),
        color: AppColors.access,
        child: const Text(
          'Next',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: Dimens.size16,
            color: Color(0xFFF1EEE3),
          ),
        ),
      ),
    );
  }
}
