import React from 'react';
import ReactDom from 'react-dom';
import {BrowserRouter} from 'react-router-dom';
import AppMain from './AppMain';

import '/css/index.css'

ReactDom.render(
    <BrowserRouter>
      <AppMain />
    </BrowserRouter>, 
    document.querySelector('#root')
  );
