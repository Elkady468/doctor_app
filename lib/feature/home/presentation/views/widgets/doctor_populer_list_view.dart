import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/home/data/models/populer_doctor_model.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/doctor_populer_item.dart';
import 'package:flutter/material.dart';

class DoctorPopulerListView extends StatelessWidget {
  DoctorPopulerListView({super.key});
  List<PopulerDoctorModel> items = [
    PopulerDoctorModel(
      image: Assets.populerDoctor1,
      name: "Dr. Fillerup Grab",
      depr: "Medicine Specialist",
    ),
    PopulerDoctorModel(
      image: Assets.populerDoctor2,
      name: "Dr. Blessing",
      depr: "Dentist Specialist",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: DoctorPopulerItem(populerDoctorModel: items[index]),
        );
      },
    );
  }
}
