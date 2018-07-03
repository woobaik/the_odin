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

  fliterNews(keywords) {
    console.log(keywords)
  }


  render() {
    return (
      <div>
        <Header newsSearch={keywords => this.filterNews(keywords)}/>
        <NewsList news={this.state.news} />
      </div>
    );
  }
}


ReactDOM.render(<App />, document.getElementById('root'));
