import 'package:doctor_app/core/utils/Assets.dart';
import 'package:doctor_app/core/utils/styles.dart';
import 'package:doctor_app/feature/home/data/models/find_doctor_model.dart';
import 'package:flutter/material.dart';

class FindDoctorItem extends StatefulWidget {
  const FindDoctorItem({super.key, required this.findDoctorModel});
  final FindDoctorModel findDoctorModel;
  @override
  State<FindDoctorItem> createState() => _FindDoctorItemState();
}

class _FindDoctorItemState extends State<FindDoctorItem> {
  bool isFav = false;
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
                widget.findDoctorModel.image,
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
                        widget.findDoctorModel.doctorName,
                        style: Styles.Medium18(context),
                      ),
                      //  Spacer(),
                      InkWell(
                        onTap: () {
                          setState(() {
                            isFav = !isFav;
                          });
                        },
                        child: isFav
                            ? Icon(
                                Icons.favorite_rounded,
                                color: Colors.red,
                                size: 22,
                              )
                            : Icon(
                                Icons.favorite_border_outlined,
                                color: Color(0xff777EA5),
                                size: 22,
                              ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Text("Tooths Dentist", style: Styles.Reguler13(context)),
                  SizedBox(height: 3),
                  Text(
                    "${widget.findDoctorModel.experienceCount} Years experience ",
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
                        " ${widget.findDoctorModel.percentage}%",
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
                        " ${widget.findDoctorModel.patientStories} Patient Stories",
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
                        "${widget.findDoctorModel.time} ",
                        style: Styles.Medium12(
                          context,
                        ).copyWith(color: Color(0xff677294)),
                      ),
                      Text("AM tomorrow", style: Styles.Ligth12(context)),
                    ],
                  ),
                ],
              ),
              CustomBookContainer(),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomBookContainer extends StatelessWidget {
  const CustomBookContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 28),
      decoration: ShapeDecoration(
        color: const Color.fromARGB(255, 69, 231, 174),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
      child: Text(
        "Book Now",
        style: Styles.Medium12(context).copyWith(color: Colors.white),
      ),
    );
  }
}
