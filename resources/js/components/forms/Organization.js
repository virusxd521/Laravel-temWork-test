import axios from "axios";
import React, { useState } from "react";
import Header from "../Header";

function PlayerForm() {
  // const [username, setUsername] = useState("");
  // const [password, setPassword] = useState("");
  // const [values, setValues] = useState({
  //   user_name: "",
  //   password: "",
  // });

  return (
    <section className="form__section">
      <Header height="0" />

      <form className="form" >
        <h1 className="form__title">Organization register</h1>
        <div className="form__container">
          <label>Name</label>
          <input
            autoFocus
            type="text"
            placeholder="Nickname"
            // value={username}
            // onChange={(e) => setUsername(e.target.value)}
            name="nick_name"
          />
        </div>
        <div className="form__container">
          <label>Nationality</label>
          <select className="form__select">
            <option>Czech</option>
            <option>Slovak</option>
            <option>Uk</option>
            <option>Germany</option>
          </select>
        </div>
        <div className="form__container">
          <label>Languages</label>
          <select className="form__select">
            <option>Czech</option>
            <option>Slovak</option>
            <option>English</option>
          </select>
        </div>
        <div className="form__container">
          <label>Game</label>
          <select className="form__select">
            <option>League of legends</option>
            <option>PUBG</option>
            <option>CS:GO</option>
          </select>
        </div>
        
        <div className="form__container">
          <label>Server</label>
          <select className="form__select">
            <option>EUNE</option>
            <option>EUW</option>
            <option>NA</option>
          </select>
        </div>

        <div className="form__container">
          <label>What do we offer</label>
          <input
            autoFocus
            type="text"
            placeholder="What we offer"
            // value={username}
            // onChange={(e) => setUsername(e.target.value)}
            name="offer"
          />
        </div>

        <div className="form__container">
          <label>What we require</label>
          <input
            autoFocus
            type="text"
            placeholder="What we require"
            // value={username}
            // onChange={(e) => setUsername(e.target.value)}
            name="requirement"
          />
        </div>

        <button
          className="form__button button"
          type="submit"
          // disabled={!validateForm()}
        >
          Submit
        </button>
      </form>
    </section>
  );
}

export default PlayerForm;