import React from 'react';

const RatingField = (props) => {
  return (
    <label className="rating-field">
      <input
        type="checkbox"
        value={props.value}
        checked={props.checkedValue == props.value}
        onChange={props.onChange}
      />
      {props.label}
    </label>
  );
}

export default RatingField;
