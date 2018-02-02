import React from 'react';
import { Link } from 'react-router';

const SuperpowerTile = props => {
  return(
    <div className="tile-container">
      <Link to={`/superpowers/${props.id}`} className="superpower-name">{props.name}</Link>
    </div>
  )
}

export default SuperpowerTile;
