import React from 'react';
import { Card } from 'react-bootstrap';
import './CustomerExperience.css';

const Scard = ({ className, statNumber, sign, statText, logoText, backgroundImage }) => {
  return (
    <button
      className={`arrow-button ${className}`}
      style={{
        backgroundImage: `url(${backgroundImage})`,
        backgroundSize: 'cover',
        backgroundPosition: 'center',
        backgroundRepeat: 'no-repeat',
      }}
    >
      <div className="text-wrapper">
        <div className="stat-head-wrapper"> {/* New wrapper for statNumber and sign */}
          <Card.Title className="stat-number">{statNumber}</Card.Title>
          <Card.Text className="sign">{sign}</Card.Text>
        </div>
        <Card.Text className="stat-text">{statText}</Card.Text>
      </div>
      <div className="logo-arrow-wrapper">
        <div className="logo-text">{logoText}</div>
        <div className="arrow-wrapper">
          <div className="arrow"></div>
        </div>
      </div>
    </button>
  );
};

export default Scard;
 