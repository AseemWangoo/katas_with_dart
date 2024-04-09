class Kata {
  String action(int input) {
    if (input == 0) return input.toString();

    if (input % 3 == 0 && input % 5 == 0) return "FizzBuzz";
    if (input % 3 == 0) return "Fizz";
    if (input % 5 == 0) return "Buzz";

    return input.toString();
  }
}
