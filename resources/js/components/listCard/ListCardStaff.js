import { useState, useContext, useEffect } from "react";
import { UserContext } from "../../context/context";

function ListCardStaff({ item }) {
  const [isFlipped, setIsFlipped] = useState(false);

  // function for flipping, runs only if user is logged in (means that its value is not null)
  const flip = () => {
    user && setIsFlipped(!isFlipped);
    !user && alert("You need to be registered to see the contact info");
  };

  // checking if user is logged in or not and pass it to our user context
  const getUser = () => {
    if (res.data.error) {
      setUser(null);
    } else {
      setUser(res.data);
    }
  };

  // calling the function getUser on every rerender of the page
  useEffect(() => {
    getUser;
  }, []);

  // importing UserContext
  const { user, setUser } = useContext(UserContext);

  return (
    <>
      <div className="list__card">
        <div className={`list__card__inner ${isFlipped ? "is-flipped" : ""}`}>
          <div className="list__card__face list__card__face--front">
            <div className="list__card__cnt--front">
              <ul className="list__card__cnt--front__ul">
                <h2 className="list__card__title">STAFF</h2>

                <li>AGE: {item.DateOfBirth}</li>
                <li>NATIONALITY: {item.nationality.name}</li>
                <li>USERNAME: {item.UserName}</li>
                <li>NICKNAME: {item.NickName}</li>
              </ul>
            </div>
            <button className="list__card__button button" onClick={flip}>
              Contact
            </button>
          </div>
          <div className="list__card__face list__card__face--back">
            <div className="list__card__cnt--back">
              <div className="list__card__cnt--back--content">
                <ul>
                  <li>
                    <strong>ABOUT:</strong>{" "}
                    <span className="list__card__span"> </span>
                  </li>
                  <li>
                    <strong>GOALS:</strong>{" "}
                    <span className="list__card__span"></span>
                  </li>
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

export default ListCardStaff;
