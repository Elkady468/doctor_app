import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/home/data/models/find_doctor_model.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/find_doctor_item.dart';
import 'package:flutter/material.dart';

class FindDoctorListView extends StatelessWidget {
  FindDoctorListView({super.key});
  List<FindDoctorModel> items = [
    FindDoctorModel(
      image: Assets.findDoctor1,
      doctorName: 'Dr. Shruti Kedia',
      time: '10:00',
      experienceCount: 7,
      percentage: 87,
      patientStories: 69,
    ),
    FindDoctorModel(
      image: Assets.findDoctor2,
      doctorName: 'Dr. Watamaniuk',
      time: '12:00',
      experienceCount: 9,
      percentage: 74,
      patientStories: 78,
    ),
    FindDoctorModel(
      image: Assets.findDoctor3,
      doctorName: 'Dr. Crownover',
      time: '11:00',
      experienceCount: 5,
      percentage: 59,
      patientStories: 86,
    ),
    FindDoctorModel(
      image: Assets.findDoctor1,
      doctorName: 'Dr. Balestra',
      time: '09:00',
      experienceCount: 6,
      percentage: 80,
      patientStories: 45,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: FindDoctorItem(findDoctorModel: items[index]),
        );
      },
    );
  }
}
