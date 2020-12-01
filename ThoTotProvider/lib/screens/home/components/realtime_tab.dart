import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/components/job_container.dart';
import 'package:fluttertransoon/screens/home/components/status_bar.dart';

import 'status_bar.dart';

class RealtimeTab extends StatefulWidget {
  bool status = true;
  State<RealtimeTab> createState() => RealtimeTabState();
}

class RealtimeTabState extends State<RealtimeTab> {
  StatusBar bar;
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                        });
                      },
                    )
                  ]),
            ],
          ),
        ),
        widget.status?
        JobContainer(
          title: "Sửa chữa tủ lạnh",
          address: "Chung cư C7, P. Tăng Nhơn Phú, TP.HCM ",
          cusName: "Anh Bùi Quang Huy",
          distance: "Cách đây 8km",
          problem: "Tủ lạnh không mát mặc dù có tiếng chạy rè rè ",
          time: "Yêu cầu 5 phút trước",
          fullTime: "Yêu cầu 5 phút trước",
          typeContainer: "requestRealtime",
          realPrice: "200.000đ/giờ",
        ):Container(),
      ],
    );
  }
}
