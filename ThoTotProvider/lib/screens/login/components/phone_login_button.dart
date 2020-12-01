import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/login/components/phone_login_form.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PhoneLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      icon: Icon(
        FontAwesomeIcons.mobileAlt,
        color: Colors.white,
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PhoneLoginForm()),
        );
      },
      label: Text('Đăng nhập bằng số điện thoại',
          style: TextStyle(color: Colors.white)),
      color: const Color(0xff5c4db1),
    );
  }
}
