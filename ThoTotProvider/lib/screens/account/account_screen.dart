import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertransoon/screens/account/components/job_edit.dart';
import 'package:fluttertransoon/screens/components/opacity_line.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/account_edit.dart';
import 'components/account_info.dart';
import 'components/banner.dart';
import 'components/profile_tab.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: ListView(
        children: <Widget>[
          AccountInfo("Đỗ Hữu Phát", "dhphat12@gmail.com"),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AccountEditForm()),
              )
            },
            child: ProfileTab(
              name: "Sửa thông tin cá nhân",
              icon: Icons.border_color,
            ),
          ),
          OpacityLine(),
          GestureDetector(
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => JobEditForm()),
              )
            },
            child: ProfileTab(
              name: "Cập nhật loại hình sửa chữa và giá",
              icon: Icons.update,
            ),
          ),
          OpacityLine(),
          ProfileTab(
            name: "Gia hạn ứng dụng",
            icon: FontAwesomeIcons.suitcase,
          ),
          OpacityLine(),
          ProfileTab(
            name: "Cài đặt",
            icon: Icons.settings,
          ),
          OpacityLine(),
          ProfileTab(
            name: "Trợ giúp",
            icon: Icons.help,
          ),
          OpacityLine(),
          ProfileTab(
            name: "Gọi điện khẩn cấp",
            icon: Icons.warning,
          ),
          OpacityLine(),
          ProfileTab(
            name: "Về Thợ Tốt",
            icon: Icons.info,
          ),
          OpacityLine(),
          ProfileTab(
            name: "Đăng xuất",
            icon: Icons.power_settings_new,
          ),
          SaleBanner()
        ],
      ),
    );
  }
}
