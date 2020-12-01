import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/components/opacity_line.dart';

import 'filter_button.dart';

class HomeFilterBar extends StatefulWidget {
  @override
  HomeFilterBarState createState() => HomeFilterBarState();
}

class HomeFilterBarState extends State<HomeFilterBar> {
  List<bool> isSelected = List.filled(2, false);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            FilterButton(title: "Gần tôi"),
            FilterButton(title: "Giá tốt"),
            Container(
              decoration: BoxDecoration(color: Colors.white),
              padding: EdgeInsets.symmetric(horizontal: 5),
              margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: DropdownButton<String>(
                hint: Text("Loại công việc",style: TextStyle(fontSize: 12),),
                items: <String>[
                  'Loại công việc',
                  'Sửa chữa điện',
                  'Sửa chữa nội thất',
                  'Sửa khóa',
                  'Sửa ống nước'
                ].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value,style: TextStyle(fontSize: 12),),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            )
          ]),
          OpacityLine()
        ],
      ),
    );
  }
}
