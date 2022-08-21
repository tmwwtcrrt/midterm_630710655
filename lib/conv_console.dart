import 'dart:io';
import 'converter.dart';

void doCon() {
  var temp;
  do {
    stdout.write('Enter a temperature value to convert: ');
    var input = stdin.readLineSync();
    temp = int.tryParse(input!);
    if (temp == null) {
      print("Input error!");
      continue;
    }
  } while (temp == null);

  var notnull = false;
}
  /*do {
    var input;
    var output = int.tryParse(input!);
    if (output == null) {
      continue;
    }
    var result = temp.doCon(temp);

    }
  } while (notnull);*/
