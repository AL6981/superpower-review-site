import React from 'react';

const RatingField = (props) => {
  return (
    <label >
      <input
        type="radio"
        value={props.value}
        checked={props.checkedValue == props.value}
        onChange={props.onChange}
      />
      {props.label}
    </label>
  );
}

export default RatingField;
