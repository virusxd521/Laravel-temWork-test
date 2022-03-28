import axios from "axios";
import React, { useState } from "react";
import Header from "../Header";

function PlayerForm() {  

  return (
    <section className="form__section">
      <Header height="0" />

      <form className="form" onSubmit={handleSubmit}>
        <h1 className="form__title">Player register</h1>
        <div className="form__container">
          <label>Nickname</label>
          <input
            autoFocus
            type="text"
            placeholder="Nickname"
            name="nick_name"
          />
        </div>

        <div className="form__container">
          <label>Date of birth</label>
          <input
            type="date"
            name="date_of_birth"
          />
        </div>
        <div className="form__container">
          <label>Nationality</label>
          <select>
            <option>Czech</option>
            <option>Slovak</option>
            <option>Uk</option>
            <option>Germany</option>
          </select>
        </div>
        <div className="form__container">
          <label>Languages</label>
          <select>
            <option>Czech</option>
            <option>Slovak</option>
            <option>English</option>
          </select>
        </div>
        <div className="form__container">
          <label>Game</label>
          <select>
            <option>League of legends</option>
            <option>PUBG</option>
            <option>CS:GO</option>
          </select>
        </div>
        <div className="form__container">
          <label>Game role</label>
          <select>
            <option>Top</option>
            <option>Jungle</option>
            <option>Mid</option>
            <option>ADC</option>
            <option>Support</option>
          </select>
        </div>
        <div className="form__container">
          <label>Rank</label>
          <select>
            <option>Bronze</option>
            <option>Silver</option>
            <option>Gold</option>
            <option>Platinum</option>
            <option>Diamond</option>
            <option>Master</option>
            <option>Grandmaster</option>
            <option>Challenger</option>
          </select>
        </div>
        <div className="form__container">
          <label>Server</label>
          <select>
            <option>EUNE</option>
            <option>EUW</option>
            <option>NA</option>
          </select>
        </div>

        <button
          className="form__button button"
          type="submit"
          disabled={!validateForm()}
        >
          Submit
        </button>
      </form>
    </section>
  );
}
