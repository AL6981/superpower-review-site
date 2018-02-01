import React from 'react';

const ReviewTile = props => {
  return(
    <div className="row">
      <div className="small-12 medium-12 large-12 columns">
        <div className="review-tile panel">
          <div className="review-rating">
            <div>
              <i className="fa fa-bolt fa-2x" aria-hidden="true"></i> Rating: {props.rating}
            </div>
          </div>
          <br />
          <div className="review-body">
            {props.body}
          </div>
        </div>
      </div>
    </div>
  )
}

export default ReviewTile;
