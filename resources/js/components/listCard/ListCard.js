// import "./ListCard.css";
import { useState } from "react";

function ListCard({item}) {
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
              <ul>
                <li>Age: {item.DateOfBirth}</li>
                <li>Rank: {item.rank.map((item, i) => (
                  item.name
                ))}</li>
                <li>Nationality: {item.nationality.name}</li>
                <li>Role: {item.role.map((item, i) => (
                  item.name
                ))}</li>
                {/* <li>Language: {item.language}</li> */}
                {/* <li>Server: {item.server}</li> */}
                <li>Username: {item.UserName}</li>
                <li>Nickname: {item.NickName}</li>
              </ul>

              <br />

              <a className="neon-button" onClick={flip}>
                More
              </a>
            </div>
          </div>
          <div className="list-card__face list-card__face--back">
            <div className="list-card__content">
              <div className="list-card__body">
                <ul>
                  <li>
                    <strong>ABOUT:</strong>{" "}
                    <span className="textik">
                      {" "}
                    </span>
                  </li>
                  <li>
                    <strong>GOALS:</strong>{" "}
                    <span className="textik">
                      
                    </span>
                  </li>
                  <li>
                    {/* <strong>DISCORD:</strong> {item.discord}{" "} */}
                  </li>
                  <li>
                    {/* <strong>EMAIL:</strong> {item.email} */}
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