import React from 'react';

const BodyField = (props) => {
  return (
    <label onChange={props.handleFormBodyChange}>{props.label}
      <textarea
        name={props.name}
        type='text'
        value={props.content}
      />
    </label>
  );
}

export default BodyField;
