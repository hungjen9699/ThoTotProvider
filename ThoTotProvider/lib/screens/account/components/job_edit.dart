import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/account/components/update_button.dart';
import 'package:fluttertransoon/screens/components/check_box_with_field.dart';

class JobEditForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5c4db1),
        title: Text("Cập nhật loại hình sửa chữa và giá"),
      ),
      body: Container(
          color: const Color(0xffe5e5e5),
          child: Container(
            margin: EdgeInsets.only(top: 10),
            child: ListView(
              children: <Widget>[
                DefaultCheckBoxWithField(options: [
                  "Sửa chữa điện lạnh",
                  "Sửa chữa điện gia dụng",
                  "Sửa ống nước, tắc cầu",
                  "Sửa xe",
                  "Sửa khóa",
                  "Sửa chữa nội thất"
                ]),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 80),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "1. Giá tất cả các loại hình sửa chữa được tính theo giờ.",
                              style: const TextStyle(
                                  color: const Color(0xff6b6b6b),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "SVN-ProductSans",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.0)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "2. Giá trên không bao gồm chi phí thay thế vật dung, vật liệu, các chi tiết trong sản phẩm cần sửa chữa.",
                              style: const TextStyle(
                                  color: const Color(0xff6b6b6b),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "SVN-ProductSans",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.0)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                              "3. Giá trên bao gồm cả phí di chuyển (Không thu thêm phí di duyển khi đi sửa chữa.",
                              style: const TextStyle(
                                  color: const Color(0xff6b6b6b),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "SVN-ProductSans",
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16.0)),
                        ),
                      ],
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 70),
                  child: UpdateButton(),
                )
              ],
            ),
          )),
    );
  }
}
