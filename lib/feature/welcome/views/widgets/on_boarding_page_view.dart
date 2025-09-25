import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/welcome/data/models/on_boarding_model.dart';
import 'package:doctor_app/feature/welcome/views/widgets/on_boarding_info.dart';
import 'package:flutter/material.dart';

class onBoardingPageView extends StatelessWidget {
  onBoardingPageView({super.key});
  List<OnBoardingModel> items = [
    OnBoardingModel(doctorImage: Assets.Doctor1, text1: "Find Trusted Doctors"),
    OnBoardingModel(doctorImage: Assets.Doctor2, text1: "Choose Best Doctors"),
    OnBoardingModel(doctorImage: Assets.Doctor3, text1: "Easy Appointments"),
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return onBoardingInfo(onBoardingModel: items[index]);
      },
    );
  }
}
