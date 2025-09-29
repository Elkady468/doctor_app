import 'package:doctor_app/feature/home/presentation/views/widgets/custom_text_field.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/favourite_doctor_item.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/featured_doctor_section.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/find_doctor_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FavouriteDoctorView extends StatelessWidget {
  const FavouriteDoctorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            CustomDoctorAppbar(text: 'Favourite Doctors'),
            SizedBox(height: 30),
            CustomTextField(hintText: "Dentist"),
            SizedBox(height: 30),
            FavouriteDoctorGridViw(),
            SizedBox(height: 30),

            FeaturedDoctorSection(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class FavouriteDoctorGridViw extends StatelessWidget {
  const FavouriteDoctorGridViw({super.key});

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: List.generate(10, (index) {
        return FavouriteDoctorItem();
      }),
    );
  }
}
