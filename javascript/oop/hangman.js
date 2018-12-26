//1. create a constructor function for the hangman game
//2. Setup two attributes. One for the word itself. Another for the number of guesses allowed.

const Hangman = function(word, numOfGuesses) {
  this.word = word.toLowerCase().split('')
  this.numOfGuesses = numOfGuesses
  this.guessLetters = ['c']
}


Hangman.prototype.getPuzzle = function() {
  let puzzle = ''
  this.word.forEach((letter) => {
    if (this.guessLetters.includes(letter) || letter === ' ') {
      puzzle += letter
    } else {
      puzzle += '*'
    }
  })
  return puzzle
}


const hang1 = new Hangman('Pocker Face  ', 3)
console.log(hang1.getPuzzle());

const hang2 = new Hangman('California', 5)


/// Set up the word instance property as an array of lower case letter
