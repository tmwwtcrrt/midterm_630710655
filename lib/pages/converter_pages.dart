import 'package:flutter/material.dart';
import 'package:midterm_630710655/conv_console.dart';
import 'package:midterm_630710655/converter.dart';

class TempPage extends StatefulWidget{
  const TempPage({Key? key}) : super(key: key);

  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {

  final _controller = TextEditingController();
  final _temp = TempPage();

  var _feedbackText = '';
  var _showTestButton = false;

  void handleClickConvert() {
    setState(() {
      _showTestButton = !_showTestButton;
    });
    print('Button clicked!');
    print(_controller.text);
    var input = int.tryParse(_controller.text);
    var output;
    if (input == null) {
      //แจ้งerror
      print('Input error!');
      setState(() {
          _feedbackText = 'Input error, please try again';
      });
    } else {
      var result = _temp;
      if (result == Result.CtoF) {
        output = ((9 / 5) * input) + 32;
        print('${input} Celsius = ${output} Fahrenheit');
         _feedbackText = '${input} Celsius = ${output} Fahrenheit';
      }

      else if (result == Result.CtoK) {
        output = input + 273.15;
        print('${input} Celsius = ${output} Kelvin');
        _feedbackText = '${input} Celsius = ${output} Kelvin';
      }

      else if (result == Result.FtoC) {
        output = (5 / 9) * (input - 32);
        print('${input} Fahrenheit = ${output} Celsius');
        _feedbackText = '${input} Fahrenheit = ${output} Celsius';
      }

      else if (result == Result.FtoK) {
        output = (input + 459.67) * (5/9);
        print('${input} Fahrenheit = ${output} Kelvin');
        _feedbackText = '${input} Fahrenheit = ${output} Kelvin';
      }

      else if (result == Result.KtoC) {
        output = input - 273.15;
        print('${input} Kelvin = ${output} Celsius');
        _feedbackText = '${input} Kelvin = ${output} Celsius';
      }

      else if (result == Result.KtoF) {
        output = 1.8*(input - 273.15)+32;
        print('${input} Kelvin = ${output} Fahrenheit');
        _feedbackText = '${input} Kelvin = ${output} Fahrenheit';
      }
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Midterm Exam'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Temperature Converter'),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a temperature to convert',
              ),
            ),
            // Callback function
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: _showTestButton ? Colors.orange : Colors.purple,
              ),
              onPressed: handleClickConvert,
              child: const Text('Celsius to Fahrenheit'),
            ),
            Text(_feedbackText),

            ElevatedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: _showTestButton ? Colors.orange : Colors.purple,
              ),
              onPressed: handleClickConvert,
              child: const Text('Celsius to Kelvin'),
            ),
          ],
        ),
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}