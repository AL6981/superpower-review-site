import React from 'react';

const BodyField = (props) => {
  return (
    <label >
      <textarea
        placeholder='... add review'
        type='text'
        value={props.content}
        onChange={props.handleFormBodyChange}
      />
    </label>
  );
}

export default BodyField;
