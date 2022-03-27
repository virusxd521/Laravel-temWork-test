// import "./ListCard.css";
import { useState } from "react";

function ListCard(props) {
  const [isFlipped, setIsFlipped] = useState(false);

  const flip = () => {
    setIsFlipped(!isFlipped);
  };
  console.log(isFlipped);
  return (
    <>
      <div className="card">
        <div className={`card__inner ${isFlipped ? "is-flipped" : ""}`}>
          <div className="card__face card__face--front">
            <div className="kokot">
              <ul>
                <li>Age: 17</li>
                <li>Rank: Master</li>
                <li>Nationality: CZ</li>
                <li>Language: Cz,Eng</li>
                <li>Server: EUNE</li>
              </ul>

              <br />

              <a className="neon-button" onClick={flip}>
                More
              </a>
            </div>
          </div>
          <div className="card__face card__face--back">
            <div className="card__content">
              <div className="card__body">
                <ul>
                  <li>
                    <strong>ABOUT:</strong>{" "}
                    <span className="textik">
                      Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                      Illum, obcaecati. Odit, ratione deleniti. Mollitia, minus.
                      Tempore natus tenetur eum error.{" "}
                    </span>
                  </li>
                  <li>
                    <strong>GOALS:</strong>{" "}
                    <span className="textik">
                      Lorem ipsum dolor sit amet consectetur adipisicing elit.
                      Sed earum saepe voluptatum odit reprehenderit maxime!
                    </span>
                  </li>
                  <li>
                    <strong>DISCORD:</strong> Haha4444{" "}
                  </li>
                  <li>
                    <strong>EMAIL:</strong> blal@seznam,cz
                  </li>
                </ul>

                <br />
                <a className="neon-button" onClick={flip}>
                  More
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}

export default ListCard;