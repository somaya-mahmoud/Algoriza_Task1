
 import 'package:flutter/material.dart';
  class MyText extends StatelessWidget {

    final String text;
    final Color textColor;
    final double size;
    const MyText({Key? key,required this.text,this.textColor = Colors.black,this.size = 20.0}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.only(left: 20,right: 20),
        child: Text(
          text,style: TextStyle(color: textColor,fontSize: size,fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,),
      );
    }
  }
