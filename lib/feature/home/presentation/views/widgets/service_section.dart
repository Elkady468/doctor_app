import 'package:doctor_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Services", style: Styles.Medium18(context)),
        SizedBox(height: 16),
        ServiceItem(
          number: 1,
          text: 'Patient care should be the number one priority.',
        ),
        Divider(height: 30, thickness: .5),
        ServiceItem(
          number: 2,
          text: 'If you run your practiceyou know how frustrating.',
        ),
        Divider(height: 30, thickness: .5),
        ServiceItem(
          number: 3,
          text: 'That’s why some of appointment reminder system.',
        ),
      ],
    );
  }
}

class ServiceItem extends StatelessWidget {
  const ServiceItem({super.key, required this.number, required this.text});
  final int number;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: '$number.  ', style: Styles.Medium13(context)),

          TextSpan(
            text: '$text',
            style: Styles.Reguler13(context).copyWith(color: Color(0xE5677294)),
          ),
        ],
      ),
    );
  }
}

// Color(0xFF0EBE7F)
