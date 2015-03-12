React = require 'react'
Header = require "./header"
List = require "./list"
Footer = require "./footer"
Modal = require "./modal"

App = React.createClass


  getDefaultProps: ->
    page: 1
    numberPerPage: 10

  componentDidMount: ->
    #document.body.addEventListener "keydown", @keyPress
    #@request(@props.page)
    #console.log @props
    console.log @props
    @props.shots.addChangeListener ->
      console.log "shots changed!"

  render: ->
    #<List items={@props.shots.store}></List>
    <div className="app">
      <Header></Header>
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
