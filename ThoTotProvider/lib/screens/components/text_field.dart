import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  final String _title;
  final String _hintText;
  final bool _isPass;
  final bool _isRequired;

  DefaultTextField(
      {Key key,
      @required String title,
      @required String hintText,
      @required bool isRequired,
      @required bool isPass})
      : assert(title != null,
            hintText != null && isPass != null && isRequired != null),
        _title = title,
        _hintText = hintText,
        _isPass = isPass,
        _isRequired = isRequired,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(bottom: 6),
            width: MediaQuery.of(context).size.width,
            child: RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                  text: _title,
                  style: const TextStyle(
                      color: const Color(0xff393939),
                      fontWeight: FontWeight.w400,
                      fontFamily: "SVN-ProductSans",
                      fontStyle: FontStyle.normal,
                      fontSize: 17),
                  children: <TextSpan>[
                    if (_isRequired)
                      TextSpan(
                        text: " *",
                        style: const TextStyle(
                            color: const Color(0xffff0000),
                            fontWeight: FontWeight.w400,
                            fontFamily: "SVN-ProductSans",
                            fontStyle: FontStyle.normal,
                            fontSize: 17),
                      ),
                  ]),
            )),
        Container(
            margin: EdgeInsets.only(bottom: 12),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 17,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: const Color(0xffffffff)),
            child: Container(
                margin: EdgeInsets.only(left: 15),
                child: TextField(
                  obscureText: _isPass,
                  decoration: InputDecoration(
                      border: InputBorder.none, hintText: _hintText),
                )))
      ],
    );
  }
}
