import 'package:doctor_app/feature/home/presentation/views/widgets/find_doctor_appbar.dart';
import 'package:flutter/material.dart';

class FindDoctorBody extends StatelessWidget {
  const FindDoctorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [SizedBox(height: 50), FindDoctorAppbar()]);
  }
}
