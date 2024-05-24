import 'dart:math';


import 'package:bmi/core/utils/styles.dart';
import 'package:bmi/core/widgets/custom_app_bar.dart';
import 'package:bmi/core/widgets/custom_button.dart';
import 'package:bmi/views/enter_values_view/widget/custom_dialog.dart';
import 'package:bmi/views/enter_values_view/widget/input_value_card.dart';
import 'package:flutter/material.dart';
import 'package:wheel_slider/wheel_slider.dart';

class EnterValuesViewBody extends StatefulWidget {
  final bool isMale;

  const EnterValuesViewBody({super.key, required this.isMale});

  @override
  State<EnterValuesViewBody> createState() => _EnterValuesViewBodyState();
}

class _EnterValuesViewBodyState extends State<EnterValuesViewBody> {
  int height = 180;


  @override
  void dispose() {
    super.dispose();
  }

  int weight = 40;

  int age = 20;


  @override
  Widget build(BuildContext context) {
    // String gender = widget.isMale ? 'Male':'Female';

    double bmi = weight / pow((height / 100), 2);
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 88),
              child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Styles.green,
                  )),
            ),
            const CustomAppBar()
          ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InputValueCard(
                  value: weight,
                  inputInfo: 'Weight (kg)',
                  onPressedPlus: () {
                    setState(() {
                      weight++;
                    });
                  },
                  onPressedMinus: () {
                    setState(() {
                      weight--;
                    });
                  },
                  minusTag: 'weight-',
                  plusTag: 'weight+',
                ),
                const SizedBox(
                  width: 30,
                ),
                InputValueCard(
                  value: age,
                  inputInfo: 'Age',
                  onPressedPlus: () {
                    setState(() {
                      age++;
                    });
                  },
                  onPressedMinus: () {
                    setState(() {
                      age--;
                    });
                  },
                  minusTag: 'age-',
                  plusTag: 'age+',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 205,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(
                  30,
                ),
                color: Styles.lightOrange,
              ),
              child: Center(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25, bottom: 15),
                      child: Column(
                        children: [
                          const Text(
                            'Height (cm)',
                            style: Styles.textStyle16,
                          ),
                          Text(
                            '${height.toString()}',
                            style: const TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.w700,
                                color: Styles.lightBrown),
                          ),
                          SizedBox(
                            width: 200,
                            child: WheelSlider(
                              lineColor: Colors.grey,
                              enableAnimation: false,
                              pointerColor: Colors.black,
                              totalCount: 220,
                              initValue: height,
                              onValueChanged: (value) {
                                setState(() {
                                  height = value;
                                });
                              },
                            ),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 50, bottom: 10, right: 30, left: 30),
            child: CustomButton(
              backgroundColor: Styles.green,
              text: 'Calculate',
              onPressed: () {
                showDialog(context: context,
                    builder: (context) =>
                        CustomDialog(bmi: bmi,
                          height: height.toInt(),
                          age: age,
                          weight: weight,
                          isMale: widget.isMale,));
              },
              buttonHeight: 70,
              buttonWidth: 360,

              borderRadius: BorderRadius.circular(25),
            ),
          )
        ],
      ),
    );
  }
}


