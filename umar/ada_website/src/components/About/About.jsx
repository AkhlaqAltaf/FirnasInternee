import React from 'react'
import './About.css'
import Container from 'react-bootstrap/Container';
export default function About
() {
  return (

    <Container fluid className="about">
         <button className="demo-button animation button3 mt-auto mb-auto home-btn">
                Webinar: The framework to accelerate AI maturity in customer service
             <div className="arrow-wrapper">
                <div className="arrow"></div>
            </div>
         </button>
         <h1 className="main-heading">
         Built for enterprise, loved by customers
         </h1>
         <p className="discription">
         Trusted by enterprises to serve billions, Ada’s AI Agent effortlessly automates customer service across messaging, email, phone, and SMS.
         </p>
        <div className="buttons">
         <button className="animation button4 mt-auto mb-auto">
                Get a Demo
         </button>

         <button className="animation button5 ms-3 mt-auto mb-auto">
                Try Ada for Free
         </button>
         </div>

    </Container>
  )
}

