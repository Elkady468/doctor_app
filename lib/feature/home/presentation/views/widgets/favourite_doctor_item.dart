import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/presentation/views/doctor_details_view.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/custom_fav_icon.dart';
import 'package:flutter/material.dart';

class FavouriteDoctorItem extends StatelessWidget {
  const FavouriteDoctorItem({super.key});

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
        //  width: double.infinity,
        //   height: 300,
        padding: EdgeInsets.only(top: 10, bottom: 15),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          shadows: [
            BoxShadow(
              color: Color(0x0F000000),
              blurRadius: 20,
              offset: Offset(0, -1),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [CustomFavIcon(iconSize: 25)],
            ),
            Image.asset(
              Assets.featuredDoctor1,
              height: MediaQuery.sizeOf(context).height * .103448275862069,
            ),
            SizedBox(height: 11),
            Text("Dr. Shouey", style: Styles.Medium15(context)),
            SizedBox(height: 4),
            Text("Specalist Cardiology", style: Styles.Reguler13(context)),
          ],
        ),
      ),
    );
  }
}
