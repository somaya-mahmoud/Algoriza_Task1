
  import 'package:flutter/material.dart';
  Widget myTextFormField({
    required TextEditingController controller,
    TextInputType textInputType = TextInputType.text,
    required FormFieldValidator <String>? validator,
    bool passwordVisible = false,
     IconData? prefixIcon ,
    Widget? suffixIcon,
     String label = "",
    GestureTapCallback? onTap,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    ValueChanged<String>? onFieldSubmitted,
    obsecureText ,

  }) {
    return
      Container(
      padding: EdgeInsets.only(left: 15,right: 15),
      child: TextFormField(
        onTap: onTap,
        controller: controller,
        onFieldSubmitted: onFieldSubmitted,
        keyboardType: textInputType,
        textInputAction: textInputAction,
        obscureText: passwordVisible,
        validator: validator,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
            labelText: label,
            labelStyle: TextStyle(fontSize: 16),
            prefixIcon: Icon(prefixIcon,size: 22),
            suffixIcon: suffixIcon

        ),

      ),
    );
  }


