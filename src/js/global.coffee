React = require "react"
App = require "./components/app"
Shots = require "./stores/shots"

shots = new Shots()
React.render <App shots={shots} />, document.getElementById "app"
