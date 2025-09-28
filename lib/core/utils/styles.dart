import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle Bold25(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 25),
      color: Colors.black,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle Medium28(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 28),
      color: Colors.black,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle Medium18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      color: Colors.black,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle Medium12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      color: Colors.black,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle Medium13(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      color: Color(0xff0EBE7F),
      fontFamily: "Rubik",
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle Medium9(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 9),
      color: Color(0xff0EBE7E),
      fontFamily: "Rubik",
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle Medium10(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 10),
      color: Colors.black,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle Reguler13(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 13),
      color: Color(0xff0EBE7F),
      fontFamily: "PTSans",
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle Reguler14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      color: Color(0xff677294),
      fontFamily: "Rubik",
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle Reguler16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: Color(0xff677294),
      fontFamily: "Rubik",
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle Reguler18(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      color: Colors.black,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle Ligth20(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: Colors.white,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle Ligth11(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 11),
      color: Color(0xff677294),
      fontFamily: "Rubik",
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle Ligth12(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      color: Color(0xff677294),
      fontFamily: "Rubik",
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle Ligth14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      color: Colors.white,
      fontFamily: "Rubik",
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle Ligth9(context) {
    return TextStyle(
      color: const Color(0xFF677294),
      fontSize: 9,
      fontFamily: 'Rubik',
      fontWeight: FontWeight.w300,
      letterSpacing: -0.30,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;
  if (width < 800) {
    return width / 375;
  } else if (width < 1200) {
    return width / 1000;
  } else {
    return width / 1440;
  }
}
