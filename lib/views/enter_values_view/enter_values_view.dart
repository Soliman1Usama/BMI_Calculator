import 'package:bmi/views/enter_values_view/widget/enter_values_view_body.dart';
import 'package:flutter/material.dart';

class EnterValuesView extends StatelessWidget {
  final bool isMale;

  const EnterValuesView({
    Key? key,
    required this.isMale,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EnterValuesViewBody(
        isMale: isMale,
      ),
    );
  }
}
