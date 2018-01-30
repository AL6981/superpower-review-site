import React from 'react';
import VotesContainer from '../containers/VotesContainer'

const ReviewTile = props => {
  return(
    <div className="review-tile panel">
      Rating: {props.rating}
      <br />
      Review: {props.body}

      <div className="votes-container">
        <VotesContainer />
      </div>
    </div>
  )
}

export default ReviewTile;
