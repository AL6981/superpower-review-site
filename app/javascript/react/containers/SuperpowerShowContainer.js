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
    this.addNewReview = this.addNewReview.bind(this)
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

  addNewReview(formPayload) {
    let superpowerId = this.props.params.id

    fetch(`/api/v1/superpowers/${superpowerId}/reviews`, {
      method: 'POST',
      body: JSON.stringify(formPayload)
    })
    .then(resp => {debugger})
    .then(response => response.json())
    .then(body => {
      this.setState({reviews: body})
    })
  }

  render() {
    return(
      <div>Hello from superpower show page
        <SuperpowerDetailTile
          name={this.state.name}
          description={this.state.description}
        />
      <ReviewsContainer />
      <ReviewFormContainer
        addNewReview={this.addNewReview}
      />
      </div>
    )
  }
}


export default SuperpowerShowContainer;
