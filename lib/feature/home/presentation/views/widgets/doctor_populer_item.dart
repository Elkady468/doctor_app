import 'package:doctor_app/core/utils/Assets.dart';
import 'package:flutter/material.dart';

class DoctorPopulerItem extends StatelessWidget {
  const DoctorPopulerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        shadows: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 40,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
        color: Colors.white,
      ),
      child: Column(children: [Image.asset(Assets.populerDoctor1)]),
    );
  }
}
