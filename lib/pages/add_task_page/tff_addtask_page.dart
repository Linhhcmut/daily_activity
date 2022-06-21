import 'package:flutter/material.dart';

class TxtFFAddTaskPage extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final String errorText;
  final int line;

  TxtFFAddTaskPage({this.controller, this.label, this.errorText, this.line});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: TextFormField(
        maxLines: line,
        keyboardType: TextInputType.multiline,
        controller: controller,
        decoration: InputDecoration(
          alignLabelWithHint: true,
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
