import 'dart:io';
import 'dart:math';
enum move{rock,paper,scissors}


void main(){

  print('Welcome to Rock,Paper,Scissors Game');
  int p1score=0,p2score=0;
  while(true){

    stdout.write('Choose Move:Rock,Paper,Scissors OR Quit ?');
    final input = stdin.readLineSync();


    var player1Move;
    if(input == 'Rock'){
      player1Move = move.rock.name;
    }
    else if(input == 'Paper'){
      player1Move = move.paper.name;
    }
    else if (input == 'Scissors'){
      player1Move = move.scissors.name;
      
    }
    else if (input == 'Quit') {
        print('Quit is successfully');
       break;
       }
    else{
      print('Wrong!Please try again');
      
    }


    final number=Random().nextInt(3);
    final player2Move = move.values[number].name;
    
    print('player1(you) played: $player1Move ');
    print('player2(pc) played: $player2Move ');

    if(player1Move == move.rock.name && player2Move == move.scissors.name ||
       player1Move == move.paper.name && player2Move == move.rock.name ||
       player1Move == move.scissors.name && player2Move == move.paper.name ) {
        print('You win ! Continue :)');
        p1score++;
        print('Player 1 Score:  $p1score');
        print('Player 2 Score:  $p2score');
       }

      
       else if(player1Move == player2Move){
        print('Draw!');
        print('Player 1 Score:  $p1score');
        print('Player 2 Score:  $p2score');
       }
      
       else{
        print('you Lost ! Sorry :( ');
        p2score++;
        print('Player 1 Score:  $p1score');
        print('Player 2 Score:  $p2score');
       }
        if(p1score==3){ 
          print('Game is over. Player 1 is Win');
        }
        else if(p2score==3){
          print('Game is over. Player 2 is Win');
        }
       
  }



}