import React from 'react';
import { Link } from 'react-router';

const SuperpowerTile = props => {
  return(
    <div className="tile-container">
      <div className="superpower-tile">
        <p className="p-tag"> <Link to={`/superpowers/${props.id}`}>{props.name}</Link></p>
      </div>
    </div>
  )
}

export default SuperpowerTile;
