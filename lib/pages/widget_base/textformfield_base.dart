import 'package:flutter/material.dart';

class TextFormFieldBase extends StatelessWidget {
  final String hintText;
  final String prefixIcon;
  final Widget suffixIcon;
  final bool hideText;
  final TextEditingController controller;
  final String errorText;

  TextFormFieldBase({
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.hideText,
    this.controller,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: hideText,
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(fontSize: 16),
      decoration: InputDecoration(
        errorText: errorText,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xffC6CEDD),
        ),
        suffixIcon: suffixIcon,
        prefixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
        prefixIcon: Padding(
          padding: EdgeInsets.only(right: 10),
          child: ImageIcon(AssetImage(prefixIcon)),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE3E8F1)),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Color(0xffE3E8F1)),
        ),
      ),
    );
  }
}
