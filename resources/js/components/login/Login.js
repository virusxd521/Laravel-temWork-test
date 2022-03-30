import { UserContext } from '../../context/context';
import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { useContext } from 'react';
import Header from '../Header';
import { useNavigate } from 'react-router-dom'




export default function Login({responsePassingUp, authenticatedUser}) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [values, setValues] = useState({
    user_name: "",
    password: "",
  });

  const { user, setUser} = useContext(UserContext)
  console.log('hi', user)

  // const [signedOut, setSignedOut] = useState('Signed');

  const navigate = useNavigate();

  
  
  

  function validateForm() {
    return username.length > 0 && password.length > 0;
  }

  // handling the submition and registration of data
  const handleSubmit = e => {
    e.preventDefault();

  // midiatory object between the form and the state 
    const data = {
      user_name: '',
      password: '',
    }
    const parentArr = Array.from(e.target);
    for(let key in values){
      parentArr.map((item, index) => {
          return key === item.name ? data[key] = item.value : null;
      });
    }
    configuring_registration(data);
  }

  const configuring_registration = async data => {
        document.querySelector('meta[name="csrf-token"]').getAttribute('content');
        const res = await axios.post('/api/login', {
          ...data,
        'X-CSRF-TOKEN' : document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    })
      console.log('ciao', res.data);
      //responsePassingUp(res.data);

      if (res.data.error) {
        setUser(null)
        return navigate('/')
      } else {
        setUser(res.data)
        return navigate('/')
      }
    
  }

  return (
     <section className="login">
        <Header classa="header-short" authenticatedUser={authenticatedUser} />
        
        <form className="login__form" onSubmit={handleSubmit}>
            <h1 className="login__form__title">Login</h1>
            <div className="login__form__container">
                <label className="login__form__label">Username</label>
                <input 
                  className="login__form__input"
                  autoFocus
                  type="text"
                  placeholder='Username'
                  value={username}
                  onChange={(e) => setUsername(e.target.value)}
                  name="user_name"
                />
            </div>
      
          
            <div className="login__form__container">
                <label className="login__form__label">Password</label>
                <input 
                  className="login__form__input"
                  type="password"
                  placeholder='Password'
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  name="password"
                />
            </div>
          
          <button className="login__form__button button" type="submit" disabled={!validateForm()}>
            Login
          </button>
        </form>
       
     </section>
  );
}

