import 'package:flutter/material.dart';
import 'constant.dart';
import 'resuseableCards.dart';

class Resultpage extends StatelessWidget {
  const Resultpage({super.key});

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
                  child: Text(
            'Your Result',
            style: tilteTextStyle,
          ))),
          Expanded(
            flex: 5,
            child: mycontainer(
              color: activeCardColor,
              cardChild: Column(
                children: [
                  Text('Normal',style: resultTextStyle,),
                  Text('18.3',style: TextStyle(fontSize: 100,color: Colors.white,fontWeight: FontWeight.bold),),
                  Text('Your BMI is low, You should eat more',style: bodyTextStyle,textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
