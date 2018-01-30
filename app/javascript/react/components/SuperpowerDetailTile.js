import React from 'react';

const SuperpowerDetailTile = (props) => {
  return(
    <div>
      <div>hello from superpower detail tile</div>
      <div>
        image tag
      </div>

      <div>
        average rating
      </div>

      <div>
        Name {props.name}
      </div>

      <div>
        Details {props.description}
      </div>

    </div>

  )
}

export default SuperpowerDetailTile;
