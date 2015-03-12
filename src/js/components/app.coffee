React = require 'react'
Header = require "./header"
List = require "./list"
Footer = require "./footer"
Modal = require "./modal"

App = React.createClass

  componentDidMount: ->
    #document.body.addEventListener "keydown", @keyPress
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

  #request: (page) ->
    #@setState
      #data: []

  #keyPress: (e) ->
    #switch e.keyCode
      #when 39 then @props.page++
      #when 37 then @props.page--
    #@request(@props.page)

module.exports = App
