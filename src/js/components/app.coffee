React = require 'react'
Dispatcher = require "../dispatchers/dispatcher"
Header = require "./header"
List = require "./list"
Footer = require "./footer"
Modal = require "./modal"

App = React.createClass

  componentDidMount: ->
    document.body.addEventListener "keydown", @keyPress
    @props.shots.addChangeListener =>
      @setProps
        shots: @props.shots

  render: ->
    <div className="app">
      <Header></Header>
      <List items={@props.shots.store}></List>
      <Footer></Footer>
      <Modal></Modal>
    </div>

  keyPress: (e) ->
    switch e.keyCode
      when 39
        Dispatcher.dispatch(page: "next")
      when 37
        Dispatcher.dispatch(page: "prev")

module.exports = App
