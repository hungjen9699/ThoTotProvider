import 'package:flutter/material.dart';

class DefaultCheckBoxWithField extends StatefulWidget {
  final List<String> _options;

  DefaultCheckBoxWithField({Key key, @required List<String> options})
      : assert(options != null),
        _options = options,
        super(key: key);

  @override
  DefaultCheckBoxWithFieldState createState() =>
      DefaultCheckBoxWithFieldState();
}

class DefaultCheckBoxWithFieldState extends State<DefaultCheckBoxWithField> {
  List<String> get options => widget._options;

  List<bool> values = List.filled(10, false);

  void _onCheckBoxSelected(bool selected, int optionId) {
    setState(() {
      values[optionId] = selected;
    });
  }

  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      for (var i = 0; i < options.length; i++)
        CheckboxListTile(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Text(options[i],style: TextStyle(fontSize: 14),),
              ),
              Container(
                width: 120,
                margin: EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: const Color(0xffffffff)),
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "Nhập giá"),
                  ),
                ),
              )
            ],
          ),
          value: values[i],
          onChanged: (bool value) {
            _onCheckBoxSelected(value, i);
          },
          controlAffinity: ListTileControlAffinity.leading,
        )
    ]);
  }
}
