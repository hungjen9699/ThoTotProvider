import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:list_tile_more_customizable/list_tile_more_customizable.dart';

import 'opacity_line.dart';

class JobContainer extends StatelessWidget {
  final String _title;
  final String _time;
  final String _cusName;
  final String _address;
  final String _distance;
  final String _fullTime;
  final String _problem;
  final String _realPrice;
  final String _finishTime;
  final String _typeContainer;
  final String _numStar;
  final String _feedBack;

  JobContainer(
      {Key key,
      @required String title,
      String time,
      @required String cusName,
      @required String address,
      @required String distance,
      String fullTime,
      @required String problem,
      String realPrice,
      String finishTime,
      String numStar,
      String feedBack,
      @required String typeContainer})
      : assert(title != null &&
            cusName != null &&
            address != null &&
            distance != null &&
            problem != null &&
            typeContainer != null),
        _title = title,
        _time = time ?? "",
        _numStar = numStar ?? "",
        _feedBack = feedBack ?? "",
        _cusName = cusName,
        _address = address,
        _distance = distance,
        _fullTime = fullTime,
        _problem = problem,
        _realPrice = realPrice ?? "",
        _finishTime = finishTime ?? "",
        _typeContainer = typeContainer,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            color: Colors.white),
        child: Column(children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(7)),
                color: const Color(0xff5c4db1)),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(_title,
                    style: TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontFamily: "SVN-ProductSans",
                        fontStyle: FontStyle.normal,
                        fontSize: 16)),
                _typeContainer=="requestRealtime"?   Text(_realPrice,
                    style: TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontFamily: "SVN-ProductSans",
                        fontStyle: FontStyle.normal,
                        fontSize: 14)):
                Text(_time,
                    style: TextStyle(
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        fontFamily: "SVN-ProductSans",
                        fontStyle: FontStyle.normal,
                        fontSize: 14)),
                // here

              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.user,
                          color: const Color(0xff5c4db1),
                        ),
                        Text(" " + _cusName)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      children: <Widget>[
                        FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: const Color(0xff5c4db1),
                        ),
                        Text(
                           _address,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14.0),
                        )
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: <Widget>[
                          FaIcon(
                            FontAwesomeIcons.route,
                            color: const Color(0xff5c4db1),
                          ),
                          Text(
                            " " + _distance,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                fontSize: 14.0),
                          ),
                        ],
                      )),
                  if (_fullTime != null)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: <Widget>[
                          FaIcon(FontAwesomeIcons.clock,
                              color: const Color(0xff5c4db1)),
                         _typeContainer=="requestRealtime"? Text(" " + _fullTime): Text(" Thời gian: " + _fullTime)
                        ],
                      ),
                    ),
                  ListTileMoreCustomizable(
                    dense: false,
                    leading:
                        Icon(Icons.warning, color: const Color(0xff5c4db1)),
                    contentPadding: EdgeInsets.all(0),
                    horizontalTitleGap: 0.0,
                    minVerticalPadding: 0.0,
                    minLeadingWidth: 0,
                    title: Text("Vấn đề: " + _problem,
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "SVN-ProductSans",
                            fontStyle: FontStyle.normal,
                            fontSize: 14)),
                  )
                ],
              )),
          OpacityLine(),
          if (_typeContainer == 'request')
            Container(
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: const Color(0xffffffff)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: const Color(0xff5c4db1)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {

                      },
                      child: Text('  Bỏ qua  ',
                          style: TextStyle(color:const Color(0xff5c4db1), fontSize: 18)),
                      color: Colors.white,
                    ),
                    RaisedButton(
                      padding:
                      EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      onPressed: () {
                        return showDialog<void>(
                          context: context,
                          barrierDismissible: false, // user must tap button!
                          builder: (BuildContext context) {
                            return AlertDialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              backgroundColor: const Color(0xff5c4db1),
                              title: Text(
                                'Nhận việc thành công',
                                style: TextStyle(color: Colors.white),
                              ),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    Text(
                                        'Chúng tôi sẽ thông báo đến bạn ngay khi người yêu cầu chấp thuận',
                                        style: TextStyle(color: Colors.white))
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('Đồng ý',
                                      style: TextStyle(color: Colors.white)),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                ),

                              ],
                            );
                          },
                        );
                      },
                      child: Text('Nhận sửa',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      color: const Color(0xff5c4db1),
                    )
                  ],
                )),
          if (_typeContainer == 'requestRealtime')
            Container(
              height: 50,
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    padding:
                    EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: const Color(0xff5c4db1)),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {

                    },
                    child: Text('  Bỏ qua  ',
                        style: TextStyle(color:const Color(0xff5c4db1), fontSize: 18)),
                    color: Colors.white,
                  ),
                  RaisedButton(
                    padding:
                    EdgeInsets.symmetric(vertical: 12, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    onPressed: () {
                      return showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return AlertDialog(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            backgroundColor: const Color(0xff5c4db1),
                            title: Text(
                              'Nhận việc thành công',
                              style: TextStyle(color: Colors.white),
                            ),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text(
                                      'Bạn đã nhận việc thành công. Hãy chuẩn bị dụng cụ và di chuyển đến nơi sửa chữa',
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('Đồng ý',
                                    style: TextStyle(color: Colors.white)),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),

                            ],
                          );
                        },
                      );
                    },
                    child: Text('Nhận sửa',
                        style: TextStyle(color: Colors.white, fontSize: 18)),
                    color: const Color(0xff5c4db1),
                  )
                ],
              )
            ),
          if (_typeContainer == "accepted")
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              padding: EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 7),
                              decoration: BoxDecoration(
                                  color: const Color(0xff5c4db1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: FaIcon(
                                FontAwesomeIcons.phoneAlt,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 5),
                              padding: EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 7),
                              decoration: BoxDecoration(
                                  color: const Color(0xff5c4db1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                              child: FaIcon(
                                FontAwesomeIcons.facebookMessenger,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 7),
                              decoration: BoxDecoration(
                                  color: const Color(0xff5c4db1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                children: <Widget>[
                                  FaIcon(
                                    FontAwesomeIcons.paperPlane,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    " Chỉ đường",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        Text(_realPrice,
                            style: const TextStyle(
                                color: const Color(0xff5c4db1),
                                fontWeight: FontWeight.w700,
                                fontFamily: "SVN-ProductSans",
                                fontStyle: FontStyle.normal,
                                fontSize: 16.0))
                      ],
                    ),
                  )
                ],
              ),
            ),
          if (_typeContainer == "waiting")
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        child: Text("Đang chờ khách hàng xác nhận",
                            style: const TextStyle(
                                color: const Color(0xff5c4db1),
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto",
                                fontStyle: FontStyle.normal,
                                fontSize: 13.0)),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: <Widget>[
                        Text(_realPrice,
                            style: const TextStyle(
                                color: const Color(0xff5c4db1),
                                fontWeight: FontWeight.w700,
                                fontFamily: "SVN-ProductSans",
                                fontStyle: FontStyle.normal,
                                fontSize: 17.0))
                      ],
                    ),
                  )
                ],
              ),
            ),
          if (_typeContainer == "history")
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Text("Hoàn thành: " + _finishTime,
                                  style: const TextStyle(
                                      color: const Color(0xff5c4db1),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Roboto",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14.0)),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: <Widget>[
                              Text(_realPrice,
                                  style: const TextStyle(
                                      color: const Color(0xff5c4db1),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "SVN-ProductSans",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 17.0))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  OpacityLine(),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Khách hàng đánh giá",
                                style: const TextStyle(
                                    color: const Color(0xff5c4db1),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "Roboto",
                                    fontStyle: FontStyle.normal,
                                    fontSize: 15.0),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      _numStar,
                                      style: const TextStyle(
                                          color: const Color(0xff646464),
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "Roboto",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 20.0),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow[700],
                                      size: 25,
                                    )
                                  ],
                                ))
                          ],
                        ),
                        Opacity(
                          opacity: 0.501960813999176,
                          child: Container(
                              width: 1,
                              height: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                color: const Color(0xffb7b7b7),
                                width: 0.5,
                              ))),
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10),

                              child: Text(_feedBack,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      color: const Color(0xffa5a5a5),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "SVN-ProductSans",
                                      fontStyle: FontStyle.normal,
                                      fontSize: 12.0)),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
        ]));
  }
}
