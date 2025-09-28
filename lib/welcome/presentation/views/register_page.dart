import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/welcome/presentation/views/widgets/register_page_body.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          Assets.splashViewBackground,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(backgroundColor: Colors.transparent, body: RegisterPageBody()),
      ],
    );
  }
}
