import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/home/data/models/featured_doctor_model.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/featured_doctor_item.dart';
import 'package:flutter/material.dart';

class FeaturedDoctorListView extends StatelessWidget {
  FeaturedDoctorListView({super.key});
  List<FeaturedDoctorModel> items = [
    FeaturedDoctorModel(
      rate: 3.7,
      image: Assets.featuredDoctor3,
      name: "Dr. Crick",
      price: "25.00/ hours",
    ),
    FeaturedDoctorModel(
      rate: 3.0,
      image: Assets.featuredDoctor1,
      name: "Dr. Strain",
      price: "22.00/ hours",
    ),
    FeaturedDoctorModel(
      rate: 2.9,
      image: Assets.featuredDoctor2,
      name: "Dr. Lachinet",
      price: "29.00/ hours",
    ),
    FeaturedDoctorModel(
      rate: 4.0,
      image: Assets.featuredDoctor1,
      name: "Dr. Elkady",
      price: "50.00/ hours",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 12.0),
          child: FeaturedDoctorItem(featuredDoctorModel: items[index]),
        );
      },
    );
  }
}
