// import "./ListCard.css";
import { useState } from "react";

function ListCardStaff({ item }) {
  const [isFlipped, setIsFlipped] = useState(false);

  const flip = () => {
    setIsFlipped(!isFlipped);
  };
  console.log(isFlipped);
  console.log(item);

  return (
    <>
      <div className="list-card">
        <div className={`list-card__inner ${isFlipped ? "is-flipped" : ""}`}>
          <div className="list-card__face list-card__face--front">
            <div className="list-card__cnt">
              <ul className="list-card__cnt__ul">
                <li>
                  <h1>STAFF</h1>
                </li>
                <li>AGE: {item.DateOfBirth}</li>
                {/* <li>RANK: {item.rank.map((item, i) => item.name)}</li> */}
                <li>NATIONALITY: {item.nationality.name}</li>
                {/* <li>ROLE: {item.role.map((item, i) => item.name)}</li> */}
                {/* <li>Language: {item.language}</li> */}
                {/* <li>Server: {item.server}</li> */}
                <li>USERNAME: {item.UserName}</li>
                <li>NICKNAME: {item.NickName}</li>
              </ul>

            </div>
            <button className="list-card__button button" onClick={flip}>
                More
            </button>
          </div>
          <div className="list-card__face list-card__face--back">
            <div className="list-card__content">
              <div className="list-card__body">
                <ul>
                  <li>
                    <strong>ABOUT:</strong> <span className="textik"> </span>
                  </li>
                  <li>
                    <strong>GOALS:</strong> <span className="textik"></span>
                  </li>
                  <li>{/* <strong>DISCORD:</strong> {item.discord}{" "} */}</li>
                  <li>{/* <strong>EMAIL:</strong> {item.email} */}</li>
                </ul>
                
              </div>
              <button className="list-card__button button" onClick={flip}>
                Back
              </button>
            </div>
          </div>
        </div>
      </div>
    </>
  );
}

export default ListCardStaff;