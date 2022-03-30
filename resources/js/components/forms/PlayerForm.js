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