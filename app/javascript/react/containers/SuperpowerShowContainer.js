import React from 'react';
import SuperpowerDetailTile from '../components/SuperpowerDetailTile'
import ReviewsContainer from './ReviewsContainer'
import ReviewFormContainer from './ReviewFormContainer'

class SuperpowerShowContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      superpower: {
        name: 'Flying',
        description: 'It is awesome to fly'
      }
    }
  }

  componentDidMount() {
    fetch('')
  }

  render() {
    return(
      <div>Hello from superpower show page
        <div>
          <SuperpowerDetailTile
            name={this.state.superpower.name}
            description={this.state.superpower.description}
          />
        </div>
        <div> <ReviewsContainer /></div>
        <div> <ReviewFormContainer /></div>
      </div>
    )
  }
}


export default SuperpowerShowContainer;
