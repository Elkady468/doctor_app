import 'package:doctor_app/feature/home/presentation/views/widgets/available_slots_item.dart';
import 'package:flutter/material.dart';

class AvailableSlotsGridView extends StatefulWidget {
  const AvailableSlotsGridView({super.key, required this.itemCount});
  final int itemCount;
  @override
  State<AvailableSlotsGridView> createState() => _AvailableSlotsGridViewState();
}

class _AvailableSlotsGridViewState extends State<AvailableSlotsGridView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: widget.itemCount,
      padding: EdgeInsets.zero,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.6,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          currentIndex = index;
          setState(() {});
        },
        child: AvailableSlotsItem(
          hour: ++index,
          isSelected: currentIndex == index,
        ),
      ),
    );
  }
}
