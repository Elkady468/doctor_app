import 'package:doctor_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class AvailableSlotsItem extends StatelessWidget {
  const AvailableSlotsItem({
    super.key,
    required this.hour,
    required this.isSelected,
  });
  final int hour;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Color(0xff0EBE7F) : Color(0x1A0EBE7F),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
        child: Text(
          '$hour:00 PM',
          style: Styles.Medium12(
            context,
          ).copyWith(color: isSelected ? Colors.white : Color(0xff0EBE7F)),
        ),
      ),
    );
  }
}
