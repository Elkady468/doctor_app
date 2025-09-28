import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/find_doctor_body.dart';
import 'package:flutter/material.dart';

class FindDoctorsView extends StatelessWidget {
  const FindDoctorsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Image.asset(
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            Assets.splashViewBackground,
          ),
          FindDoctorBody(),
        ],
      ),
    );
  }
}
