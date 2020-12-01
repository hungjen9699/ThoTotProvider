import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/register/components/bundle_container.dart';

class BundlePickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff5c4db1),
        title: Text("Lựa chọn gói ứng dụng"),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/2328117.png'), fit: BoxFit.cover)),
        padding: EdgeInsets.all(12),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 90, vertical: 30),
              child: Text(
                "Tăng thu nhập thêm kết nối",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
            ),
            BundleContainer(
                time: "3 THÁNG",
                discountCost: "279.000đ",
                realCost: "354.000đ"),
            BundleContainer(
                time: "6 THÁNG",
                discountCost: "499.000đ",
                realCost: "708.000đ"),
            BundleContainer(
                time: "1 NĂM",
                discountCost: "899.000đ",
                realCost: "1.416.000đ"),
          ],
        ),
      ),
    );
  }
}
