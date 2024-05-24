
import 'package:bmi/core/utils/assets.dart';
import 'package:bmi/core/utils/styles.dart';
import 'package:bmi/core/widgets/custom_app_bar.dart';
import 'package:bmi/core/widgets/custom_button.dart';
import 'package:bmi/views/enter_values_view/enter_values_view.dart';
import 'package:bmi/views/home_view/widgets/custom_gender_card.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}


class _HomeViewBodyState extends State<HomeViewBody> {

  bool isMale = true;

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery
        .sizeOf(context)
        .height;
    return SingleChildScrollView(

      child: Column(
        children: [
          const CustomAppBar(),
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10, bottom: 30),
            child: CustomGenderCard(backGroundColor: isMale ? Colors.lightGreen : Styles.greenLight ,
              isMale: isMale,
              onTap: () {
                setState(() {
                  isMale=true;
                });
              },
              backgroundColor: Styles.greenLight,
              textColor: isMale ? Colors.white: Styles.textGreen,
              genderLogo: AssetsData.male,
              genderText: 'Male  ',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomGenderCard(backGroundColor: isMale ? Styles.lightOrange:Colors.orangeAccent ,
              isMale: isMale,
              onTap: () {
                setState(() {
                  isMale=false;
                });
              },
              backgroundColor: Styles.lightOrange,
              textColor: isMale ? Styles.lightBrown : Colors.white,
              genderLogo: AssetsData.female,
              genderText: 'Female',
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: height / 7.6, top: height / 14, right: 20, left: 20),
            child: CustomButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => EnterValuesView(isMale: isMale),
                  ),
                );              },
              backgroundColor: Styles.green,
              text: 'Continue',
              buttonWidth: 360,
              borderRadius: BorderRadius.circular(25),
              buttonHeight: 70,
            ),
          )
        ],
      ),
    );
  }


}
