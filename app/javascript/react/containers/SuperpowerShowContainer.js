import React from 'react';
import SuperpowerDetailTile from '../components/SuperpowerDetailTile'
import ReviewsContainer from './ReviewsContainer'


class SuperpowerShowContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {}
  }

  render() {
    return(
      <div>Hello from superpower show page
        <div> <SuperpowerDetailTile /></div>
        <div> <ReviewsContainer /></div>
      </div>
    )
  }
}


export default SuperpowerShowContainer;
