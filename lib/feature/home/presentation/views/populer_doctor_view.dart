import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/home/presentation/views/populer_doctor_body.dart';
import 'package:flutter/material.dart';

class PopulerDoctorView extends StatelessWidget {
  const PopulerDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Assets.splashViewBackground,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          PopulerDoctorBody(),
        ],
      ),
    );
  }
}
