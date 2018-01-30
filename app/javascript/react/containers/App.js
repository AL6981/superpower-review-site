import React from 'react'
import { Route, Router, browserHistory } from 'react-router';
import SuperpowerIndexContainer from './SuperpowerIndexContainer'


const App = props => {
  return (
    <Router history={browserHistory}>
      <Route path='/' component={SuperpowerIndexContainer}/>
      <Route path='/superpowers' component={SuperpowerIndexContainer}/>
    </Router>
  )
}

export default App;
