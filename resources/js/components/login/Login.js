import axios from 'axios';
import React, { useState } from 'react';
import Header from '../Header';




export default function Login({responsePassingUp, authenticatedUser}) {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [values, setValues] = useState({
    user_name: "",
    password: "",
  });

 


  // const [signedOut, setSignedOut] = useState('Signed');

  // const navigate = useNavigate();

  const signingOut = () => {
    axios.get('/api/logout').then( response => {
    console.log(response);
  })}

  
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
      console.log(response.data);
      responsePassingUp(response.data);
 
    })
  }

  return (
     <section className="login">
        <Header height="0" classa="header-short" authenticatedUser={authenticatedUser}  />
        
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

