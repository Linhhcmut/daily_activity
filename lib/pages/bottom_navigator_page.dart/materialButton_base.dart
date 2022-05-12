import 'package:flutter/material.dart';

class MaterialButtonBase extends StatefulWidget {
  final Function onPressed;
  final int currentTab;
  final int indexTab;

  MaterialButtonBase({
    this.onPressed,
    this.currentTab,
    this.indexTab,
  });

  @override
  State<MaterialButtonBase> createState() => _MaterialButtonBaseState();
}

class _MaterialButtonBaseState extends State<MaterialButtonBase> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: widget.onPressed,
      child: Image.asset(
        widget.currentTab == widget.indexTab
            ? "assets/icons/bottom${widget.indexTab}2.png"
            : "assets/icons/bottom${widget.indexTab}1.png",
      ),
    );
  }
}
