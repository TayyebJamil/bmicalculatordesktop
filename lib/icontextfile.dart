import 'package:flutter/material.dart';
class RepeatIconandTextwidget extends StatelessWidget {
  RepeatIconandTextwidget({@required this.iconData,this.label});
  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,

        ),
        Text(label,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF1D1E33),
          ),)
      ],
    );
  }
}