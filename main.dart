import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  dynamic total = 0;
  var operator = operatorInput();

  while(operator != '6') {
    int value = valueInput();

    switch(operator) {
      case '1': { total += value; }
        break;
      case '2': { total -= value; }
        break;
      case '3': { total *= value; }
        break;
      case '4': { total = division(total, value); }
        break;
      case '5': { total = pow(total, value); }
        break;
    }

    print('Total: $total');
    operator = operatorInput();
  }
  print('BYE!');
}

String operatorInput() {
  print('--- Dart Sample Calculator ---');
  print('Which operation would you like to perform: \n 1. Addition \n 2. Subtraction \n 3. Multiplication \n 4. Division \n 5. Exponentiation\n 6. Exit');
  return stdin.readLineSync();
}

dynamic valueInput() {
  print('Value?');
  var valueInput = stdin.readLineSync();
  return  int.tryParse(valueInput) ?? double.tryParse(valueInput);
}

dynamic division(dynamic total, dynamic value) {
  if(value == 0){
    print('Cannot divide by 0.');
    return total;
  }
  else {
    return total/value;
  }
}




