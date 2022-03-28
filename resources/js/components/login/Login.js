import axios from 'axios';
import React, { useState } from 'react';
import Header from '../Header';

export default function Login({responsePassingUp}) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [values, setValues] = useState({
    user_name: "",
    password: "",
  });

  const [signedOut, setSignedOut] = useState(null);

  const signingOut = () => {axios.get('/api/logout').then((response) => console.log(response))}

  
  // Getting a session-id-cookie from sancctum
  axios.get('/sanctum/csrf-cookie').then(response => {
    console.log(response);
  });

  function validateForm() {
    return username.length > 0 && password.length > 0;
  }


  // handling the submition and registration of data
  const handleSubmit = e => {
    e.preventDefault();
    // console.log(e.target);
    
    // axios.post('/login',).then(response => {
    //   console.log(response);
    // });


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
        await axios.post('/api/login', {
          ...data,
        'X-CSRF-TOKEN' : document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    }).then(response => {
      // console.log(response);
      responsePassingUp(response.data);
      // console.log(response)
    })
  }




  return (
     <section className="login__section">
        <Header height="0" classa="header-short" signingOut={signingOut} />
        
        <form className="login" onSubmit={handleSubmit}>
            <h1 className="login__title">Login</h1>
            <div className="login__container">
                <label>Username</label>
                <input 
                  autoFocus
                  type="text"
                  placeholder='Username'
                  value={username}
                  onChange={(e) => setUsername(e.target.value)}
                  name="user_name"
                />
            </div>
      
          
            <div className="login__container">
                <label>Password</label>
                <input 
                  type="password"
                  placeholder='Password'
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  name="password"
                />
            </div>
          
          <button className="login__button button" type="submit" disabled={!validateForm()}>
            Login
          </button>
        </form>
       
     </section>
  );
}

