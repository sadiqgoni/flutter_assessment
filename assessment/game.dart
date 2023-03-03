import 'dart:io';
import 'dart:math';

void main() {
  print('Let\'s play Rock, Paper, Scissors!');
  print('Type your move: Rock, Paper, or Scissors');

  String? userChoice = stdin.readLineSync()!;
  String? computerChoice = getComputerChoice();

  print('You chose $userChoice');
  print('The computer chose $computerChoice');

  String result = determineWinner(userChoice, computerChoice);
  print(result);
}

String getComputerChoice() {
  Random random = Random();
  List<String> choices = ['Rock', 'Paper', 'Scissors'];
  int index = random.nextInt(choices.length);
  return choices[index];
}

String determineWinner(String? userChoice, String? computerChoice) {
  if (userChoice == null || computerChoice == null) {
    return 'Invalid input. Try again.';
  }

  switch (userChoice) {
    case 'Rock':
      return computerChoice == 'Rock'
          ? 'It\'s a tie!'
          : computerChoice == 'Paper'
              ? 'Paper covers Rock. You lose!'
              : 'Rock smashes Scissors. You win!';
    case 'Paper':
      return computerChoice == 'Paper'
          ? 'It\'s a tie!'
          : computerChoice == 'Scissors'
              ? 'Scissors cut Paper. You lose!'
              : 'Paper covers Rock. You win!';
    case 'Scissors':
      return computerChoice == 'Scissors'
          ? 'It\'s a tie!'
          : computerChoice == 'Rock'
              ? 'Rock smashes Scissors. You lose!'
              : 'Scissors cut Paper. You win!';
    default:
      return 'Invalid input. Try again.';
  }
}
