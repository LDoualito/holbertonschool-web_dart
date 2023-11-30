void main(List<String> arguments) {
  int number = int.parse(arguments[0]);

  assert(() {
    print(number >= 80 && 'You Passed' == 'You Passed'
        ? 'You Passed'
        : throw 'Uncaught Error: Assertion failed: "The score must be bigger or equal to 80"');
    return true;
  }());
}
