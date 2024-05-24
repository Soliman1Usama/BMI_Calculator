import 'package:bmi/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
        required this.backgroundColor,
        this.borderRadius,

        required this.text, this.fontSize, this.buttonWidth, this.buttonHeight, required this.onPressed,  this.textStyle});

  final Color backgroundColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;

  final double? buttonWidth;
  final double? buttonHeight;

  final VoidCallback onPressed; // Callback function for onPressed event

  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            ),
          ),
          child: Text(
            text,
            style: textStyle ?? Styles.textStyle32.copyWith(color: Colors.white),
          )),
    );
  }
}