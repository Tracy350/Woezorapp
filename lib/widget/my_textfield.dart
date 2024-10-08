import 'package:flutter/material.dart';
import 'package:woezorap/consts/styles.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final TextCapitalization capitalization;
  final Widget? suffixIcon;
  final bool obscureText;
  final String initialValue;
  final ValueChanged<String>? onChanged;

  const MyTextfield({
    super.key,
    this.hintText = '',
    this.inputType = TextInputType.text,
    this.capitalization = TextCapitalization.none,
    this.suffixIcon,
    this.obscureText = false,
    this.initialValue = "",
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: inputType,
      obscureText: obscureText,
      textCapitalization: capitalization,
      initialValue: initialValue,
      cursorColor: Colors.grey, // Use your preferred color
      style: const TextStyle(fontWeight: FontWeight.w500),
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: primaryColorLight,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
