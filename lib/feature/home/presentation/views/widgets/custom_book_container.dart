import 'package:doctor_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBookContainer extends StatelessWidget {
  const CustomBookContainer({super.key, this.onTap, this.width});
  final void Function()? onTap;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 28),
        decoration: ShapeDecoration(
          color: const Color.fromARGB(255, 69, 231, 174),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: InkWell(
          child: Center(
            child: Text(
              "Book Now",
              style: Styles.Medium12(context).copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
