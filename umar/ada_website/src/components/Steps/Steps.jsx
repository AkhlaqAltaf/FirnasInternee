import React, { useState, useRef } from 'react';
import { Swiper, SwiperSlide } from 'swiper/react';
import 'swiper/swiper-bundle.css';
import './Steps.css';
import Container from 'react-bootstrap/Container';

const stepsData = [
  {
    heading: "Onboard Ada using existing support content",
    description: "Instantly teach Ada everything it needs to know about your company by connecting your knowledge sources, data, and key business systems.",
    image: "https://www.ada.cx/_astro/home-card-slider-step-1.D2skqV6__ZfnWw4.webp"
  },
  {
    heading: "Uncover improvements with AI-driven insights",
    description: "Identify which automated conversations are truly successful — where Ada provided relevant, accurate, and safe responses — and where there is an opportunity to improve.",
    image: "https://www.ada.cx/_astro/home-card-slider-step-2.C0ReBDVX_2g5X7M.webp"
  },
  {
    heading: "Drive continuous improvement and maintain control with AI coaching",
    description: "Coach Ada to follow specific rules, guidance, and multi-step processes. Provide feedback with confidence that Ada’s AI Agent will continuously learn and grow with your brand.",
    image: "https://www.ada.cx/_astro/home-card-slider-step-3.D5cBWtXp_ZhKe2M.webp"
  }
];

export default function Steps() {
  const [currentStep, setCurrentStep] = useState(0);
  const swiperRef = useRef(null);
  const touchStartX = useRef(null);  

  const handleSwipeLeft = () => {
    setCurrentStep((prev) => (prev === 0 ? stepsData.length - 1 : prev - 1));
  };

  const handleSwipeRight = () => {
    setCurrentStep((prev) => (prev === stepsData.length - 1 ? 0 : prev + 1));
  };

  const handleTouchStart = (e) => {
    touchStartX.current = e.touches[0].clientX; 
  };

  const handleTouchEnd = (e) => {
    const touchEndX = e.changedTouches[0].clientX;
    if (touchStartX.current !== null) {
      const touchDiff = touchStartX.current - touchEndX;
      if (touchDiff > 50) {
        handleSwipeLeft(); 
      } else if (touchDiff < -50) {
        handleSwipeRight(); 
      }
    }
    touchStartX.current = null; 
  };

  const handleStepChange = (index) => {
    setCurrentStep(index); 
    if (swiperRef.current) {
      swiperRef.current.swiper.slideTo(index); 
    }
  };

  return (
    <div className="steps" onTouchStart={handleTouchStart} onTouchEnd={handleTouchEnd}>
      <Container>
        <div className="text">
          <h1 className="steps-head">Three steps to ROI</h1>
          <p className="steps-disc">From onboarding to resolution in minutes</p>
        </div>
        <div className="crousal-contents">
          <div className="crousal-column">
            <div className="crousal-buttons">
              {stepsData.map((_, index) => (
                <button
                  key={index}
                  className="demo-button animation crous-btn"
                  onClick={() => handleStepChange(index)} 
                >
                  Step {index + 1}
                </button>
              ))}
            </div>
            <h1 className="crousal-heading">{stepsData[currentStep].heading}</h1>
            <p className="crousal-disc">{stepsData[currentStep].description}</p>
            <button className="animation button4 learn-btn">Learn More</button>
          </div>

          <div className="image-stack">
            {/* Swiper */}
            <Swiper
              loop={false}
              ref={swiperRef} 
              onSlideChange={(swiper) => setCurrentStep(swiper.realIndex)} 
              className="swiper-container"
              slidesPerView={1}
              spaceBetween={0} 
              touchRatio={1} 
              grabCursor={true} 
            >
              {stepsData.map((step, index) => (
                <SwiperSlide key={index} className="stacked-image-wrapper">
                  <img
                    src={step.image}
                    alt={`Step ${index + 1}`}
                    className="stacked-image"
                    style={{
                      opacity: currentStep === index ? 1 : 0,
                      transform: currentStep === index ? 'scale(1)' : 'scale(0.8)',  
                    }}
                  />
                </SwiperSlide>
              ))}
            </Swiper>
          </div>
        </div>
      </Container>
    </div>
  );
}
