import 'package:doctor_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FeaturedDoctorItemHeader extends StatefulWidget {
  const FeaturedDoctorItemHeader({super.key, required this.rate});
  final double rate;

  @override
  State<FeaturedDoctorItemHeader> createState() =>
      _FeaturedDoctorItemHeaderState();
}

class _FeaturedDoctorItemHeaderState extends State<FeaturedDoctorItemHeader> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              isFav = !isFav;
            });
          },
          child: isFav
              ? Icon(Icons.favorite_rounded, color: Colors.red, size: 14)
              : Icon(
                  Icons.favorite_border_outlined,
                  color: Color(0xff777EA5),
                  size: 14,
                ),
        ),
        Spacer(),
        Icon(Icons.star, color: Color(0xffF6D060), size: 14),
        Text(widget.rate.toStringAsFixed(1), style: Styles.Medium10(context)),
      ],
    );
  }
}
