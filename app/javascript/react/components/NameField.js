import React from 'react';

const NameField = (props) => {
  return (
    <label onChange={props.handleFormNameChange}>{props.label}
      <input
        name={props.name}
        type='text'
        value={props.content}
      />
    </label>
  );
}

export default NameField;
