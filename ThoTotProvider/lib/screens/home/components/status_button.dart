import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';

class StatusButton extends StatefulWidget {
  StatusButton();
  @override
  StatusButtonState createState() => StatusButtonState();
}

class StatusButtonState extends State<StatusButton> {
  bool status = false;

  Widget build(BuildContext context) {
    return CustomSwitch(
      activeColor: Colors.green,
      value: status,
      onChanged: (value) {
        setState(() {
          status = value;
        });
      },
    );
  }
}
