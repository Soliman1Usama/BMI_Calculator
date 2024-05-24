import 'package:auto_size_text/auto_size_text.dart';
import 'package:bmi/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 70, right: 70, top: 88),
          child: Row(
            children: [
              AutoSizeText(
                'BMI ',
                minFontSize: 18,
                style: Styles.textStyle32.copyWith(color: Styles.orange,),
              ),
              AutoSizeText(
                minFontSize: 18,
                style: Styles.textStyle32.copyWith(color: Styles.green),
                'Calculator',
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 40, left: 50, right: 50, bottom: 30),
          child: AutoSizeText(maxLines: 1,minFontSize: 16,'Please choose your gender', style: Styles.textStyle24.copyWith(fontWeight: FontWeight.bold)),
        ),
      ],
    );
  }
}
