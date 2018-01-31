import React from 'react';
import SuperpowerDetailTile from '../components/SuperpowerDetailTile'
import ReviewsContainer from './ReviewsContainer'


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
        description: json.superpower.description,
        reviews: json.reviews
      })
    })
  }

  render() {
    return(
      <div>Hello from superpower show page
        <SuperpowerDetailTile
          name={this.state.name}
          description={this.state.description}
        />
        <ReviewsContainer
          reviews={this.state.reviews}
        />
      </div>
    )
  }
}


export default SuperpowerShowContainer;
