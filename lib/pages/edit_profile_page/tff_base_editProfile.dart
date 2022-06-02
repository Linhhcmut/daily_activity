import 'package:flutter/material.dart';

class TxtFFEditProfileBase extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String errorText;

  TxtFFEditProfileBase({this.controller, this.label, this.errorText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          errorText: errorText,
          label: Text(
            label,
            style: TextStyle(
              color: Color(0xff858FE9),
              fontSize: 16,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
