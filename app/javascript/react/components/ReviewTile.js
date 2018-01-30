import React from 'react';

const ReviewTile = props => {
  return(
    <div className="review-tile panel">
      Rating: {props.rating}
      <br />
      Review: {props.body}
    </div>
  )
}

export default ReviewTile;
