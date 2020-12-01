import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/notification/notification_details_screen.dart';

class NotificationTile extends StatelessWidget {
  final String _title;
  final String _body;
  final String _time;

  NotificationTile(
      {Key key,
      @required String title,
      @required String body,
      @required String time})
      : assert(title != null && body != null && time != null),
        _title = title,
        _body = body,
        _time = time,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NotificationDetails()),
          );
        },
        child: Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(left: 10,right: 5),
                    child: Icon(
                      Icons.mail,
                      color: const Color(0xff5c4db1),
                      size: 30,
                    ),
                    width: MediaQuery.of(context).size.width / 10,
                    decoration: BoxDecoration()),
                Container(
                  height: MediaQuery.of(context).size.height / 10,
                  margin: EdgeInsets.only(
                    left: 10,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 10,right: 30),
                        child: Text(_title,
                            style: const TextStyle(
                              color: const Color(0xff454545),
                              fontWeight: FontWeight.w700,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5,right: 30),
                        child: Text(_body,
                            style: const TextStyle(
                                color: const Color(0xff454545),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 13),
                            textAlign: TextAlign.left),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5,right: 95),
                        child: Text(
                          _time,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto",
                              fontStyle: FontStyle.normal,
                              fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 8,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: const Color(0xff7e7e7e), width: 1),
                color: const Color(0xffffffff))));
  }
}
