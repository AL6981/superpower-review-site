import React from 'react';

const VoteTile = props => {
  return(
    <div>
      Upvotes: {props.up}
      Downvotes: {props.down}
      <button className="button" onClick={props.handleUpClick}>
        Vote up
      </button>
      <button className="button" onClick={props.handleDownClick}>
        Vote down
      </button>
    </div>
  )
}

export default VoteTile;
