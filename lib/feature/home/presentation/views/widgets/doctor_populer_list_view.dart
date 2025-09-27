import 'package:doctor_app/feature/home/presentation/views/widgets/doctor_populer_item.dart';
import 'package:flutter/material.dart';

class DoctorPopulerListView extends StatelessWidget {
  const DoctorPopulerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) {
        return DoctorPopulerItem();
      },
    );
  }
}
