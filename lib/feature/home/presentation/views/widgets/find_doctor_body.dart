import 'package:doctor_app/feature/home/presentation/views/widgets/custom_text_field.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/find_doctor_appbar.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/find_doctor_item.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/find_doctor_list_view.dart';
import 'package:flutter/material.dart';

class FindDoctorBody extends StatelessWidget {
  const FindDoctorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            FindDoctorAppbar(),
            SizedBox(height: 30),
            CustomTextField(hintText: "Dentist"),
            SizedBox(height: 30),
            FindDoctorListView(),
          ],
        ),
      ),
    );
  }
}
