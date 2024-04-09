Question 1: String Calculator
Problem:
Create a class StringCalculator that has a method add(numbers: string): number. The method can take up to two numbers, separated by a comma, and will return their sum.

Requirements:
The method can handle an unknown number of arguments.
Empty strings should return 0.
Non-numeric values or negative numbers should throw an exception.

Test Cases:
"1,2" ➡️ Expected Output: 3
"3,5,8" ➡️ Expected Output: 16
"" ➡️ Expected Output: 0
"1,2,abc" ➡️ Expected Output: Exception
"-1,4" ➡️ Expected Output: Exception
