import 'package:flutter/material.dart';

class DefaultCheckBox extends StatefulWidget {
  final String _title;
  final List<String> _options;

  DefaultCheckBox(
      {Key key, @required String title, @required List<String> options})
      : assert(title != null, options != null),
        _title = title,
        _options = options,
        super(key: key);

  @override
  DefaultCheckBoxState createState() => DefaultCheckBoxState();
}

class DefaultCheckBoxState extends State<DefaultCheckBox> {
  List<String> get options => widget._options;
  String get title => widget._title;

  List<bool> values = List.filled(10, false);

  void _onCheckBoxSelected(bool selected, int optionId) {
    setState(() {
      values[optionId] = selected;
    });
  }

  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        margin: EdgeInsets.only(bottom: 6),
        width: MediaQuery.of(context).size.width,
        child: Text(title,
            style: const TextStyle(
                color: const Color(0xff393939),
                fontWeight: FontWeight.w400,
                fontFamily: "SVN-ProductSans",
                fontStyle: FontStyle.normal,
                fontSize: 17),
            textAlign: TextAlign.left),
      ),
      for (var i = 0; i < options.length; i++)
        CheckboxListTile(
          title: Text(options[i]),
          value: values[i],
          onChanged: (bool value) {
            _onCheckBoxSelected(value, i);
          },
          controlAffinity: ListTileControlAffinity.leading,
        )
    ]);
  }
}
