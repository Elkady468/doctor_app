import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/data/models/comment_model.dart';
import 'package:doctor_app/feature/home/presentation/views/doctor_details_view.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/custom_fav_icon.dart';
import 'package:flutter/material.dart';

class SelectTimeListTile extends StatelessWidget {
  const SelectTimeListTile({super.key, required this.doctorDetails});
  final CommentModel doctorDetails;

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
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          // shadows: [
          //   BoxShadow(
          //     color: Color(0x14000000),
          //     blurRadius: 20,
          //     offset: Offset(0, 0),
          //     spreadRadius: 0,
          //   ),
          // ],
        ),
        child: ListTile(
          leading: Image.asset(
            doctorDetails.image,
            fit: BoxFit.fill,
            height: 200,
          ),
          title: Text(doctorDetails.title, style: Styles.Medium18(context)),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(doctorDetails.subTitle, style: Styles.Ligth12(context)),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(Assets.rateStar, height: 12),
                  SizedBox(width: 10),
                  doctorDetails.rete == null
                      ? SizedBox()
                      : Text(
                          "${doctorDetails.rete}",
                          style: Styles.Medium16(context),
                        ),
                  doctorDetails.views == null
                      ? SizedBox()
                      : Text(
                          "(${doctorDetails.views} views)",
                          style: Styles.Reguler13(context),
                        ),
                ],
              ),
              SizedBox(height: 5),
            ],
          ),
          trailing: Padding(
            padding: const EdgeInsets.only(bottom: 30.0),
            child: CustomFavIcon(iconSize: 22),
          ),
        ),
      ),
    );
  }
}
