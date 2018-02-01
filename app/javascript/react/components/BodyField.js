import React from 'react';

const BodyField = (props) => {
  return (
    <label >{props.label}
      <textarea
        type='text'
        value={props.content}
        onChange={props.handleFormBodyChange}
      />
    </label>
  );
}

export default BodyField;
