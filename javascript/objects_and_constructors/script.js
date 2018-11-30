/*

// best way to use the object literal
const myObject = {
  property: 'Value!',
  otherProperty: 77,
  'obnoxious property': function () {
    //do stuff
  }

}

// two ways to get information out of an object. dot notaion, braket notaion.

console.log(myObject.property);  // more preferred way!
console.log(myObject['obnoxious property']); // use only it has space!

//OBJECT AS A DESIGN PATTERN
// It is better organize your code by grouping things into objects

// Object Constructors

function Player(name, marker) {
  this.name = name
  this.marker = marker
  this.sayName = function() {
    console.log(this.name)
  }
}

const player1 = new Player('haram', 'X')
console.log(player1.name);
player1.sayName()


*/

//===== Excercise =====

// function Book(title, author, pages, read) {
//   this.title = title
//   this.author = author
//   this.pages = pages
//   this.read = read
//   this.info = function() {
//     console.log(`${this.title} by ${author}, ${this.pages}, ${this.read ? 'read' : 'not read yet'}`)
//   }
// }
//
// const hobit = new Book('hobit', 'J.RR. Tolkien', 295, false);
// console.log(hobit.info());



//==== Excercise =====
