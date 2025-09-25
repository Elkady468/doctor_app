import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/welcome/views/widgets/custom_button.dart';
import 'package:doctor_app/feature/welcome/views/widgets/on_boarding_page_view.dart'
    show onBoardingPageView;
import 'package:flutter/material.dart';

class WelcomeViewBody extends StatelessWidget {
  const WelcomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: MediaQuery.of(context).size.height * .11206),
        SizedBox(
          height: MediaQuery.of(context).size.height * .7,
          child: onBoardingPageView(),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CustomBotton(),
        ),
        SizedBox(height: 14),
        InkWell(child: Text("Skip", style: Styles.Reguler14(context))),
      ],
    );
  }
}
