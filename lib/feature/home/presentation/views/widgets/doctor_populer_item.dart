import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DoctorPopulerItem extends StatelessWidget {
  const DoctorPopulerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),

        color: Colors.white,
      ),
      child: Column(
        children: [
          Image.asset(
            Assets.populerDoctor1,
            height: MediaQuery.of(context).size.height * .2216748768472906,
          ),
          SizedBox(height: 14),
          Text("Dr. Fillerup Grab", style: Styles.Medium18(context)),
          Text("Medicine Specialist", style: Styles.Ligth12(context)),
          SizedBox(height: 8),
          Image.asset(
            Assets.rateStar,
            width: MediaQuery.of(context).size.width * .2,
          ),
        ],
      ),
    );
  }
}
