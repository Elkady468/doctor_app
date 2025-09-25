import 'package:doctor_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.only(right: 6, left: 6),
          child: Icon(Icons.search, color: Color(0xff677294), size: 20),
        ),
        suffixIcon: Icon(Icons.close, color: Color(0xff677294), size: 20),
        fillColor: Colors.white,
        filled: true,
        hintText: "Search...",
        hintStyle: Styles.Reguler16(context),
        border: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: Colors.white),
          borderRadius: BorderRadius.circular(6),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: Colors.white),
          borderRadius: BorderRadius.circular(6),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 0, color: Colors.white),
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
