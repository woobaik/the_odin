import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import registerServiceWorker from './registerServiceWorker';


const Welcome = ((props) => {
  return(
  <h4>Welcome to my site! {props.firstName}!</h4>
  )
});



const Element = (() => {
  const nameArray = ["Haram", "JoungAnn", "Chicken", "Ryu", "Yang", "Lee"]
  return (
    <div>
      <Welcome firstName="Christ" />
      <ul>
        {nameArray.map(name=>
          <li>{name}</li>
        )};

      </ul>
    </div>
  )
});


ReactDOM.render(
  <Element />,
  document.getElementById('root'));
