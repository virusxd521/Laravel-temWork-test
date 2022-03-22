import { useState } from "react";

function Card({title, number, img}) {
  // const [isFlipped, setIsFlipped] = useState(false);

  // const flip = () => {
  //   setIsFlipped(!isFlipped);
  // };
  // console.log(isFlipped);
  console.log(number);
  return (
    <>
      <div className="card">
        <div className="card">
          <div className="card__body">
          <img className={img} />
          <h1 className="card__title">{title}</h1>
          <div className="card__circle">
          <h1 className="card__number">{number}</h1>
        </div>
        </div>
          <button className="card__btn">Show list</button>
        </div>
      </div>
    </>
  );
}

export default Card;