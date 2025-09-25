import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff0EBE7E), Color(0xff07D9AD)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 50),
              ListTile(
                title: Text("Hi Handwerker!", style: Styles.Ligth20(context)),
                subtitle: Text(
                  "Find Your Doctor",
                  style: Styles.Bold25(context).copyWith(color: Colors.white),
                ),
                trailing: Image.asset(Assets.userImage, height: 60),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),

        Positioned(
          left: 0,
          right: 0,
          bottom: -20,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomTextField(),
          ),
        ),
      ],
    );
  }
}
