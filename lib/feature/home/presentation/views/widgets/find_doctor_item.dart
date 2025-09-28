import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/data/models/find_doctor_model.dart';
import 'package:doctor_app/feature/home/presentation/views/select_time_view.dart';
import 'package:doctor_app/feature/home/presentation/views/widgets/custom_fav_icon.dart';
import 'package:flutter/material.dart';

class FindDoctorItem extends StatelessWidget {
  const FindDoctorItem({super.key, required this.findDoctorModel});
  final FindDoctorModel findDoctorModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                findDoctorModel.image,
                height: MediaQuery.sizeOf(context).height * .1071428571428571,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        findDoctorModel.doctorName,
                        style: Styles.Medium18(context),
                      ),
                      //  Spacer(),
                      CustomFavIcon(iconSize: 22),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text("Tooths Dentist", style: Styles.Reguler13(context)),
                  SizedBox(height: 3),
                  Text(
                    "${findDoctorModel.experienceCount} Years experience ",
                    style: Styles.Ligth12(context),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF0EBE7F),
                          shape: OvalBorder(),
                        ),
                      ),
                      Text(
                        " ${findDoctorModel.percentage}%",
                        style: Styles.Ligth11(context),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: ShapeDecoration(
                          color: const Color(0xFF0EBE7F),
                          shape: OvalBorder(),
                        ),
                      ),
                      Text(
                        " ${findDoctorModel.patientStories} Patient Stories",
                        style: Styles.Ligth11(context),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Next Available', style: Styles.Medium13(context)),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "${findDoctorModel.time} ",
                        style: Styles.Medium12(
                          context,
                        ).copyWith(color: Color(0xff677294)),
                      ),
                      Text("AM tomorrow", style: Styles.Ligth12(context)),
                    ],
                  ),
                ],
              ),
              CustomBookContainer(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SelectTimeView();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomBookContainer extends StatelessWidget {
  const CustomBookContainer({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 28),
        decoration: ShapeDecoration(
          color: const Color.fromARGB(255, 69, 231, 174),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
        child: Text(
          "Book Now",
          style: Styles.Medium12(context).copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
