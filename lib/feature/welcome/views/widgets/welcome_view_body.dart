import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * .11206),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 19),
          height: MediaQuery.of(context).size.height * .41379,
          width: double.infinity,
          child: Image.asset(Assets.Doctor1),
        ),
        SizedBox(height: 80),
        Text("Find Trusted Doctors", style: Styles.Medium28(context)),
        SizedBox(height: 11),
        Text(
          textAlign: TextAlign.center,
          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.",
          style: Styles.Reguler14(context),
        ),
      ],
    );
  }
}
