import 'package:doctor_app/feature/home/presentation/views/widgets/favourite_doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
