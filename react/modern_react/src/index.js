import React, { Component }from 'react';
import ReactDOM from 'react-dom';

//COMPONENTS
import Header from './components/header';
import JSON from './db.json';
import NewsList from './components/news_list';


class App extends Component {
  constructor(prop) {
    super(prop);

    this.state = { news : JSON }


  }


  render() {
    return (
      <div>
        <Header />
        <NewsList news={this.state.news} />
      </div>
    );
  }
}


ReactDOM.render(<App />, document.getElementById('root'));
