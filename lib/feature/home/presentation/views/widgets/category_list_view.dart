import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/home/data/models/comment_model.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/comment_list_tile.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/select_time_list_tile.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});
  List<CommentModel> items = [
    CommentModel(
      image: Assets.findDoctor1,
      title: "Dr. Pediatrician",
      subTitle: "Specialist Cardiologist",
      rete: 2.4,
      views: 8880,
    ),
    CommentModel(
      image: Assets.findDoctor2,
      title: "Dr. Mistry Brick",
      subTitle: "Specialist Dentist",
      rete: 2.8,
      views: 4350,
    ),
    CommentModel(
      image: Assets.findDoctor3,
      title: "Dr. Ether Wall",
      subTitle: "Specialist Cancer",
      rete: 2.7,
      views: 4991,
    ),
    CommentModel(
      image: Assets.findDoctor1,
      title: "Dr. Johan smith",
      subTitle: "Specialist cardiologist",
      rete: 3.1,
      views: 2005,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 14.0),
          child: SelectTimeListTile(doctorDetails: items[index]),
        );
      },
    );
  }
}
