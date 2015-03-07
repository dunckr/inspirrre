React = require 'react'
jsonp = require "jsonp"
Header = require "./header"
List = require "./list"
Footer = require "./footer"
Modal = require "./modal"

App = React.createClass

  url: "http://api.dribbble.com/shots/popular?per_page=15&page=1"

  getInitialState: ->
    data: []

  componentDidMount: ->
    jsonp @url, {}, (err, data) =>
      console.log "setting the state"
      @setState
        data: data.shots

  render: ->
    <div className="app">
      <Header></Header>
      <List items={@state.data}></List>
      <Footer></Footer>
      <Modal></Modal>
    </div>

module.exports = App
