import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:io';
enum Result{
  CtoF,
  CtoK,
  FtoC,
  FtoK,
  KtoC,
  KtoF,
}
class Temp{
  var input;
  var output;
  late bool contemp;
  /*tempConverter(String intput, String degree){
    output = (int.parse(intput) + 273.15);
    print("${input} Celsius = ${output} Kelvin");
    return output;
  }*/
  TempState(input,output){
  }

  @override
  Widget build(BuildContext context) {
    TextField inputField = TextField(
      keyboardType: TextInputType.number,
      onChanged: (str) {
        try {
          input = double.parse(str);
        } catch (e) {
          input = 0.0;
        }
      },
      decoration: InputDecoration(
        labelText:
        "Enter a temperature value to convert",
      ),
      textAlign: TextAlign.center,
    );

    AppBar appBar = AppBar(
      title: Text("Midterm Exam"),
    );

    Container calcBtn = Container(
      child: RaisedButton(
        child: Text("Celsius to Fahrenheit"),
        onPressed: () {
          setState(() {
            contemp == false
                ? output = ((9/5) * input) +32
                : output = ((9/5) * input) +32;
          });
          AlertDialog dialog = AlertDialog(
            content: contemp == false
                ? Text(
                "${input.toStringAsFixed(2)} Celsius = ${output.toStringAsFixed(2) } Fahrenheit")
                : Text(
                "${input.toStringAsFixed(2)} C : ${output.toStringAsFixed(2)} F"),
          );

        },
      ),
    );

    return Scaffold(
      appBar: appBar,
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            inputField,
            calcBtn,
          ],
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
