import React from 'react';
import { Link } from 'react-router';

const SuperpowerTile = props => {
  return(
    <div>
      <Link to={`/superpowers/${props.id}`}>{props.name}</Link>
    </div>
  )
}

export default SuperpowerTile;
