import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FacebookLoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      icon: Icon(FontAwesomeIcons.facebookF, color: Colors.white),
      onPressed: () {
        // BlocProvider.of<LoginBloc>(context).add(
        //   LoginWithGooglePressed(),
        // );
      },
      label: Text('Đăng nhập bằng Facebook',
          style: TextStyle(color: Colors.white)),
      color: Colors.blue,
    );
  }
}
