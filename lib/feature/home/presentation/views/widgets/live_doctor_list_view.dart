import 'package:doctor_app/core/utils/Assets.dart';
import 'package:flutter/material.dart';

class LiveDoctorListView extends StatelessWidget {
  const LiveDoctorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 8,
      padding: EdgeInsets.zero,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 12),
          child: Image.asset(Assets.liveDoctor),
        );
      },
    );
  }
}
