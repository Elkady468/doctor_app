import 'package:doctor_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DoctorTap extends StatelessWidget {
  const DoctorTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        shadows: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(child: DoctorTapItem(number: 100, text: "Runing")),
          SizedBox(width: 8),
          Expanded(child: DoctorTapItem(number: 500, text: "Ongoing")),
          SizedBox(width: 8),
          Expanded(child: DoctorTapItem(number: 700, text: "Patient")),
        ],
      ),
    );
  }
}

class DoctorTapItem extends StatelessWidget {
  const DoctorTapItem({super.key, required this.number, required this.text});
  final int number;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: ShapeDecoration(
        color: Color(0xffF3F3F3),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Column(
        children: [
          Text(number.toString(), style: Styles.Medium18(context)),
          Text(
            text,
            style: Styles.Ligth14(context).copyWith(color: Color(0xFF677294)),
          ),
        ],
      ),
    );
  }
}
