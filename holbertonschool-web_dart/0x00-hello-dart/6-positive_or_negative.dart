void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print("Please provide a number as a command-line argument.");
    return;
  }

  int? number = int.tryParse(arguments[0]);

  if (number == null) {
    print("Invalid input. Please provide a valid integer.");
    return;
  }

  print("The number $number is ${classifyNumber(number)}.");
}

String classifyNumber(int number) {
  if (number > 0) {
    return "positive";
  } else if (number == 0) {
    return "zero";
  } else {
    return "negative";
  }
}
