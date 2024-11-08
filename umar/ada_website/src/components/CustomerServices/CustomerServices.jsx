import React from 'react';
import './CustomerServices.css';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';

export default function CustomerServices() {
  return (
    <Container fluid className="Services">
      <div className="text-center mb-5">
        <h1 className="main-head">Automate across channels, effortlessly</h1>
        <p className="disc">Reach your customers in 50+ languages, on the channels they prefer.</p>
      </div>
      
      <Row className="card-row">
        <Col className="mb-4 card-ada-messaging">
        <Card
              image="https://www.ada.cx/_astro/home-channel-messaging.aJmu-1wE_Z1DPh45.webp"
              title="Ada Messaging"
              msgImg="https://www.ada.cx/_astro/home-channel-messaging-overlay.B251NRMH_Z1bm4gN.webp"
              btnClass="learn-more-btn-messaging"
              msgImgClass="msg-img1"
              msgImgSizeClass="msgImgSize1"
              cardBgGradeint="card1"
            />
        </Col>
        <Col className="mb-4 card-ada-voice">
          <Card
            image="https://www.ada.cx/_astro/home-channel-voice.CPA6z5YD_Z2d7m7x.webp"
            title="Ada Voice"
            msgImg="https://www.ada.cx/_astro/home-channel-voice-overlay.CJvIulci_2roMyt.webp"
            btnClass="learn-more-btn-voice"
            msgImgClass="msg-img2"
            msgImgSizeClass="msgImgSize2"
            cardBgGradeint="card2"
          />
        </Col>
        <Col className="mb-4 card-ada-email">
          <Card
            image="https://www.ada.cx/_astro/home-channel-email.9g-B7w4y_2gYsBr.webp"
            title="Ada Email"
            msgImg="https://www.ada.cx/_astro/home-channel-email-overlay.BRkRgZlm_Z1cI6HR.webp"
            btnClass="learn-more-btn-email"
            msgImgClass="msg-img3"
            msgImgSizeClass="msgImgSize3"
            cardBgGradeint="card3"
          />
        </Col>
      </Row>
    </Container>
  );
}

function Card({ image, title, msgImg, btnClass, msgImgClass, cardBgGradeint, msgImgSizeClass }) {
  return (
    <div className="custom-card">
      <div className={`card-img-wrapper`}>
        <img src={image} alt={title} className="card-img" />
        <div className={`card-gradient-overlay ${cardBgGradeint}`}></div>
      </div>
      <div className="card-overlay">
        <div className={`msg ${msgImgClass}`}>
          <img src={msgImg} alt="Message Overlay" className={`msg-img ${msgImgSizeClass}`} />
        </div>
        <div className="card-footer">
          <h5 className="card-heading">{title}</h5>
          <button className={`btn btn-outline-light learn-btn ${btnClass}`}>Learn More</button>
        </div>
      </div>
    </div>
  );
}

