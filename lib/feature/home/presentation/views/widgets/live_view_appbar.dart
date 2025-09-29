import 'package:doctor_app/core/utils/Assets.dart';
import 'package:flutter/material.dart';

class LiveViewAppbar extends StatelessWidget {
  const LiveViewAppbar({super.key, required this.widget});
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.only(left: 12, right: 4, top: 8, bottom: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff677294),
              size: 18,
            ),
          ),
        ),
        widget,
      ],
    );
  }
}
