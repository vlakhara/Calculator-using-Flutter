import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcBtn extends StatelessWidget {
  final String text;
  final int color;
  final int textColor;
  final double textSize;
  final Function callBack;
  const CalcBtn(
      {this.text, this.color, this.textColor, this.textSize, this.callBack});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: SizedBox(
        width: 70,
        height: 70,
        // ignore: deprecated_member_use
        child: FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            child: Text(text,
                style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                  fontSize: textSize,
                ))),
            onPressed: () => callBack(text),
            color: Color(color)),
      ),
    );
  }
}
