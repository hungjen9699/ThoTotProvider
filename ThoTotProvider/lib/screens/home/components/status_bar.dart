import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/components/opacity_line.dart';
import 'package:fluttertransoon/screens/home/components/status_button.dart';

class StatusBar extends StatefulWidget {
  bool status = false;
  State<StatusBar> createState() => StatusBarState();
}

class StatusBarState extends State<StatusBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text("Chế độ sẵn sàng nhận yêu cầu",
                  style: const TextStyle(
                      color: const Color(0xff5c4db1),
                      fontWeight: FontWeight.w700,
                      fontFamily: "SVN-ProductSans",
                      fontStyle: FontStyle.normal,
                      fontSize: 17),
                  textAlign: TextAlign.left),
            ),
            CustomSwitch(
              activeColor: Colors.green,
              value: widget.status,
              onChanged: (value) {
                setState(() {
                  widget.status = value;
                  print(widget.status);
                });
              },
            )
          ]),
          OpacityLine()
        ],
      ),
    );
  }
}
