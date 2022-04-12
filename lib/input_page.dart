import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icontextfile.dart';
import 'containerfile.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(child: RepeatcontainerCode(
                  colors: Color(0xFF1D1E33),
                  cardwidget: RepeatIconandTextwidget(
                    iconData: FontAwesomeIcons.male,
                    label: 'Male',
                  ),
              ),),
              Expanded(child: RepeatcontainerCode(
                colors: Color(0xFF1D1E33),
                cardwidget: RepeatIconandTextwidget(
                  iconData: FontAwesomeIcons.female,
                  label: 'Female',
                ),
              ),),
            ],
          ),),
          Expanded(child: RepeatcontainerCode(
            colors: Color(0xFF1D1E33),
          ),),
          Expanded(child: Row(
          children: <Widget>[
          Expanded(child: RepeatcontainerCode(
            colors: Color(0xFF1D1E33),
          ),),
          Expanded(child: RepeatcontainerCode(
            colors: Color(0xFF1D1E33),
          ),),
        ],
      ),),
        ],
      ),
    );
  }
}




