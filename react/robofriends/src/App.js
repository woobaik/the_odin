import React, { Component } from 'react';
// import logo from './logo.svg';
import './App.css';
import Movie from './Movie';

const moviesTitle = [
  "matrix",
  "full Metal Jacket",
  "Star warz",
  "Oldboy"
]


const moviesImage =
  ['https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg',
  'http://t3.gstatic.com/images?q=tbn:ANd9GcRvS0gpcmYItYpYqNswzvlibugwezaH-13M8y4kiJnCthNS9nX-',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/1200px-Star_Wars_Logo.svg.png',
  'http://www.gstatic.com/tv/thumb/movieposters/35948/p35948_p_v8_aa.jpg'
]

class App extends Component {
  render() {
    return (
      <div className="App">
        <Movie title={moviesTitle[0]} poster={moviesImage[0]}/>
        <Movie title={moviesTitle[1]} poster={moviesImage[1]}/>
        <Movie title={moviesTitle[2]} poster={moviesImage[2]}/>
        <Movie title={moviesTitle[3]} poster={moviesImage[3]}/>

      </div>
    );
  }
}

export default App;
