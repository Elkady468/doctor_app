import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/welcome/views/widgets/welcome_view_body.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Assets.WelcomeViewBackground1,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          WelcomeViewBody(),
        ],
      ),
    );
  }
}
