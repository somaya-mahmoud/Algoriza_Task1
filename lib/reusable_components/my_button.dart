

  import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String buttonText;
  final Color textColor;
  final  VoidCallback onClick;
  final Color color;
  final double size;
  MyButton({Key? key,this.size = 25.0,required this.textColor,
    required this.buttonText,required this.onClick,required this.color}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return
         Container(
           margin: EdgeInsets.only(top: 5.0,left: 250),
           width: 115,
           height: 70,
           child: MaterialButton(
             padding: EdgeInsets.all(15),
             color: Colors.grey[200],
        onPressed: (){
            onClick();
        },
             shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(100.0),
             ),
            child: Text(buttonText,style: TextStyle(color: textColor,fontSize: size),),

      ),
         );
    }
  }
