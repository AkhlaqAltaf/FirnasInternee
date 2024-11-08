import React from 'react';
import './CustomerExperience.css';
import Container from 'react-bootstrap/Container';
import Card from './Scard';

export default function CustomerExperience() {
  return (
    <Container fluid className="customer">
      <h1 className="main-head">Results that redefine expectations</h1>
      <p className="disc">Scale and improve your customer experience.</p>
      <div className="cards-group">
        <div className="card-and-disc">
        <Card
          className="card-wealthsimple"
          statNumber="10"
          sign="FTE"
          statText="workload managed by their AI Agent and continuing to grow"
          logoText="WEALTHSIMPLE"
          backgroundImage="https://www.ada.cx/_astro/client-wealthsimple-tile.q4IeYP2x_27adKy.webp"
        />
        <h4 className="card-disc">Deliver customer experiences that exceed expectations</h4>
        </div >
        <div className="card-and-disc">
        <Card
          className="card-neptune"
          statNumber="78"
          sign="%"
          statText="reduction in cost‑per‑ticket in the first year"
          logoText="NEPTUNE"
          backgroundImage=""
        />
        <h4 className="card-disc">Improve the operational efficiency of your organization</h4>
        </div>
        <div className="card-and-disc">
        <Card
          className="card-tango"
          statNumber="6.7"
          sign="x"
          statText="ROI in year 1"
          logoText="TANGO"
          backgroundImage=""
        />
        <h4 className="card-disc">Eliminate the risk of implementing AI solutions</h4>
        </div>
      </div>
    </Container>
  );
}

