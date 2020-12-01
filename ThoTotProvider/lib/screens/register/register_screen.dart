import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/components/check_box.dart';
import 'package:fluttertransoon/screens/components/text_field.dart';

import 'components/register_button.dart';

class ProviderRegisterForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5c4db1),
        title: Text("Đăng ký trở thành Thợ tốt"),
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
              isRequired: true,
            ),
            DefaultTextField(
              title: 'Số điện thoại',
              hintText: 'Nhập số điện thoại',
              isPass: false,
              isRequired: true,
            ),
            DefaultTextField(
              title: 'Email',
              hintText: 'Nhập email',
              isPass: false,
              isRequired: true,
            ),
            DefaultTextField(
              title: 'Số CMND',
              hintText: 'Nhập số CMND',
              isPass: false,
              isRequired: true,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: Text(
                "* Thông tin bắt buộc",
                style: const TextStyle(
                    color: const Color(0xffff0000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "SVN-ProductSans",
                    fontStyle: FontStyle.normal,
                    fontSize: 16.0),
                textAlign: TextAlign.end,
              ),
            ),
            DefaultCheckBox(
              title: "Bạn hứng thú với sửa chữa gì?",
              options: [
                "Sửa chữa điện lạnh",
                "Sửa chữa điện gia dụng",
                "Sửa ống nước, tắc cầu",
                "Sửa xe",
                "Sửa khóa",
                "Sửa chữa nội thất"
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: RichText(
                text: TextSpan(
                  text:
                      'Khi tiếp tục, tôi đồng ý Thợ Tốt được phép thu thập, sử dụng và tiết lộ thông tin được tôi cung cấp theo ',
                  style:
                      TextStyle(color: Colors.black, height: 1.5, fontSize: 15),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Chính sách Bảo mật ',
                        style: TextStyle(color: Colors.blue)),
                    TextSpan(text: 'mà tôi đã đọc và hiểu.'),
                  ],
                ),
              ),
            ),
            RegisterButton()
          ],
        ),
      ),
    );
  }
}
