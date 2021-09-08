import 'package:flutter/material.dart';


class CustomTextFormFeild extends StatelessWidget {

  final String hintText;
  final int maxlines;
  final int minLines;
  final int maxLenght;
  final Function onSubmitted;
  final Function validatorr;

  CustomTextFormFeild({Key key, this.hintText, this.maxlines, this.minLines, this.maxLenght, this.onSubmitted, this.validatorr})
      : super(key: key);


  @override

  Widget build(BuildContext context) {
    return TextFormField(
      //expands: true,
      maxLines: maxlines,
      minLines: minLines,
      decoration: InputDecoration(
          labelText: hintText,
         // hintStyle: TextStyle(),
          focusColor: Colors.red,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),

          )
      ),
      maxLength: maxLenght,
      onSaved: onSubmitted,
        validator: validatorr,
    );
  }
  }