import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
  });

  final String label;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26.0, right: 26),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(18),
          labelStyle: const TextStyle(color: Color(0xFF626262)),
          label: Text(label),
          filled: true,
          isDense: true,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5)),
          fillColor: const Color(0xFF1F41BB).withOpacity(0.1),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              width: 2,
              color: Color(0xFF1F41BB),
            ), // Initial color when not focused
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
