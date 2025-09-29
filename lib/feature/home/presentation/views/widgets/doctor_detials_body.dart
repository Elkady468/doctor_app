import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/doctor_deatails_item.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/doctor_tap.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/find_doctor_appbar.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/map_container.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/service_section.dart';
import 'package:flutter/material.dart';

class DoctorDetialsBody extends StatelessWidget {
  const DoctorDetialsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            CustomDoctorAppbar(text: ' Doctor Details'),
            SizedBox(height: 30),
            DoctorDeatailsItem(),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: DoctorTap(),
            ),
            SizedBox(height: 25),
            ServiceSection(),
            SizedBox(height: 30),
            MapContainer(),
          ],
        ),
      ),
    );
  }
}
