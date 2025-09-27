import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/home/data/models/comment_model.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/comment_list_tile.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/live_view_appbar.dart';
import 'package:flutter/material.dart';

class LiveViewBody extends StatelessWidget {
  LiveViewBody({super.key});
  List<CommentModel> comments = [
    CommentModel(
      image: Assets.comment1,
      title: "Everhart Tween",
      subTitle: "Thanks for shareing doctor",
    ),
    CommentModel(
      image: Assets.comment2,
      title: "Bonebrake Mash",
      subTitle: "They treat immune system disorders",
    ),
    CommentModel(
      image: Assets.comment3,
      title: "Handler Wack",
      subTitle: "This is the largest directory",
    ),
    CommentModel(
      image: Assets.comment4,
      title: "Comfort Love",
      subTitle: "Depending on their education",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: LiveViewAppbar(),
        ),
        Spacer(),
        CommentListTile(commentModel: comments[0]),
        CommentListTile(commentModel: comments[1]),
        CommentListTile(commentModel: comments[2]),
        CommentListTile(commentModel: comments[3]),
        SizedBox(height: 10),
        Image.asset(Assets.addComment),
        SizedBox(height: 10),
      ],
    );
  }
}
