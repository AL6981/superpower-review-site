import React, { Component } from 'react';
import VoteTile from '../components/VoteTile';

class VotesContainer extends Component {
  constructor(props) {
    super(props);

    this.state = {
      upvotes: 0,
      downvotes: 0
    };

    this.handleUpClick = this.handleUpClick.bind(this)
    this.handleDownClick = this.handleDownClick.bind(this)
  }

  handleUpClick() {}

  handleDownClick() {}

  render() {
    return(
      <VoteTile
        up={this.state.upvotes}
        down={this.state.downvotes}
        handleUpClick={this.handleUpClick}
        handleDownClick={this.handleDownClick}
      />
    )
  }
}

export default VotesContainer;
