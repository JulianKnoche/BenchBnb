import React from "react";
import ReactDOM from "react-dom";
import { signup } from "./actions/session_actions";

document.addEventListener("DOMContentLoaded", ()=> {
  const root = document.getElementById("root");

  //testing
  window.signup = signup;
  //testing


  ReactDOM.render(<h1>Hello World!</h1>,root);
});
