import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MaterialButton(
        height: 64,
        minWidth: double.infinity,
        onPressed: widget.onPress,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        color: const Color(0xFFE06065),
        child: const Text(
          'Next',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xFFF1EEE3),
          ),
        ),
      ),
    );
  }
}
