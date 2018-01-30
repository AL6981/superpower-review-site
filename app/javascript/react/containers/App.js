import React from 'react'
import { Route, Router, browserHistory } from 'react-router';
import SuperpowerIndexContainer from './SuperpowerIndexContainer'
import SuperpowerShowContainer from './SuperpowerShowContainer'


const App = props => {
  return (
    <Router history={browserHistory}>
      <Route path='/' component={SuperpowerIndexContainer}/>
      <Route path='/superpowers' component={SuperpowerIndexContainer}/>
      <Route path='/superpower/:id' component={SuperpowerShowContainer}/>
    </Router>
  )
}

export default App;
