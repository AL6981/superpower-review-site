import React from 'react';

const SuperpowerDetailTile = (props) => {
  return(
    <div>
      <div className="superpower-name">
        {props.name}
      </div>

      <div className="superpower-description">
        {props.description}
      </div>

    </div>

  )
}

export default SuperpowerDetailTile;
