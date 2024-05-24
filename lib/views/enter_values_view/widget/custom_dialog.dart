import 'dart:math';


import 'package:bmi/core/utils/assets.dart';
import 'package:bmi/core/utils/styles.dart';
import 'package:bmi/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key, required this.bmi, required this.height, required this.age, required this.weight, required this.isMale});

  final bool isMale;
  final double bmi;
  final int height;
  final int age;

  final int weight;




  @override
  Widget build(BuildContext context) {

    String gender = isMale ? 'Male': 'Female';

    double bestMinWeight = 18.5*pow((height/100),2);
    double bestMaxWeight = 24.5*pow((height/100),2);

    return Dialog(
      child: Container(
        height: 430,
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
          color: Styles.greenLight,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Your BMI:',style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w500,color: Colors.black),),
              Text(bmi.toString().substring(0,4),style: Styles.textStyle32.copyWith(fontSize: 64,color: Styles.green),),
              SvgPicture.asset(AssetsData.bmiBar,width: 250,),
              const Divider(
                indent: 30,
                endIndent: 30,
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text('$weight kg',style: Styles.textStyle20,),
                    const Spacer(),
                    Text('$height cm',style: Styles.textStyle20),
                    const Spacer(),
                    Text('$age',style: Styles.textStyle20),
                    const Spacer(),
                     Text(gender,style: Styles.textStyle20),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Row(
                  children: [
                    Text('weight',style: Styles.textStyle14,),
                    Spacer(),
                    Text('       height',style: Styles.textStyle14),
                    Spacer(),
                    Text('\t\tAge',style: Styles.textStyle14),
                    Spacer(),
                    Text('Gender',style: Styles.textStyle14),
                  ],
                ),
              ),
              Text('Healthy weight for the height:',style: Styles.textStyle16.copyWith(color: Colors.black,fontWeight: FontWeight.w500),),
              Text('${bestMinWeight.toString().substring(0,5)} kg - ${bestMaxWeight.toString().substring(0,5)} kg',style: Styles.textStyle24.copyWith(color: Styles.green,fontWeight: FontWeight.w700),),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: CustomButton(onPressed: (){Navigator.pop(context);},text: 'Close',backgroundColor: Styles.green,borderRadius: BorderRadius.circular(25),buttonWidth: 250,),
              )

            ],
          ),
        ),
      ),
    );
  }
}
