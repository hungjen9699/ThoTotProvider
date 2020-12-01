import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/register/components/register_button.dart';

class BundleContainer extends StatelessWidget {
  final String _time;
  final String _discountCost;
  final String _realCost;
  BundleContainer(
      {Key key,
      @required String time,
      @required String discountCost,
      @required String realCost})
      : assert(time != null && discountCost != null && realCost != null),
        _time = time,
        _discountCost = discountCost,
        _realCost = realCost,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/triangle.png'), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: [
          BoxShadow(
              color: const Color(0x29000000),
              offset: Offset(0, 3),
              blurRadius: 6,
              spreadRadius: 0)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                _time,
                style: TextStyle(
                    color: const Color(0xff5c4db1),
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                _discountCost,
                style: TextStyle(
                    color: const Color(0xff5c4db1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                _realCost,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.black,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[RegisterButton()],
          ),
        ],
      ),
    );
  }
}
