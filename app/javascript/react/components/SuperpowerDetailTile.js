import React from 'react';

const SuperpowerDetailTile = (props) => {
  return(
    <div className="show-container">
      <div className="detail-container">
        <div className="superpower-pic">
          <img src='/assets/callingheroes.jpg'/>
        </div>
        <div className="sp-name">
          {props.name}
        </div>
        <div className="sp-desc">
          {props.description}
        </div>
        </div>
    </div>
  )
}

export default SuperpowerDetailTile;
