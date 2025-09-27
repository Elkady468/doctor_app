import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/live_view_body.dart';
import 'package:flutter/material.dart';

class LiveView extends StatelessWidget {
  const LiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
          Assets.liveDoctorimage,
        ),
        Positioned(bottom: 0, top: 100, child: Image.asset(Assets.blur)),
        Scaffold(backgroundColor: Colors.transparent, body: LiveViewBody()),
      ],
    );
  }
}
