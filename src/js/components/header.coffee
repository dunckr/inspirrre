React = require "react"
Dispatcher = require "../dispatchers/dispatcher"

Header = React.createClass

  render: ->
    <header>
      <div className="left" onClick={@prev}>
        <p>prev</p>
        <span className="icon -left-nav"></span>
      </div>
      <div className="center">
        <img src="images/logo.png" />
      </div>
      <div className="right" onClick={@next}>
        <p>next</p>
        <span className="icon -right-nav"></span>
      </div>
    </header>

  next: ->
    Dispatcher.dispatch
      page: "next"

  prev: ->
    Dispatcher.dispatch
      page: "prev"

module.exports = Header
