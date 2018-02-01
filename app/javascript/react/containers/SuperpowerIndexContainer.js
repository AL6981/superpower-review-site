import React, { Component } from 'react';
import SuperpowerTile from '../components/SuperpowerTile'

class SuperpowerIndexContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      superpowers: []
    }
  }

  componentDidMount() {
    fetch('/api/v1/superpowers')
    .then(response => response.json())
    .then(body => {
      this.setState({superpowers: body.superpowers})
    })
  }

  render() {
    let superpowers = this.state.superpowers.map(superpower => {
      return(
        <SuperpowerTile
          key={superpower.id}
          id={superpower.id}
          name={superpower.name}
        />
      )
    })

    return(
      <div className= "header"
           className= "grid-1"
           className= "item-1" >
        {superpowers}
      </div>
    )
  }
}

export default SuperpowerIndexContainer;
