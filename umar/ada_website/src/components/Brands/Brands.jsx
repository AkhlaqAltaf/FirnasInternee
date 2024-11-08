import React from 'react';
import './Brands.css'; // Assuming you will create this CSS file
import Container from 'react-bootstrap/Container';

const logos = [
    "https://www.ada.cx/_astro/logo-wealthsimple-dark.DzWS0iHc_BCF3.svg",
    "https://www.ada.cx/_astro/logo-canva-colour.C_iXdqNo_ZdLY7U.svg",
    "https://www.ada.cx/_astro/logo-pinterest-colour.P7pO1hcq_Z1PGfc2.svg",
    "https://www.ada.cx/_astro/logo-afterpay-dark.D6sVPrcC_ZRaooX.svg",
    "https://www.ada.cx/_astro/logo-square-dark.DQi0HWYf_Z2t8QSp.svg",
    "https://www.ada.cx/_astro/logo-mailchimp-dark.DXieuM3h_PLFN9.svg",
    "https://www.ada.cx/_astro/logo-ipsy-dark.VPOaN3om_Z2d0ePC.svg",
    "https://www.ada.cx/_astro/logo-verizon-dark.C0wK0V_6_1OTd44.svg",
    "https://www.ada.cx/_astro/logo-weber-colour.6xoqHkKU_Z11piN7.svg",
    "https://www.ada.cx/_astro/logo-yeti-dark.CWYQBF3d_2hInf9.svg"
];

const Brands = () => {
  return (
<Container>
    <div className="slider">
      <div className="slide-track">
        {logos.map((logo, index) => (
          <div className="slide" key={index}>
            <img src={logo} alt={`Logo ${index + 1}`} />
          </div>
        ))}
        {logos.map((logo, index) => (
          <div className="slide" key={`duplicate-${index}`}>
            <img src={logo} alt={`Logo ${index + 1} (duplicate)`} />
          </div>
        ))}
      </div>
    </div>
</Container>
  );
};

export default Brands;
