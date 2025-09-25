import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/welcome/data/models/on_boarding_model.dart';
import 'package:flutter/material.dart';

class onBoardingInfo extends StatelessWidget {
  const onBoardingInfo({super.key, required this.onBoardingModel});
  final OnBoardingModel onBoardingModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 19),

          child: Image.asset(
            onBoardingModel.doctorImage,
            height: MediaQuery.of(context).size.height * .41379,
            width: double.infinity,
          ),
        ),
        SizedBox(height: 80),
        Text(onBoardingModel.text1, style: Styles.Medium28(context)),
        SizedBox(height: 11),
        Text(
          textAlign: TextAlign.center,
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
          style: Styles.Reguler14(context),
        ),
      ],
    );
  }
}
