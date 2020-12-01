import 'package:flutter/material.dart';

class FilterButton extends StatefulWidget {
  final String _title;
  FilterButton({Key key, @required String title})
      : assert(title != null),
        _title = title,
        super(key: key);

  @override
  FilterButtonState createState() => FilterButtonState();
}

class FilterButtonState extends State<FilterButton> {
  String get title => widget._title;

  Color colorBackground = Colors.white;
  Color colorTitle = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        onPressed: () {
          setState(() {
            if (colorBackground == Colors.white) {
              colorBackground = const Color(0xff5c4db1);
              colorTitle = Colors.white;
            } else {
              colorBackground = Colors.white;
              colorTitle = Colors.black;
            }
          });
        },
        child: Text(title, style: TextStyle(color: colorTitle, fontSize: 16)),
        color: colorBackground,
      ),
    );
  }
}
