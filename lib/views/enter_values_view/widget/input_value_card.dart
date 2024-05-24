
import 'package:bmi/core/utils/styles.dart';
import 'package:flutter/material.dart';

class InputValueCard extends StatelessWidget {


  const InputValueCard({super.key, required this.inputInfo, required this.onPressedPlus, required this.plusTag, required this.minusTag, required this.onPressedMinus, required this.value});
  final String inputInfo;

  final VoidCallback onPressedPlus;
  final VoidCallback onPressedMinus;

  final String plusTag;// Callback function for onPressed event
  final String minusTag;// Callback function for onPressed event

  final  int value;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: 184,
      width: width/2.4,
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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            inputInfo,
            style: Styles.textStyle16,
          ),
           Text(
            '$value',
            style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w700,
                color: Styles.lightBrown
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: onPressedMinus,
                heroTag: minusTag,
                mini: true,
                backgroundColor: Colors.white,
                child: const Icon(
                  size:40,
                  color: Styles.lightBrown,
                  Icons.remove,
                ),
              ),
              const SizedBox(width: 30,),
              FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: onPressedPlus,
                heroTag: plusTag,
                mini: true,
                backgroundColor: Colors.white,

                child: const Icon(
                  size:40,
                  color: Styles.lightBrown,
                  Icons.add,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
