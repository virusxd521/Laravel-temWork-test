import { useState, useEffect } from "react";
import Aos from "aos";
import "aos/dist/aos.css";
import { useNavigate } from "react-router-dom";

function Card({ title, number, img, delay, location }) {
  useEffect(() => {
    Aos.init({ duration: 500 });
  }, []);

  const navigate = useNavigate();

  return (
    <>
      <div data-aos="fade-up" data-aos-delay={delay} className="card">
        <div className="card">
          <div className="card__body">
            <div className="card__body__bg">
              <img className={img} />
            </div>
            <h1 className="card__title">{title}</h1>
            <div className="card__circle">
              <h1 className="card__number">{number}</h1>
            </div>
          </div>
          <button
            onClick={() => navigate(location)}
            className="card__btn button"
          >
            Show list
          </button>
        </div>
      </div>
    </>
  );
}

export default Card;
