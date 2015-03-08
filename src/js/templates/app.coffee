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

  getDefaultProps: ->
    page: 1
    numberPerPage: 10

  componentDidMount: ->
    document.body.addEventListener "keydown", @keyPress
    @request(@props.page)

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
    jsonp @url(@props.numberPerPage, page), {}, (err, data) =>
      @setState
        data: data.shots

  keyPress: (e) ->
    switch e.keyCode
      when 39 then @props.page++
      when 37 then @props.page--
    @request(@props.page)

module.exports = App
