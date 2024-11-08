import "./appbar.css";
import React from 'react'
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';

export default function Appbar() {
  return (
    <Navbar collapseOnSelect expand="lg" className="navbar-color sticky-top">
    <Container fluid>
      <Navbar.Brand className="brand">ada</Navbar.Brand>
      <Navbar.Toggle aria-controls="responsive-navbar-nav" className="toggle-text navbar-toggle">Menu</Navbar.Toggle>

      <Navbar.Collapse id="responsive-navbar-nav">
        <Nav className=" me-auto ms-auto">


        <div className="menu">
      <div className="item">
        <button className="link">
          <span>Product</span>
          <svg viewBox="0 0 360 360" xmlSpace="preserve">
            <g id="SVGRepo_iconCarrier icon">
              <path
                id="XMLID_225_"
                d="M325.607,79.393c-5.857-5.857-15.355-5.858-21.213,0.001l-139.39,139.393L25.607,79.393 
                c-5.857-5.857-15.355-5.858-21.213,0.001c-5.858,5.858-5.858,15.355,0,21.213l150.004,150c2.813,2.813,6.628,4.393,10.606,4.393 
                s7.794-1.581,10.606-4.394l149.996-150C331.465,94.749,331.465,85.251,325.607,79.393z"
              ></path>
            </g>
          </svg>
        </button>
        <div className="submenu">
          <div className="submenu-item">
            <button className="submenu-link">Development</button>
          </div>
          <div className="submenu-item">
            <button className="submenu-link">Design</button>
          </div>
          <div className="submenu-item">
            <button className="submenu-link">Marketing</button>
          </div>
          <div className="submenu-item">
            <button className="submenu-link">SEO</button>
          </div>
        </div>
      </div>
    </div>

    <div className="menu">
      <div className="item">
        <button className="link">
          <span>Solutions</span>
          <svg viewBox="0 0 360 360" xmlSpace="preserve">
            <g id="SVGRepo_iconCarrier icon">
              <path
                id="XMLID_225_"
                d="M325.607,79.393c-5.857-5.857-15.355-5.858-21.213,0.001l-139.39,139.393L25.607,79.393 
                c-5.857-5.857-15.355-5.858-21.213,0.001c-5.858,5.858-5.858,15.355,0,21.213l150.004,150c2.813,2.813,6.628,4.393,10.606,4.393 
                s7.794-1.581,10.606-4.394l149.996-150C331.465,94.749,331.465,85.251,325.607,79.393z"
              ></path>
            </g>
          </svg>
        </button>
        <div className="submenu">
          <div className="submenu-item">
            <button className="submenu-link">Development</button>
          </div>
          <div className="submenu-item">
            <button className="submenu-link">Design</button>
          </div>
          <div className="submenu-item">
            <button className="submenu-link">Marketing</button>
          </div>
          <div className="submenu-item">
            <button className="submenu-link">SEO</button>
          </div>
        </div>
      </div>
    </div>



    <div className="menu">
      <div className="item">
        <button className="link">
          <span>Resources</span>
          <svg viewBox="0 0 360 360" xmlSpace="preserve">
            <g id="SVGRepo_iconCarrier icon">
              <path
                id="XMLID_225_"
                d="M325.607,79.393c-5.857-5.857-15.355-5.858-21.213,0.001l-139.39,139.393L25.607,79.393 
                c-5.857-5.857-15.355-5.858-21.213,0.001c-5.858,5.858-5.858,15.355,0,21.213l150.004,150c2.813,2.813,6.628,4.393,10.606,4.393 
                s7.794-1.581,10.606-4.394l149.996-150C331.465,94.749,331.465,85.251,325.607,79.393z"
              ></path>
            </g>
          </svg>
        </button>
        <div className="submenu">
          <div className="submenu-item">
            <button className="submenu-link">Development</button>
          </div>
          <div className="submenu-item">
            <button className="submenu-link">Design</button>
          </div>
          <div className="submenu-item">
            <button className="submenu-link">Marketing</button>
          </div>
          <div className="submenu-item">
            <button className="submenu-link">SEO</button>
          </div>
        </div>
      </div>
    </div>
          
          <Nav.Link href="#deets" className="me-3">Pricing</Nav.Link>
               </Nav>
                <Nav>
          <Nav.Link href="#deets" className="me-3 mt-auto mb-auto">log in</Nav.Link>
      <div className="button"></div>
      <button className="signup-button animation button1 ">
          Try Ada for Free
      <div className="arrow-wrapper">
        <div className="arrow"></div>
      </div>
    </button>

    <button className="demo-button animation button2 me-lg-2 ms-lg-4">
    Get Demo
      <div className="arrow-wrapper">
        <div className="arrow"></div>
      </div>
    </button>

      </Nav>
      </Navbar.Collapse>
    </Container>
  </Navbar>
  )
}


