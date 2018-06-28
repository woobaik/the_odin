import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import registerServiceWorker from './registerServiceWorker';

const Element = (() => {
  let name = {
    first: "Chris",
    last: "Baik"
  }
  return (
    <div>
      <h3 className="big red">Hello there {name.first} {name.last}</h3>
      <h5>Hello again</h5>
    </div>
  )
});

ReactDOM.render(<Element />,
  document.getElementById('root'));
