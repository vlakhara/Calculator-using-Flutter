import 'package:calculator/widgets/calc_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ignore: non_constant_identifier_names
  int Fnum;
  // ignore: non_constant_identifier_names
  int Snum;
  String history = '';
  String textToDisplay = '';
  String res;
  String operation;

  void btnOnClick(String btnVal) {
    if (btnVal == 'C') {
      textToDisplay = '';
      Fnum = 0;
      Snum = 0;
      res = '';
    } else if (btnVal == 'AC') {
      textToDisplay = '';
      Fnum = 0;
      Snum = 0;
      res = '';
      history = '';
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'x' ||
        btnVal == '/') {
      textToDisplay = '';
      Fnum = int.parse(textToDisplay);
      res = '';
      operation = btnVal;
    } else if (btnVal == '=') {
      Snum = int.parse(textToDisplay);
      if (operation == '+') {
        res = (Fnum + Snum).toString();
        history = Fnum.toString() + operation.toString() + Snum.toString();
      }
      if (operation == '-') {
        res = (Fnum - Snum).toString();
        history = Fnum.toString() + operation.toString() + Snum.toString();
      }
      if (operation == 'x') {
        res = (Fnum * Snum).toString();
        history = Fnum.toString() + operation.toString() + Snum.toString();
      }
      if (operation == '/') {
        res = (Fnum / Snum).toString();
        history = Fnum.toString() + operation.toString() + Snum.toString();
      }
    } else {
      res = int.parse(textToDisplay + btnVal).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
          centerTitle: true,
        ),
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                child: Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    history,
                    style: GoogleFonts.rubik(
                        textStyle:
                            TextStyle(fontSize: 24, color: Color(0x66FFFFFF))),
                  ),
                ),
                alignment: Alignment(1, 1),
              ),
              Container(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    textToDisplay,
                    style: GoogleFonts.rubik(
                        textStyle:
                            TextStyle(fontSize: 48, color: Colors.white)),
                  ),
                ),
                alignment: Alignment(1, 1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcBtn(
                    text: 'AC',
                    color: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: 'C',
                    color: 0xFF8ac4d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '<',
                    color: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '/',
                    color: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 25,
                    callBack: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcBtn(
                    text: '7',
                    color: 0xFF1ac8d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '8',
                    color: 0xFF1ac8d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '9',
                    color: 0xFF1ac8d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: 'x',
                    color: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 30,
                    callBack: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcBtn(
                    text: '4',
                    color: 0xFF1ac8d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '5',
                    color: 0xFF1ac8d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '6',
                    color: 0xFF1ac8d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '-',
                    color: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 30,
                    callBack: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcBtn(
                    text: '1',
                    color: 0xFF1ac8d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '2',
                    color: 0xFF1ac8d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '3',
                    color: 0xFF1ac8d0,
                    textColor: 0xFF000000,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '+',
                    color: 0xFFf4d160,
                    textColor: 0xFF000000,
                    textSize: 30,
                    callBack: btnOnClick,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CalcBtn(
                    text: '+/-',
                    color: 0xFFf4d160,
                    textColor: 0xFFf4d160,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '0',
                    color: 0xFFf4d160,
                    textColor: 0xFFf4d160,
                    textSize: 20,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '.',
                    color: 0xFFf4d160,
                    textColor: 0xFFf4d160,
                    textSize: 30,
                    callBack: btnOnClick,
                  ),
                  CalcBtn(
                    text: '=',
                    color: 0xFFa6d190,
                    textColor: 0xFF000000,
                    textSize: 30,
                    callBack: btnOnClick,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
