import React, { Component } from 'react';
import NameField from '../components/NameField'
import BodyField from '../components/BodyField'

class ReviewFormContainer extends Component {
  constructor(props) {
    super(props)
    this.state = {
      superpowerName: '',
      superpowerBody: ''
    }
    this.handleFormNameChange=this.handleFormNameChange.bind(this)
    this.handleFormBodyChange=this.handleFormBodyChange.bind(this)
    this.handleFormSubmit=this.handleFormSubmit.bind(this)
    this.handleClearForm=this.handleClearForm.bind(this)
  }

  handleFormNameChange(event){
    this.setState({superpowerName: event.target.value})
  }

  handleFormBodyChange(event){
    this.setState({superpowerBody: event.target.value})
  }

  handleFormSubmit(event){
    event.preventDefault()
    let formPayload = {
      name: this.state.superpowerName,
      body: this.state.superpowerBody
    }
    this.props.addNewSuperpower(formPayload)
    this.handleClearForm(event)
  }

  handleClearForm(event){
    event.preventDefault()
    this.setState({
      superpowerName: '',
      superpowerBody: ''
    })
  }

  render() {
    return(
      <form className="new-superpower-form callout">
        <NameField
          content={this.state.superpowerName}
          label="Superpower Name"
          name="superpower-name"
          handleFormNameChange={this.handleFormNameChange}
        />
        <BodyField
          content={this.state.superpowerBody}
          label="Superpower Body"
          name="superpower-body"
          handleFormBodyChange={this.handleFormBodyChange}
        />

        <div className="button-group">
          <button className="button">Clear</button>
          <input className="button" type="submit" value="Submit" onClick={this.handleFormSubmit}/>
        </div>
      </form>
    )
  }
}

export default ReviewFormContainer;
