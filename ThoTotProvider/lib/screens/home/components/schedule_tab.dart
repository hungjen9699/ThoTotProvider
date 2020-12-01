import 'package:flutter/cupertino.dart';
import 'package:fluttertransoon/screens/components/job_container.dart';
import 'package:fluttertransoon/screens/home/components/home_filter_bar.dart';

class ScheduleTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      children: <Widget>[
        HomeFilterBar(),
        JobContainer(
          title: "Sửa chữa tủ lạnh",
          address: "Chung cư C7, P. Tăng Nhơn Phú, TP.HCM ",
          cusName: "Anh Bùi Quang Huy",
          distance: "Cách đây 8km",
          fullTime: "09:00 sáng | Ngày 7/7/2020",
          problem: "Tủ lạnh không mát mặc dù có tiếng chạy rè rè ",
          time: "9 giờ sáng mai",
          typeContainer: "request",
        ),
        JobContainer(
          title: "Sửa khóa",
          address: "32/4 Tam Đa, P. Long Trường, TP.HCM ",
          cusName: "Anh Đỗ Quang Nhật",
          distance: "Cách đây 4km",
          fullTime: "09:00 sáng | Ngày 7/7/2020",
          problem: "Làm mất khóa nhà, không mở được ổ khóa",
          time: "9 giờ sáng mai",
          typeContainer: "request",
        ),
        JobContainer(
          title: "Sửa chữa điện gia dụng",
          address: "Chung cư Sky 9, P. Long Trường, TP.HCM ",
          cusName: "Anh Nguyễn Minh Mẫn",
          distance: "Cách đây 2km",
          fullTime: "10:00 sáng | Ngày 7/7/2020",
          problem: "Máy lạnh không mát mặc dù có tiếng chạy rè rè ",
          time: "10 giờ sáng mai",
          typeContainer: "request",
        )
      ],
    );
  }
}
