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
          <label>Nickname</label>
          <input
            className="form__input"
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
            className="form__input"
            autoFocus
            type="text"
            placeholder="Experience"
            // value={username}
            // onChange={(e) => setUsername(e.target.value)}
            name="experience"
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