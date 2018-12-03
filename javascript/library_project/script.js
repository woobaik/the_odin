
const shelf = document.querySelector('.shelf')
const addBtn = document.querySelector('.addBtn')
const authorBtn = document.querySelector('input[name="author"]')
const titleBtn = document.querySelector('input[name="title"]')
const pageBtn = document.querySelector('input[name="pages"]')
const removeBtn = document.querySelectorAll('.removeBtn')

let myLibrary = [];

function Book(author, title, pages, read) {
  this.author = author
  this.title = title
  this.pages = pages
  this.read = false
}

function addBookToLibrary(book) {
  myLibrary.push(book);
}

function render() {
  for( let i = 0; i < myLibrary.length; i++ ) {
    const newBook = document.createElement('p');
    const removeBtn = dodcument.createElement('button')
    newBook.innerHTML = `<li>${myLibrary[i].title}</li>`
    removeBtn.textContent = 'Remove'
    removeBtn.classList.add('removeBtn')
    removeBtn.setAttribute('id', `book-${i}`)
    shelf.appendChild(newBook);
    newBook.appendChild(removeBtn);
  }
}


addBtn.addEventListener('click', (e) => {
  const authorVal = authorBtn.value;
  const titleVal = titleBtn.value;
  const pageVal = pageBtn.value;

  const book = new Book(authorVal, titleVal, pageVal);
  myLibrary.push(book);
  console.log(myLibrary);
  render()
  e.preventDefault();
})
