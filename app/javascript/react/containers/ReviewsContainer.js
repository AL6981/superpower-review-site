import React from 'react';
import ReviewTile from '../components/ReviewTile';


const ReviewsContainer = props => {
  let reviews = props.reviews.map(review => {
    return(
      <ReviewTile
        key={review.id}
        id={review.id}
        rating={review.rating}
        body={review.body}
        superpowerId={props.superpowerId}
      />
    )
  });

  return (
    <div>
      {reviews}
    </div>
  )
}

export default ReviewsContainer;
