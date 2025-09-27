import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/home/data/models/featured_doctor_model.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/doctor_populer_header.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/featured_doctor_item.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/featured_doctor_list_view.dart';
import 'package:flutter/material.dart';

class FeaturedDoctorSection extends StatelessWidget {
  const FeaturedDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DoctorPopulerHeader(text: "Featured Doctor"),
        SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .16,
          child: FeaturedDoctorListView(),
        ),
      ],
    );
  }
}
