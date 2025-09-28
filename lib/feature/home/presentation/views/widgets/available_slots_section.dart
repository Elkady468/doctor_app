import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/available_slots_grid_view.dart';
import 'package:flutter/material.dart';

class AvailableSlotsSection extends StatelessWidget {
  const AvailableSlotsSection({
    super.key,
    required this.text,
    required this.itemCount,
  });
  final String text;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text, style: Styles.Medium18(context)),
        SizedBox(height: 16),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * 0.15,
          child: AvailableSlotsGridView(itemCount: itemCount),
        ),
      ],
    );
  }
}
