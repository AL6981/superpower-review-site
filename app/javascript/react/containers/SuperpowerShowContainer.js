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
        description: json.superpower.description,
        reviews: json.reviews
      })
    })
  }

  addNewReview(formPayload) {
    let superpowerId = this.props.params.id
    fetch(`/api/v1/superpowers/${superpowerId}/reviews`, {
      credentials: 'same-origin',
      header: {
       'Content-Type': 'application/json',
       'X-Requested-With': 'XMLHttpRequest'
      },
      method: 'POST',
      body: JSON.stringify(formPayload)
    })
    .then(response => response.json())
    .then(body => {
      this.setState({reviews: body.reviews})
    })
  }

  render() {
    let superpowerId = this.props.params.id
    return(
      <div>
        <div>
          <SuperpowerDetailTile
            name={this.state.name}
            description={this.state.description}
          />
        </div>
        <div className="row">
          <div className="reviews large-10 columns">
            <ReviewsContainer
              reviews={this.state.reviews}
              superpowerId={superpowerId}
            />
            <ReviewFormContainer
              addNewReview={this.addNewReview}
            />
          </div>
        </div>
      </div>
    )
  }
}


export default SuperpowerShowContainer;
