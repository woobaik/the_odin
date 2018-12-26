//1. create a constructor function for the hangman game
//2. Setup two attributes. One for the word itself. Another for the number of guesses allowed.

const Hangman = function(word, numOfGuesses) {
  this.word = word
  this.numOfGuesses = numOfGuesses
}

const hang1 = new Hangman('Poker Face', 3)
console.log(hang1);

const hang2 = new Hangman('California', 5)
console.log(hang2);
