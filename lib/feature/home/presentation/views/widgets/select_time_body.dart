import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/available_slots_section.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/books_days_item_list_view.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/find_doctor_appbar.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/select_time_list_tile.dart';
import 'package:flutter/material.dart';

class SelectTimeBody extends StatefulWidget {
  const SelectTimeBody({super.key});

  @override
  State<SelectTimeBody> createState() => _SelectTimeBodyState();
}

class _SelectTimeBodyState extends State<SelectTimeBody> {
  bool showSlots = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(height: 60),
          CustomDoctorAppbar(text: "Select Time"),
          SizedBox(height: 35),
          SelectTimeListTile(),

          SizedBox(height: 24),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.08,
            child: GestureDetector(
              onTap: () {
                showSlots = true;
                setState(() {});
              },
              child: BooksDaysItemListView(),
            ),
          ),
          SizedBox(height: 20),
          showSlots
              ? Column(
                  children: [
                    Text('Tomorrow, 24 Feb', style: Styles.Medium18(context)),
                    SizedBox(height: 35),
                    AvailableSlotsSection(
                      text: 'Afternoon 7 slots',
                      itemCount: 7,
                    ),
                    SizedBox(height: 8),
                    AvailableSlotsSection(
                      text: 'Evening 5 slots',
                      itemCount: 5,
                    ),
                  ],
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
