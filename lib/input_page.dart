import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icontextfile.dart';
import 'containerfile.dart';
import 'constantFile.dart';


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
  int sliderHeight=180;
  int sliderWeight=60;
  int sliderAge=20;
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Row(
            children: <Widget>[
              Expanded(
                child: RepeatcontainerCode(
                  onpressed: (){
                    setState(() {
                      selectGender=Gender.male;
                    });
                  },
                    colors: selectGender==Gender.male?activeColor:deActiveColor,
                    cardwidget: RepeatIconandTextwidget(
                      iconData: FontAwesomeIcons.male,
                      label: 'Male',
                    ),
                ),

              ),
              Expanded(
                child: RepeatcontainerCode(
                  onpressed: (){
                    setState(() {
                      selectGender=Gender.female;
                    });
                  },
                  colors: selectGender==Gender.female?activeColor:deActiveColor,
                  cardwidget: RepeatIconandTextwidget(
                    iconData: FontAwesomeIcons.female,
                    label: 'Female',
                  ),
                ),

              ),
            ],
          ),),
          Expanded(child: RepeatcontainerCode(
            colors: Color(0xFF1D1E33),
            cardwidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Height',style: kLabelStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      sliderHeight.toString(),
                      style: kNumberStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelStyle,
                    ),
                  ],
                ),
                Slider(
                  value: sliderHeight.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue){
                    setState(() {
                      sliderHeight = newValue.round();
                    });
                  },
                ),

              ],
            ),
          ),),
          Expanded(child: Row(
          children: <Widget>[
          Expanded(child: RepeatcontainerCode(
            colors: Color(0xFF1D1E33),
            cardwidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Weight',
                  style: kLabelStyle,

                ),
                Text(
                  sliderWeight.toString(),
                  style: kNumberStyle,

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RoundIcon(
                      iconData: FontAwesomeIcons.minus,
                      onPress: (){
                        setState(() {
                          sliderWeight--;
                        });
                      },
                    ),
                    SizedBox(width: 10.0,),
                    RoundIcon(
                      iconData: FontAwesomeIcons.minus,
                      onPress: (){
                        setState(() {
                          sliderWeight++;
                        });
                      },

                    ),

                  ],
                ),

              ],
            ),
          ),),
          Expanded(child: RepeatcontainerCode(
            colors: Color(0xFF1D1E33),
            cardwidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Age',
                  style: kLabelStyle,

                ),
                Text(
                  sliderAge.toString(),
                  style: kNumberStyle,

                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RoundIcon(
                      iconData: FontAwesomeIcons.minus,
                      onPress: (){
                        setState(() {
                          sliderAge--;
                        });
                      },
                    ),
                    SizedBox(width: 10.0,),
                    RoundIcon(
                      iconData: FontAwesomeIcons.minus,
                      onPress: (){
                        setState(() {
                          sliderAge++;
                        });
                      },

                    ),

                  ],
                ),

              ],
            ),
          ),),

        ],
      ),),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
class RoundIcon extends StatelessWidget {
 RoundIcon({@required this.iconData,@required this.onPress});
  final IconData iconData;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,

      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}




