import 'package:doctor_app/core/utils/Assets.dart';
import 'package:flutter/material.dart';

class MapContainer extends StatelessWidget {
  const MapContainer({super.key});

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
            blurRadius: 30,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Image.asset(Assets.mapImage),
    );
  }
}
