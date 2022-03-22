import React, { useState } from 'react';
import Header from '../Header';

export default function Login() {
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");

  function validateForm() {
    return username.length > 0 && password.length > 0;
  }

  function handleSubmit(event) {
    event.preventDefault();
  }

  return (
     <>
        <Header />
        <div className="Login">
          <form onSubmit={handleSubmit}>
              <h1>Login</h1>
             <div className="Login-container">
                  <label>Username</label>
                  <input 
                    autoFocus
                    type="text"
                    placeholder='Username'
                    value={username}
                    onChange={(e) => setUsername(e.target.value)}
                  />
             </div>
        
            
              <div className="Login-container">
                  <label>Password</label>
                  <input 
                    type="password"
                    placeholder='Password'
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                  />
              </div>
            
            <button className="login__button" type="submit" disabled={!validateForm()}>
              Login
            </button>
          </form>
        </div>
     </>
  );
}

