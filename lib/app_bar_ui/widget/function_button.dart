import 'package:flutter/material.dart';
import 'package:flutter_audio_book_ui/const/dimens.dart';

class FunctionButton extends StatefulWidget {
  final Widget child;
  final Color? backgroundColor;
  final Function()? onPress;
  const FunctionButton({
    Key? key,
    required this.child,
    this.backgroundColor,
    this.onPress,
  }) : super(key: key);

  @override
  State<FunctionButton> createState() => _FunctionButtonState();
}

class _FunctionButtonState extends State<FunctionButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPress,
      child: Container(
        height: Dimens.size48,
        width: Dimens.size48,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          shape: BoxShape.circle,
        ),
        child: widget.child,
      ),
    );
  }
}
