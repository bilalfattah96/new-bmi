import 'package:flutter/material.dart';

class mycontainer extends StatelessWidget {
   mycontainer({ required this.color,  this.cardChild, this.onPress});
  final Color color;
  final Widget? cardChild;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        // width: 170,
        // height: 200,
        child: cardChild,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}
