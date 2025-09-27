import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/deprs.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/doctor_populer_header.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/live_doctor_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        SizedBox(height: 45),

        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Text("Live Doctors", style: Styles.Medium18(context)),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height:
                      MediaQuery.of(context).size.height * .2463054187192118,
                  child: LiveDoctorListView(),
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 30)),
              SliverToBoxAdapter(child: Deprs()),
              SliverToBoxAdapter(child: DoctorPopulerHeader()),

              // SliverToBoxAdapter(
              //   child: SizedBox(height: 100, child: DoctorPopulerListView()),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
