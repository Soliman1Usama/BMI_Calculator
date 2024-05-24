import 'package:flutter/material.dart';

import 'views/home_view/home_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const BMICalculator());}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
    );
  }
}