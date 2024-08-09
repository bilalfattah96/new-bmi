import 'package:flutter/material.dart';
import 'constant.dart';
class mybtn extends StatelessWidget {
  const mybtn({super.key,required this.text, required this.ontap});

final String text; 
final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
              onTap:ontap,
              child: Container(
                child: Center(
                    child: Text(
                 text,
                  style: BottomNavigationBarText,
                ),),
                color: BottomNavigationBarColor,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(bottom: 10),
                width: double.infinity,
                height: BottomNavigationBarHeight,
              ),
            );
  }
}