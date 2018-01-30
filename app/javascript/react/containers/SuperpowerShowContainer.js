import React from 'react';
import SuperpowerDetailTile from '../components/SuperpowerDetailTile'
import ReviewsContainer from './ReviewsContainer'
import ReviewFormContainer from './ReviewFormContainer'

class SuperpowerShowContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: '',
      description: '',
      reviews: []
    }
  }

  componentDidMount() {
    let superpowerId = this.props.params.id
    fetch(`/api/v1/superpowers/${superpowerId}`)
    .then(response => response.json())
    .then(json => {
      this.setState({
        name: json.superpower.name,
        description: json.superpower.description
      })
    })
  }

  render() {
    return(
      <div>Hello from superpower show page
        <div>
          <SuperpowerDetailTile
            name={this.state.name}
            description={this.state.description}
          />
        </div>
        <div> <ReviewsContainer /></div>
        <div> <ReviewFormContainer /></div>
      </div>
    )
  }
}


export default SuperpowerShowContainer;
