import "dart:io";
import "dart:math";
void main(List<String> arguments) {
//   print("my first dart print");
  int score = 0;
  
  while(true){
    stdout.write("Please enter your guess from 1 to 5 : ");
    final userInput = stdin.readLineSync();
    
    int randomNo = Random().nextInt(5) + 1;
    
    if(userInput == null || userInput.isEmpty){
      print("Please enter some input from 1 to 5");
      continue;
    }else if (userInput.toLowerCase() == "exit") {
      print("thanks for playing your score is $score");
      break;
    }else if(userInput == randomNo.toString()){
      score++;
      print("you win your score is $score");
    }else{
      print("try again your input was $userInput,and system number was $randomNo");
    }
  }
}