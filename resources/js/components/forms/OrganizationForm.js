import axios from "axios";
import React, { useState } from "react";
import Header from "../Header";

function PlayerForm() {
  
  return (
    <section className="form__section">
      <Header height="0" />

      <form className="form" >
        <h1 className="form__title">Organization register</h1>
        <div className="form__container">
          <label>Name</label>
          <input
            className="form__input"
            autoFocus
            type="text"
            placeholder="Nickname"
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
            placeholder="What we offer"
            name="offer"
          />
        </div>

        <div className="form__container">
          <label>What we require</label>
          <input
            className="form__input"
            autoFocus
            type="text"
            placeholder="What we require"
            name="requirement"
          />
        </div>

        <button
          className="form__button button"
          type="submit"
        >
          Submit
        </button>
      </form>
    </section>
  );
}

export default PlayerForm;