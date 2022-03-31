import axios from "axios";
import React, { useEffect, useState, useRef } from "react";
import Header from "../Header";
import Option from './Option';

function PlayerForm() {
  
  // State with the data fetched from the API
  const [responseData, setResponseData] = useState([]);

  // prepering a form object since axios cannot handle forms 
  const loginFormData = new FormData();
  
  // fetching data to populate the form
  const fetchingData = () => {
    axios.get('/api/player_form_data')
    .then(response => {
      console.log(response.data);
      setResponseData(response.data)
    })
  }

  useEffect(() => {
    fetchingData();
  },[])

  const submitionDataUser = () => {
    axios.post('/api/submiting_player_advertisement',
      loginFormData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        }
      }
    
    )
    .then(res => {
      console.log(res)
    })
  }

  // Hydrating the form Object with the data from the form
  const hydrator = e => {
    e.preventDefault(); 
    Array.from(e.target).map(item => {
      loginFormData.append(item['name'], item.value)
    });
    submitionDataUser();
  }

  return (    
    
    <section className="form__section">
      <Header height="0" />
      <form className="form" id="player_form" onSubmit={e => hydrator(e)}>
        <h1 className="form__title">Player register</h1>
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
          <label>Date of birth</label>
          <input
            className="form__input"
            type="date"
            // value={password}
            // onChange={(e) => setPassword(e.target.value)}
            name="date_of_birth"
          />
        </div>
        <div className="form__container">
          <label htmlFor="nationalities">Nationality</label>
            <Option responseData={responseData} propOption={'nationalities'} />
        </div>
        <div className="form__container">
          <label htmlFor="languages" >Languages</label>
            <Option responseData={responseData} propOption={'languages'} />
        </div>
        <div className="form__container">
          <label htmlFor="games">Game</label>
          <Option responseData={responseData} propOption={'games'} />
        </div>
        <div className="form__container">
          <label htmlFor="game_roles" >Game role</label>
            <Option responseData={responseData} propOption={'game_roles'} />
        </div>
        <div className="form__container">
          <label htmlFor="ranks">Rank</label>
            <Option responseData={responseData} propOption={'ranks'} />
        </div>
        <div className="form__container">
          <label htmlFor="server">Server</label>
          <select name="server" form="player_form" id="server" className="form__select">
            <option>EUNE</option>
            <option>EUW</option>
            <option>NA</option>
          </select>
        </div>
        <div className="form__container">
          <label htmlFor="contacts">Contact</label>
          <Option responseData={responseData} propOption={'contacts'} />
        </div>
        <div className="form__container">
          <label htmlFor="communication">Communication URL</label>
          <input className="form__select" id="communication" name="communication" placeholder="Please enter a url..."/>
        </div>



        <div className="form__container">
            <label htmlFor="opgg">OPGG</label>
            <input className="form__select" name="opgg" id="opgg" placeholder="Please enter a url..."/>
        </div>
        <div className="form__container">
          <label htmlFor="lol_pros">LoL PROS</label>
          <input className="form__select" id="lol_pros" name="lol_pros" placeholder="Please enter a url..."/>
        </div>
        <button
          className="form__button button"
          type="submit"
          // disabled={!validateForm()}
          placeholder="Submit"
          value="some_value"

        >
          Submit
        </button>
      </form>
    </section>
  );
}

export default PlayerForm;