import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/data/models/populer_doctor_model.dart';
import 'package:doctor_app/feature/home/presentation/views/doctor_details_view.dart';
import 'package:flutter/material.dart';

class DoctorPopulerItem extends StatelessWidget {
  const DoctorPopulerItem({super.key, required this.populerDoctorModel});
  final PopulerDoctorModel populerDoctorModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return DoctorDetailsView();
            },
          ),
        );
      },
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),

          color: Colors.white,
        ),
        child: Column(
          children: [
            Image.asset(
              populerDoctorModel.image,
              height: MediaQuery.of(context).size.height * .2216748768472906,
            ),
            SizedBox(height: 14),
            Text(populerDoctorModel.name, style: Styles.Medium18(context)),
            Text(populerDoctorModel.depr, style: Styles.Ligth12(context)),
            SizedBox(height: 8),
            Image.asset(
              Assets.rateStar,
              width: MediaQuery.of(context).size.width * .2,
            ),
          ],
        ),
      ),
    );
  }
}
