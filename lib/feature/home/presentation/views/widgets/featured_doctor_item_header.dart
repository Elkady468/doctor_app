import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/custom_fav_icon.dart';
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
        CustomFavIcon(iconSize: 14),
        Spacer(),
        Icon(Icons.star, color: Color(0xffF6D060), size: 14),
        Text(widget.rate.toStringAsFixed(1), style: Styles.Medium10(context)),
      ],
    );
  }
}
