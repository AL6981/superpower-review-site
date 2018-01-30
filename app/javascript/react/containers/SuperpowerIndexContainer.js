import React, { Component } from 'react';
import SuperpowerTile from '../components/SuperpowerTile'

class SuperpowerIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      superpowers: []
    }
  }

  render() {
    return(
      <div>
        <h4>Index Container</h4>
        <SuperpowerTile
          key={superpower.id}
          name={}
        />
      </div>
    )


  }
}

export default SuperpowerIndexContainer;
