import 'package:doctor_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DoctorPopulerHeader extends StatelessWidget {
  const DoctorPopulerHeader({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text, style: Styles.Medium18(context)),
        Spacer(),
        Row(
          children: [
            InkWell(
              onTap: onTap,
              child: Text("See all", style: Styles.Ligth12(context)),
            ),
            Icon(Icons.arrow_forward_ios, size: 12, color: Color(0xff677294)),
            SizedBox(width: 15),
          ],
        ),
      ],
    );
  }
}
