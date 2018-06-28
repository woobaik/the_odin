import React, { Component } from 'react';
// import logo from './logo.svg';
import './App.css';
import Movie from './Movie';



const movies = [
  {
    title: "Matrix",
    poster: "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX182_CR0,0,182,268_AL_.jpg"
  },
  {
    title: "Full Metal Jacket",
    poster: 'http://t3.gstatic.com/images?q=tbn:ANd9GcRvS0gpcmYItYpYqNswzvlibugwezaH-13M8y4kiJnCthNS9nX-'
  },
  {
    title: "StarWars",
    poster: 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/1200px-Star_Wars_Logo.svg.png'
  },
  {
    title: "Old Boy",
    poster: 'http://www.gstatic.com/tv/thumb/movieposters/35948/p35948_p_v8_aa.jpg'
  }

]

class App extends Component {
  render() {
    return (
      <div className="App">
        {movies.map(movie => {
          return <Movie title={movie.title} poster={movie.poster}/>
        })}
      </div>
    );
  }
}

export default App;
