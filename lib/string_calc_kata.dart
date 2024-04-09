class StringCalculator {
  int add(String s) {
    // if (s.isEmpty) {
    //   return 0;
    // }

    if (s.isEmpty) {
      throw ArgumentError('Input not empty');
    }

    try {
      List<String> list = s.split(',');
      int sum = 0;

      for (var i = 0; i < list.length; i++) {
        var val = int.parse(list[i]);

        if (val < 0) {
          throw ArgumentError('Input cannot be empty');
        }

        sum = sum + val;
      }

      return sum;
    } catch (e) {
      throw Exception();
    }
  }

  void validateInput(String input) {
    if (input.isEmpty) {
      throw ArgumentError("Input cannot be empty.");
    }
    if (input.length < 3) {
      throw FormatException("Input must be at least 3 characters long.");
    }
  }
}
