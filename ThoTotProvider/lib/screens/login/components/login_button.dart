import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/home_screen.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      },
      child: Text('Đăng nhập',
          style: TextStyle(color: Colors.white, fontSize: 18)),
      color: const Color(0xff5c4db1),
    );
  }
}
