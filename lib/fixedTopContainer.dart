import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uiapp/cardsConnection.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';



class FixedTopContainer extends StatelessWidget {
  const FixedTopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichText(
                  text: TextSpan(
                style: new TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
                children: [
                  
                  TextSpan(
                      text: 'Sleep',
                      style: TextStyle(fontSize: 30, color: Colors.black)),
                  TextSpan(
                      text: '.py',
                      style: TextStyle(fontSize: 30, color: Colors.blue)),
                ],
              )),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.blue[200],
                  child: GestureDetector(
                    onTap: () => {Navigator.pushNamed(context, '/profile')},
                    child: CircleAvatar(
                      radius: 30,
                      child: Text(
                        "JD",
                        style: TextStyle(fontSize: 30),
                      ),
                      backgroundColor: Colors.blue[150],
                    ),
                  ),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 300,
                child: SleekCircularSlider(
                  appearance: CircularSliderAppearance(
                  spinnerDuration: 50,
                  customColors: CustomSliderColors(progressBarColor: Colors.blue, ),
                  customWidths: CustomSliderWidths(progressBarWidth: 10,)),
                  min: 10,
                  max: 100,
                  initialValue: 30,


                ),
              ),
            ],
          ),
          CardsConnection(
            netatmostatus: true,
            withingsStatus: true,
          ),
        ]),
      ),
    );
  }
}
