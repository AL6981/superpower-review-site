import React from 'react';

const ReviewTile = props => {
  return(
    <div className="row">
      <div className="small-10 medium-10 large-10 columns">
        <div className="review-tile panel">
          <div className="review-rating">
            Rating: {props.rating}
          </div>
          <br />
          <div className="review-body">
            Review: {props.body}
          </div>
        </div>
      </div>
    </div>
  )
}

export default ReviewTile;
