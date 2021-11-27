// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Componnets {
  var myStyle =
      GoogleFonts.poppins(color: Colors.grey[700], fontWeight: FontWeight.bold);
  var myStyle2 = GoogleFonts.fruktur(
      color: Colors.red[700], fontWeight: FontWeight.normal);

  myBoxDecoration(double w, Color c1, double r, Color c2) {
    return BoxDecoration(
        border: Border.all(width: w, color: c1),
        borderRadius: BorderRadius.all(Radius.circular(r)),
        color: c2);
  }

  myContainer(Decoration decoration, double w, double h, double m, String text,
      TextStyle tStyle) {
    return Container(
      width: w,
      height: h,
      decoration: decoration,
      margin: EdgeInsets.all(m),
      child: Center(
          child: Text(
        text,
        style: tStyle,
      )),
    );
  }

  buttonStyle(Color color1, Color color2, TextStyle style) {
    return ElevatedButton.styleFrom(
        primary: color1,
        onPrimary: color2,
        textStyle: style,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: color2, width: 1.2)));
  }

  myButton(String text, ButtonStyle style, {required Function fun}) {
    return ElevatedButton(
        style: style,
        onPressed: () {
          fun();
        },
        child: Text(text));
  }

  myCard(Widget avatar, Widget text, Widget text2, double w, double h) {
    return Card(
        elevation: 4,
        shadowColor: Colors.blue,
        color: Colors.teal[500],
        child: SizedBox(
          width: w,
          height: h,
          child: ListTile(
            leading: avatar,
            title: text,
            subtitle: text2,
          ),
        ));
  }

  myText(TextStyle textStyle, String? text) {
    return Text(
      text!,
      style: textStyle,
    );
  }

  textInput(TextEditingController name, bool pass, {Function? fun}) {
    TextFormField(
        controller: name,
        keyboardType: TextInputType.emailAddress,
        maxLength: 20,
        obscureText: false,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        decoration: const InputDecoration(
          labelText: "Email",
        ),
        onChanged: (value) {
          fun;
        });
  }
}
