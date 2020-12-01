import 'package:flutter/material.dart';

class UpdateButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      onPressed: () {},
      child: Text('Cập nhật', style: TextStyle(color: Colors.white)),
      color: const Color(0xff5c4db1),
    );
  }
}
