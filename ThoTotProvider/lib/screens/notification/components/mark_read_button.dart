import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MarkReadButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      icon: Icon(
        FontAwesomeIcons.check,
        color: Colors.white,
      ),
      onPressed: () {},
      label:
          Text('Đánh dấu đã đọc tất cả', style: TextStyle(color: Colors.white)),
      color: const Color(0xff5c4db1),
    );
  }
}
