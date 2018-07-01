import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
// import App from './App';
// import registerServiceWorker from './registerServiceWorker';


const Welcome = ((props) => {
  return(
  <h4>Welcome to my site! {props.firstName}!</h4>
  )
});



const Element = (() => {
  const nameArray = ["Haram", "JoungAnn", "Chicken", "Ryu", "Yang", "Lee"];
  const nameMapper = (() =>
    nameArray.map(name=>
      <li>{name}</li>
    )
  );
  return (
    <div>
      <Welcome firstName="Christ" />
      <ul>
        {nameMapper()}

      </ul>
    </div>
  )
});


ReactDOM.render(
  <App />,
  document.getElementById('root'));
