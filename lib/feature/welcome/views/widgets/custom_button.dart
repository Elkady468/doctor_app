import 'package:doctor_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  CustomBotton({super.key, this.onTap});
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: const Color(0xFF0EBE7F),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Text(
                "Get Started",
                textAlign: TextAlign.center,
                style: Styles.Medium18(context).copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
