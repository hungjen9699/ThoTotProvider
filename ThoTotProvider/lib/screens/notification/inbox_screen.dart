import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/notification/components/notification_tile.dart';

import 'components/mark_read_button.dart';

class InboxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: <Widget>[
            NotificationTile(
              title: "Thông báo mới về ứng dụng",
              body: "Yêu Nhà thông báo đến bạn rằng ...",
              time: "25 tháng 6 năm 2020, 07:30pm",
            ),
            NotificationTile(
              title: "Thông báo có hoạt động mới",
              body: "Yêu Nhà thông báo đến bạn rằng ...",
              time: "25 tháng 7 năm 2020, 11:30pm",
            ),
            MarkReadButton()
          ],
        ));
  }
}
