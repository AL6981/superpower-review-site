import React from 'react';

const SuperpowerDetailTile = (props) => {
  return(
    <div>

      <div className="superpower-tile small-10 medium-10 large-10 columns">
        <div className="row">
          <div className="large-6 columns">
            <div className="superpower-pic">
              <img src="https://img.buzzfeed.com/buzzfeed-static/static/2014-04/enhanced/webdr07/21/17/enhanced-14635-1398116843-21.jpg?downsize=715:*&output-format=auto&output-quality=auto" alt="Picture of the selected superpower" />
            </div>
          </div>
          <div className="large-6 columns">
            <div className="superpower-details">
              <div className="superpower-name">
                {props.name}
              </div>
              <div className="superpower-description">
                {props.description}
              </div>
            </div>
          </div>

        </div>


      </div>
    </div>

  )
}

export default SuperpowerDetailTile;
