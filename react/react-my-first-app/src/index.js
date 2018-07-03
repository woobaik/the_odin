import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import Card from './Card';
// import registerServiceWorker from './registerServiceWorker';


const Welcome = ((props) => {
  return(
  <h4>Welcome to my site! {props.firstName}!</h4>
  )
});



ReactDOM.render(< Card />,
  document.getElementById('root'));
