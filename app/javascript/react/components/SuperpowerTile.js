import React from 'react';
import { Link } from 'react-router';

const SuperpowerTile = props => {
  return(
    <div className="superpower-tile">
      <p><Link to={`/superpowers/${props.id}`}>{props.name}</Link></p>
    </div>
  )
}

export default SuperpowerTile;
