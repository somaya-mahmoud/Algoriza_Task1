
  import 'package:flutter/material.dart';
  class Button_2 extends StatelessWidget {
    final String buttonText;
    final Color textColor;
    final  VoidCallback onClick;
    final Color color;
    final double size;
    const Button_2({Key? key,this.size = 25.0,required this.textColor,
      required this.buttonText,required this.onClick,required this.color}) : super(key: key);
    @override
    Widget build(BuildContext context) {
      return Container(
        height: 65,
        padding: EdgeInsets.only(left: 10,right: 10),
        width: double.infinity,
        child: MaterialButton(
          padding: EdgeInsets.all(15.0),
          color: color,
          onPressed: onClick,child: Text(buttonText,style: TextStyle(color: textColor,
          fontSize: size,),),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),)),
      );
    }
  }
