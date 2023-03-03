import 'dart:io';

void main() {
  stdout.write('Enter student\'s score percentage: ');
  final score = double.parse(stdin.readLineSync()!);

  stdout.write('Enter class average score: ');
  final average = double.parse(stdin.readLineSync()!);

  final passingScore = average >= 60 ? average - 5 : 60;

  if (score >= passingScore) {
    print('Student passed the semester!');
  } else {
    print('Student failed the semester.');
  }
}
