import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/app_bar_ui/widget/function_button.dart';
import 'package:flutter_audio_book_ui/app_bar_ui/widget/title_widget.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatefulWidget {
  final Widget leftFunctionChild;
  final Color? leftFunctionBackgroundColor;
  final Function()? leftFunctionOnPress;
  final Widget rightFunctionChild;
  final Color? rightFunctionBackgroundColor;
  final Function()? rightFunctionOnPress;
  final String? title;

  const CustomAppbar({
    Key? key,
    required this.leftFunctionChild,
    this.leftFunctionBackgroundColor,
    this.leftFunctionOnPress,
    required this.rightFunctionChild,
    this.rightFunctionBackgroundColor,
    this.rightFunctionOnPress,
    this.title,
  }) : super(key: key);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.size5,
        horizontal: Dimens.size16,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FunctionButton(
            backgroundColor: widget.leftFunctionBackgroundColor,
            onPress: widget.leftFunctionOnPress ?? context.pop,
            child: widget.leftFunctionChild,
          ),
          Expanded(
            child: TitleWidget(
              title: widget.title,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: FunctionButton(
              onPress: widget.rightFunctionOnPress,
              backgroundColor: widget.rightFunctionBackgroundColor,
              child: widget.rightFunctionChild,
            ),
          )
        ],
      ),
    );
  }
}
