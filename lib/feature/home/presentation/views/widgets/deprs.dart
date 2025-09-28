import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/home/presentation/views/find_doctors_view.dart';
import 'package:flutter/material.dart';

class Deprs extends StatelessWidget {
  Deprs({super.key});
  List<String> depr = [Assets.depr1, Assets.depr2, Assets.depr3, Assets.depr4];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FindDoctorsView();
                  },
                ),
              );
            },
            child: Image.asset(depr[0], height: 100),
          ),
        ),
        Expanded(child: Image.asset(depr[1], height: 100)),
        Expanded(child: Image.asset(depr[2], height: 100)),
        Expanded(child: Image.asset(depr[3], height: 100)),
      ],
    );
  }
}
