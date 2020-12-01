import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GoogleLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        side: BorderSide(
          width: 0.5,
          color: const Color(0xff7e7e7e),
        ),
      ),
      icon: Icon(
        FontAwesomeIcons.google,
        color: Colors.red,
      ),
      onPressed: () {
        // Navigator.push(
        //       context,
        //       MaterialPageRoute(builder: (context) => SecondRoute()),
        //     );
        //   },
      },
      label:
          Text('Đăng nhập bằng Google', style: TextStyle(color: Colors.grey)),
      color: Colors.white,
    );
  }
}
