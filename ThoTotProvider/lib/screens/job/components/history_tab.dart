import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/components/job_container.dart';

class HistoryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      children: <Widget>[
        JobContainer(
          title: "Sửa chữa tủ lạnh",
          address: "Chung cư C7, P. Tăng Nhơn Phú, TP.HCM ",
          cusName: "Anh Bùi Quang Huy",
          distance: "Cách đây 8km",
          fullTime: "09:00 sáng | Ngày 7/7/2020",
          problem: "Tủ lạnh không mát mặc dù có tiếng chạy rè rè ",
          realPrice: "150.000đ/giờ",
          finishTime: "10:00 | 7/07/2020",
          numStar: "5 ",
          typeContainer: "history",
          feedBack: "\"Sữa chữa nhanh gọn.\"",
        ),
        JobContainer(
          title: "Sửa khóa",
          address: "32/4 Tam Đa, P. Long Trường, TP.HCM ",
          cusName: "Anh Đỗ Quang Nhật",
          distance: "Cách đây 4km",
          fullTime: "09:00 sáng | Ngày 7/7/2020",
          problem: "Làm mất khóa nhà, không mở được ổ khóa",
          finishTime: "10:00 | 7/07/2020",
          typeContainer: "history",
          realPrice: "200.000đ/giờ",
          numStar: "4 ",
          feedBack: "\"Giao tiếp lịch sự.\"",
        ),
        JobContainer(
          title: "Sửa chữa điện gia dụng",
          address: "Chung cư Sky 9, P. Long Trường, TP.HCM ",
          cusName: "Anh Nguyễn Minh Mẫn",
          distance: "Cách đây 2km",
          fullTime: "10:00 sáng | Ngày 7/7/2020",
          problem: "Máy lạnh không mát mặc dù có tiếng chạy rè rè ",
          finishTime: "11:00 | 7/07/2020",
          typeContainer: "history",
          realPrice: "350.000đ/giờ",
          numStar: "3 ",
          feedBack: "\"Anh đẹp trai và rất tỉ mỉ.\"",
        )
      ],
    );
  }
}
