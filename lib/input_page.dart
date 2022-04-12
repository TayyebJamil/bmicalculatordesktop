import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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

class RepeatcontainerCode extends StatelessWidget {
  RepeatcontainerCode({@required this.colors,this.cardwidget});
   final Color colors;
   final Widget cardwidget;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: cardwidget,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadiusDirectional.circular(10.0)
      ),
    );
  }
}
