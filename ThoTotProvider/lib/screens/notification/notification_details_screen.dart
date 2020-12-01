import 'package:flutter/material.dart';

class NotificationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5c4db1),
        title: Text("Xem thông báo"),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "Cập nhật ứng dụng Thợ tốt ngay hôm nay",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Text(
                    "Jun 06, 2020, 07:30pm",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "Lorem ipsum dolor sit amet",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 12),
                  child: Text(
                    "Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                    style: const TextStyle(
                        color: const Color(0xff454545),
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto",
                        height: 1.5,
                        fontStyle: FontStyle.normal,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
            Image.asset(
              "assets/Asset -1.png",
              height: 400,
            ),
            RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              onPressed: () {},
              child:
                  Text('Cập nhật ngay', style: TextStyle(color: Colors.white)),
              color: const Color(0xff5c4db1),
            )
          ],
        ),
      ),
    );
  }
}
