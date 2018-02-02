import React, { Component } from 'react';
import RatingField from '../components/RatingField'
import BodyField from '../components/BodyField'

class ReviewFormContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      reviewRating: null,
      reviewBody: ''
    }
    this.handleFormRatingChange=this.handleFormRatingChange.bind(this)
    this.handleFormBodyChange=this.handleFormBodyChange.bind(this)
    this.handleFormSubmit=this.handleFormSubmit.bind(this)
    this.handleClearForm=this.handleClearForm.bind(this)
  }

  handleFormRatingChange(event){
    let value = event.target.value
    let numValue = parseInt(value)
    this.setState({reviewRating: numValue})
  }

  handleFormBodyChange(event){
    this.setState({reviewBody: event.target.value})
  }

  handleFormSubmit(event){
    event.preventDefault()
    let formPayload = {
      rating: this.state.reviewRating,
      body: this.state.reviewBody
    }
    this.props.addNewReview(formPayload)
    this.handleClearForm(event)
  }

  handleClearForm(event){
    event.preventDefault()
    this.setState({
      reviewRating: null,
      reviewBody: ''
    })
  }

  render() {
    return(
      <div className="row">
        <div className="small-12 medium-12 large-12 columns">
          <form className="new-review-form panel">
            <fieldset>
              <div className="legend">Add Review</div>
              <RatingField
                label=" 1 Star"
                value={1}
                checkedValue={this.state.reviewRating}
                onChange={this.handleFormRatingChange}
              />
              <RatingField
                label=" 2 Stars"
                value={2}
                checkedValue={this.state.reviewRating}
                onChange={this.handleFormRatingChange}
              />
              <RatingField
                label=" 3 Stars"
                value={3}
                checkedValue={this.state.reviewRating}
                onChange={this.handleFormRatingChange}
              />
              <BodyField
                content={this.state.reviewBody}
                label="Write a Review"
                handleFormBodyChange={this.handleFormBodyChange}
              />

              <div className="review-form-button">
                <div className="button-group round even-2">
                  <button className="clear-button" id="clear-button">Clear</button>
                  <input className="button" id="review-submit" type="submit" value="Submit" onClick={this.handleFormSubmit}/>
                </div>
              </div>
            </fieldset>
          </form>
        </div>
      </div>
    )
  }
}

export default ReviewFormContainer;
