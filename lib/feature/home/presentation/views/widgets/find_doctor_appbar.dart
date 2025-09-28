import 'package:doctor_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FindDoctorAppbar extends StatelessWidget {
  const FindDoctorAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 12, right: 4, top: 8, bottom: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff677294),
              size: 18,
            ),
          ),
        ),
        SizedBox(width: 20),
        Text("Find Doctor", style: Styles.Reguler18(context)),
      ],
    );
  }
}
