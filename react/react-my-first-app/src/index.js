import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import Card from './Card';
import { robots } from './robots.js';
// import registerServiceWorker from './registerServiceWorker';




ReactDOM.render(< Card id={robots[0].id} name={robots[0].name} email={robots[0].email} />,
  document.getElementById('root'));
