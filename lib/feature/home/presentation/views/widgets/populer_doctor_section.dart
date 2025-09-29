import 'package:doctor_app/feature/home/presentation/views/populer_doctor_view.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/doctor_populer_header.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/doctor_populer_list_view.dart';
import 'package:flutter/material.dart';

class PopulerDoctorSection extends StatelessWidget {
  const PopulerDoctorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DoctorPopulerHeader(
          text: "Popular Doctor",
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return PopulerDoctorView();
                },
              ),
            );
          },
        ),
        SizedBox(height: 22),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .34,
          child: DoctorPopulerListView(),
        ),
      ],
    );
  }
}
