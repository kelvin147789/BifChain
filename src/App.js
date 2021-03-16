import logo from './logo.svg';
import './App.css';
import { HashRouter, Route, Switch, Link } from "react-router-dom";
import React, { useState, useEffect, useRef } from 'react';
import Navbar from './components/Navbar'
import Main from './components/Main';

function App() {
  return (
    <div className="App">
      <Navbar />




      <HashRouter>
        <Switch>

          <Main />


        </Switch>
      </HashRouter>




    </div>
  );
}

export default App;
