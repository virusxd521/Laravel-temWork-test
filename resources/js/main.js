import React from 'react';
import ReactDom from 'react-dom';
import { BrowserRouter } from 'react-router-dom';
// import './index.css';
import Header from './components/Header'
import Homepage from './components/Homepage'
import NavBg from './components/NavBg'
import CardsPage from './components/CardsPage';



const Main = () => {
    return (
        <>
            <Header />
            <Homepage />
            <CardsPage />
            <NavBg /> 
        </>
    )
}

ReactDom.render(
    <BrowserRouter>
        <Main />
    </BrowserRouter>,
    document.querySelector('#root')
);
