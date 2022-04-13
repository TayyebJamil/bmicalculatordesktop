import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icontextfile.dart';
import 'containerfile.dart';
const activeColor = Color(0xFF1D1E33);
const deActiveColor = Color(0xFF111328);
enum Gender{
  male,
  female,
}
class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
//  Color maleColor = deActiveColor;
  //Color feMaleColor = deActiveColor;
  //void updateColor(Gender gendertype)
  //{
    //if(gendertype==Gender.male){
      //maleColor = activeColor;
      //feMaleColor = deActiveColor;
    //}
    //if(gendertype==Gender.female){

      //feMaleColor = activeColor;
      //maleColor = deActiveColor;
    //}
  //}

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
              Expanded(child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    selectGender=Gender.male;
                  });
                },
                child: RepeatcontainerCode(
                    colors: selectGender==Gender.male?activeColor:deActiveColor,
                    cardwidget: RepeatIconandTextwidget(
                      iconData: FontAwesomeIcons.male,
                      label: 'Male',
                    ),
                ),
              ),),
              Expanded(child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    selectGender=Gender.female;
                  });
                },
                child: RepeatcontainerCode(
                  colors: selectGender==Gender.female?activeColor:deActiveColor,
                  cardwidget: RepeatIconandTextwidget(
                    iconData: FontAwesomeIcons.female,
                    label: 'Female',
                  ),
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




