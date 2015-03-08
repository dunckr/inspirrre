React = require 'react'
jsonp = require "jsonp"
Header = require "./header"
List = require "./list"
Footer = require "./footer"
Modal = require "./modal"

App = React.createClass

  url: (number, page) ->
    "http://api.dribbble.com/shots/popular?per_page=#{number}5&page=#{page}"

  getInitialState: ->
    data: []

  componentDidMount: ->
    document.body.addEventListener "keydown", @keyPress
    @request(1)

  render: ->
    <div
      className="app"
    >
      <Header></Header>
      <List items={@state.data}></List>
      <Footer></Footer>
      <Modal></Modal>
    </div>

  request: (page) ->
    jsonp @url(4, page), {}, (err, data) =>
      console.log "setting the state"
      @setState
        data: data.shots

  keyPress: (e) ->
    console.log "keypress!", e
    @request(2)

module.exports = App
