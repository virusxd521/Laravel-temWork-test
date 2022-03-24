import { useState, useEffect } from "react";
import Aos from 'aos'
import 'aos/dist/aos.css'

function Card({title, number, img, delay}) {
  // const [isFlipped, setIsFlipped] = useState(false);

  // const flip = () => {
  //   setIsFlipped(!isFlipped);
  // };
  // console.log(isFlipped);
  
  useEffect(() => {
    Aos.init({ duration: 500 })
  }, [])


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
          <button className="card__btn button">Show list</button>
        </div>
      </div>
    </>
  );
}

export default Card;
