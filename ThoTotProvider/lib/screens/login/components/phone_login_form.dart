import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/components/text_field.dart';
import 'login_button.dart';

class PhoneLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5c4db1),
        title: Text("Đăng nhập bằng số điện thoại"),
      ),
      body: Container(
        color: const Color(0xffe5e5e5),
        padding: EdgeInsets.all(12),
        child: ListView(
          children: <Widget>[
            DefaultTextField(
              title: 'Số điện thoại',
              hintText: 'Nhập số điện thoại',
              isPass: false,
              isRequired: false,
            ),
            DefaultTextField(
              title: 'Mật khẩu',
              hintText: 'Nhập mật khẩu',
              isPass: true,
              isRequired: false,
            ),
            LoginButton(),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "Quên mật khẩu?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color(0xff5c4db1),
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
