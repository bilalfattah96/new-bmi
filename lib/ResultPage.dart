import 'package:bmi/button.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'resuseableCards.dart';

class Resultpage extends StatelessWidget {
  const Resultpage({super.key,required this.bmiresult,required this.getResult,required this.getInterpretation});

final String bmiresult;
final String getResult;
final String getInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
                // padding: EdgeInsets.all(15),
                // alignment: Alignment.bottomLeft,
                  child: Text(
            'Your Result',
            style: tilteTextStyle,
          ))),
          Expanded(
            flex: 5,
            child: mycontainer(
              color: activeCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(getResult,style: resultTextStyle,textAlign: TextAlign.center,),
                  Text(bmiresult,style: bmiscore,textAlign: TextAlign.center,),
                  Text(getInterpretation,style: bodyTextStyle,textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          mybtn(text: 'Re Calculte BMI', ontap:  () {
                Navigator.pop(context);
              },)
        ],
      ),
    );
  }
}
