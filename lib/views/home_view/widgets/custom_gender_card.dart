import 'package:auto_size_text/auto_size_text.dart';
import 'package:bmi/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomGenderCard extends StatelessWidget {
  const CustomGenderCard(
      {super.key, required this.genderLogo, required this.backgroundColor, required this.textColor, required this.genderText, required this.onTap, required this.isMale, required this.backGroundColor});

  final String genderText;
  final String genderLogo;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onTap;

  final bool isMale;// Callback function for onPressed event

  final Color backGroundColor;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            30,
          ),
          color: backGroundColor,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          mainAxisAlignment: MainAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Center(
                child: AutoSizeText(
                  minFontSize: 16,
                  genderText,
                  style: Styles.textStyle32.copyWith(color: textColor),
                )),
            const SizedBox(
              width: 70,
            ),
            Center(child: SvgPicture.asset(genderLogo)),
          ],
        ),
      ),
    );
  }
}
