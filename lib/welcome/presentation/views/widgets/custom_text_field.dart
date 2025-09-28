import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  const Customtextfield({
    super.key,
    required this.hint,
    this.onChanged,
    required this.icon,
    this.obscureText = false,
    this.maxLength = false,
    this.onTapSuffixIcon,
  });
  final String hint;
  final Function(String)? onChanged;
  final IconData icon;
  final bool obscureText;
  final bool maxLength;
  final void Function()? onTapSuffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: TextFormField(
        maxLength: maxLength ? 11 : null,
        obscureText: obscureText,
        validator: (value) {
          if (value!.isEmpty) {
            return "Field is required";
          }
          return null;
        },
        style: TextStyle(
          color: Color(0xff0EBE7F),
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
        onChanged: onChanged,
        cursorColor: Color(0xff0EBE7F),
        decoration: InputDecoration(
          counterStyle: TextStyle(color: Color(0xff0EBE7F)),
          suffixIcon: GestureDetector(
            onTap: onTapSuffixIcon,
            child: Icon(icon, color: Color(0xff0EBE7F), size: 26),
          ),
          iconColor: Color(0xff0EBE7F),
          hintText: hint,
          hintStyle: TextStyle(color: Color(0xff0EBE7F)),
          labelStyle: TextStyle(color: Color(0xff0EBE7F)),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Color(0xff0EBE7F)),
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Color(0xff0EBE7F)),
            borderRadius: BorderRadius.circular(12),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Color(0xff0EBE7F)),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
