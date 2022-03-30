import { useState } from "react";

function ListCardPlayer({ item }) {
  const [isFlipped, setIsFlipped] = useState(false);

  const flip = () => {
    setIsFlipped(!isFlipped);
  };
  console.log(isFlipped);
  console.log(item);

  return (
    <>
      <div className="list__card">
        <div className={`list__card__inner ${isFlipped ? "is-flipped" : ""}`}>
          <div className="list__card__face list__card__face--front">
            <div className="list__card__cnt--front">
              <ul className="list__card__cnt--front__ul">
                <li>
                  <h2 className="list__card__title">PLAYER</h2>
                </li>
                <li>AGE: {item.DateOfBirth}</li>
                <li>RANK: {item.rank.map((item, i) => item.name)}</li>
                <li>NATIONALITY: {item.nationality.name}</li>
                <li>ROLE: {item.role.map((item, i) => item.name)}</li>
                {/* <li>Language: {item.language}</li> */}
                {/* <li>Server: {item.server}</li> */}
                <li>USERNAME: {item.UserName}</li>
                <li>NICKNAME: {item.NickName}</li>
              </ul>

            </div>
            <button className="list__card__button button" onClick={flip}>
                More
            </button>
          </div>
          <div className="list__card__face list__card__face--back">
            <div className="list__card__cnt--back">        
              <div className="list__card__cnt--back--content">
                <ul>
                  <li>
                    <strong>ABOUT:</strong> <span className="list__card__span"> </span>
                  </li>
                  <li>
                    <strong>GOALS:</strong> <span className="list__card__span"></span>
                  </li>
                  <li>{/* <strong>DISCORD:</strong> {item.discord}{" "} */}</li>
                  <li>{/* <strong>EMAIL:</strong> {item.email} */}</li>
                </ul>
                
              </div>
              <button className="list__card__button button" onClick={flip}>
                Back
              </button>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}

export default ListCardPlayer;
