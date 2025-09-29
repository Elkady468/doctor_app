import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/data/models/comment_model.dart';
import 'package:doctor_app/feature/home/presentation/views/select_time_view.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/custom_book_container.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/find_doctor_item.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/select_time_list_tile.dart';
import 'package:flutter/material.dart';

class DoctorDeatailsItem extends StatelessWidget {
  const DoctorDeatailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
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
      child: Column(
        children: [
          SelectTimeListTile(
            doctorDetails: CommentModel(
              image: Assets.findDoctor1,
              title: "Dr. Pediatrician",
              subTitle: "Specialist Cardiologist ",
            ),
          ),
          SizedBox(height: 10),
          CustomBookContainer(
            width: MediaQuery.sizeOf(context).width * .45,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SelectTimeView();
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
