import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/register/bundle_picker_screen.dart';

class RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BundlePickerScreen()),
        );
      },
      child: Text('Đăng ký', style: TextStyle(color: Colors.white)),
      color: const Color(0xff5c4db1),
    );
  }
}
