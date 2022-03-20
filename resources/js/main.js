import React from 'react';
import ReactDom from 'react-dom';
import { BrowserRouter } from 'react-router-dom';
import NavBar from './Components/NavBar';

const Main = () => {
    return (
        <NavBar />
    )
}

ReactDom.render(
    <BrowserRouter>
        <Main />
    </BrowserRouter>,
    document.querySelector('#root')
);