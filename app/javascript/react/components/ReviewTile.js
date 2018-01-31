import React from 'react';

const ReviewTile = props => {
  return(
    <div className="review-tile panel">
      <div className="review-rating">
        Rating: {props.rating}
      </div>
      <br />
      <div className="rating-body">
        Review: {props.body}
      </div>
    </div>
  )
}

export default ReviewTile;
