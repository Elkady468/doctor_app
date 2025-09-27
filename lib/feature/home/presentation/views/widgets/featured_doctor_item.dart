import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/data/models/featured_doctor_model.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/featured_doctor_item_header.dart';
import 'package:flutter/material.dart';

class FeaturedDoctorItem extends StatelessWidget {
  const FeaturedDoctorItem({super.key, required this.featuredDoctorModel});
  final FeaturedDoctorModel featuredDoctorModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.sizeOf(context).width * .2666666666666667,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(6),
        ),
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
          FeaturedDoctorItemHeader(rate: featuredDoctorModel.rate),
          SizedBox(height: 8),
          Image.asset(
            featuredDoctorModel.image,
            width: MediaQuery.sizeOf(context).width * .1333333333333333,
          ),
          SizedBox(height: 10),
          Text(featuredDoctorModel.name, style: Styles.Medium12(context)),
          SizedBox(height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("\$ ", style: Styles.Medium9(context)),
              Text(featuredDoctorModel.price, style: Styles.Ligth9(context)),
            ],
          ),
        ],
      ),
    );
  }
}
