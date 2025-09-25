import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        elevation: 0,
        activeColor: Color(0xff0EBE7E),
        backgroundColor: Colors.white,
        color: Color(0xff858EA9),

        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.favorite, title: 'favorite'),
          TabItem(icon: Icons.book, title: 'book'),
          TabItem(icon: Icons.message, title: 'message'),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
      body: Stack(
        children: [
          Image.asset(
            Assets.splashViewBackground,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          HomeViewBody(),
        ],
      ),
    );
  }
}
