import React from 'react';
import ReactDom from 'react-dom';
import { BrowserRouter, Routes, Route } from 'react-router-dom';

import Homepage from './components/Homepage'
import Login from './components/login/Login'
import Register from './components/register/Register'
import UserInterface from './components/userInterface/UserInterface'


ReactDom.render(
    <BrowserRouter>
    <Routes>
      <Route path="/" element={ <Homepage />} />
      <Route path="/login" element={<Login />} /> 
      <Route path="/register" element={<Register />} /> 
      <Route path="/profile" element={<UserInterface />} />
    </Routes>
  </BrowserRouter>, 
    document.querySelector('#root')
);
