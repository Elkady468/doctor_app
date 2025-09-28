import 'package:doctor_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDaysItem extends StatefulWidget {
  const BookDaysItem({
    super.key,
    required this.head,
    required this.sets,
    this.isSelcted = false,
  });
  final String head;
  final int sets;
  final bool isSelcted;

  @override
  State<BookDaysItem> createState() => _BookDaysItemState();
}

class _BookDaysItemState extends State<BookDaysItem> {
  Color backColor = Colors.transparent;
  Color textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.isSelcted ? Color(0xff0EBE7F) : backColor,
        borderRadius: BorderRadius.circular(6),
        border: !widget.isSelcted
            ? Border.all(color: Color(0xff677294), width: 0.5)
            : null,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        child: Column(
          children: [
            Text(
              widget.head,
              style: Styles.Medium16(
                context,
              ).copyWith(color: widget.isSelcted ? Colors.white : textColor),
            ),
            Text(
              '${widget.sets} slots available',
              style: Styles.Ligth11(
                context,
              ).copyWith(color: widget.isSelcted ? Colors.white : textColor),
            ),
          ],
        ),
      ),
    );
  }
}
