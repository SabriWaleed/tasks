import 'package:flutter/material.dart';

class TextFieldView extends StatelessWidget {
  const TextFieldView({
    super.key,
    required this.text,
    required this.pre,
     this.suff,
  });
  final String text;
  final Icon pre;
  final Icon? suff;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 3),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: pre,
          prefixIconColor: Colors.grey,
          suffixIcon: suff,
          suffixIconColor: Colors.grey,
          filled: true,
          fillColor: Color(0xffFFFFFF),
          hintText: text,
          hintStyle: TextStyle(color: Color(0xffA1A8B0), fontSize: 20),

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32)),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
      ),
    );
  }
}
