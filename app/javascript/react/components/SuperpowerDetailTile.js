import React from 'react';

const SuperpowerDetailTile = (props) => {
  return(
    <div>
      <div>hello from superpower detail tile</div>
      <div className="superpower-pic">
        <img src="#" alt="Picture of the selected superpower" />image tag
      </div>

      <div className="avg-rating">
        average rating
      </div>

      <div className="superpower-name">
        Name {props.name}
      </div>

      <div className="superpower-description">
        Details {props.description}
      </div>

    </div>

  )
}

export default SuperpowerDetailTile;
