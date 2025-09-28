import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/custom_fav_icon.dart';
import 'package:flutter/material.dart';

class SelectTimeListTile extends StatelessWidget {
  const SelectTimeListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: ListTile(
        leading: Image.asset(Assets.findDoctor1, fit: BoxFit.fill),
        title: Text("Dr. Shruti Kedia", style: Styles.Medium18(context)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Upasana Dental Clinic, salt lake",
              style: Styles.Ligth12(context),
            ),
            SizedBox(height: 5),
            Image.asset(Assets.rateStar, height: 12),
            SizedBox(height: 5),
          ],
        ),
        trailing: Padding(
          padding: const EdgeInsets.only(bottom: 30.0),
          child: CustomFavIcon(iconSize: 22),
        ),
      ),
    );
  }
}
