import 'package:doctor_app/feature/home/presentation/views/widgets/book_days_item.dart';
import 'package:flutter/material.dart';

class BooksDaysItemListView extends StatefulWidget {
  const BooksDaysItemListView({super.key});

  @override
  State<BooksDaysItemListView> createState() => _BooksDaysItemListViewState();
}

class _BooksDaysItemListViewState extends State<BooksDaysItemListView> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: GestureDetector(
          onTap: () {
            currentIndex = index;
            setState(() {});
          },
          child: BookDaysItem(
            head: 'Tomorrow, 24 Feb',
            sets: 12,
            isSelcted: currentIndex == index,
          ),
        ),
      ),
    );
  }
}
