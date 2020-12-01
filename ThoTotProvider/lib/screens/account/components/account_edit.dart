import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/account/components/update_button.dart';
import 'package:fluttertransoon/screens/components/text_field.dart';

class AccountEditForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5c4db1),
        title: Text("Sửa thông tin cá nhân"),
      ),
      body: Container(
        color: const Color(0xffe5e5e5),
        padding: EdgeInsets.all(12),
        child: ListView(
          children: <Widget>[
            DefaultTextField(
              title: 'Họ và tên',
              hintText: 'Nhập họ và tên',
              isPass: false,
              isRequired: false,
            ),
            DefaultTextField(
              title: 'Số điện thoại',
              hintText: 'Nhập số điện thoại',
              isPass: false,
              isRequired: false,
            ),
            DefaultTextField(
              title: 'Email',
              hintText: 'Nhập email',
              isPass: false,
              isRequired: false,
            ),
            DefaultTextField(
              title: 'Số CMND',
              hintText: 'Nhập số CMND',
              isPass: false,
              isRequired: false,
            ),
            UpdateButton()
          ],
        ),
      ),
    );
  }
}
