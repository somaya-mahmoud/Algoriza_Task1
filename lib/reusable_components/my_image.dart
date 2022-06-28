

  import 'package:flutter/material.dart';
  class MyImage extends StatelessWidget {
    final String image;
    const MyImage({Key? key,required this.image}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        padding: EdgeInsets.all(10),
        child: Image.network(image),
      );
    }
  }
