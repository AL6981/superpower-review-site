import React, { Component } from 'react';

class ReviewFormContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      rating: '',
      body: ''
    }
  }

  render() {
    return(
      <form>
      
      <div className="button-group">
        <button className="button">Clear</button>
        <input className="button" type="submit" value="Submit" onClick={this.handleFormSubmit}/>
      </div>
      </form>
    )
  }
}

export default ReviewFormContainer;
