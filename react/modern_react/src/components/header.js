import React, { Component } from 'react';


class Header extends Component {
  constructor(props){
    super(props)

    this.state = {
      title: 'You typed',
      keywords: ''
    }
  }

  inputChange(event) {
    this.setState({keywords: event.target.value})
  }

  render() {
    return (
      <header>
        <div className="logo">Logo</div>
        <input onChange={this.inputChange.bind(this)} placeholder="He Lives in You"/>
        <div>{this.state.title}::: {this.state.keywords}</div>
      </header>
    );
  }
};

export default Header;
