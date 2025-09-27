import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/data/models/comment_model.dart';
import 'package:flutter/material.dart';

class CommentListTile extends StatelessWidget {
  const CommentListTile({super.key, required this.commentModel});
  final CommentModel commentModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(commentModel.image),
      title: Text(
        commentModel.title,
        style: Styles.Medium18(context).copyWith(color: Colors.white),
      ),
      subtitle: Text(commentModel.subTitle, style: Styles.Ligth14(context)),
    );
  }
}
