import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/category_list_view.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/live_view_appbar.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/populer_doctor_section.dart';
import 'package:flutter/material.dart';

class PopulerDoctorBody extends StatelessWidget {
  const PopulerDoctorBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            LiveViewAppbar(widget: Icon(Icons.search)),
            SizedBox(height: 30),
            PopulerDoctorSection(),
            SizedBox(height: 20),
            Text("Category", style: Styles.Medium18(context)),
            SizedBox(height: 20),
            CategoryListView(),
          ],
        ),
      ),
    );
  }
}
