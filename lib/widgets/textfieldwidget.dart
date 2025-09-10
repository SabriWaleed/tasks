import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xffFFFFFF),
          hintText: text,
          hintStyle: TextStyle(color: Color(0xffA1A8B0), fontSize: 20),

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
