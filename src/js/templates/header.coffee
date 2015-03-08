React = require "react"

Header = React.createClass

  render: ->
    <header>
      <div className="left">
        <p>prev</p>
        <span className="icon -left-nav"></span>
      </div>
      <div className="center">
        <img src="images/logo.png" />
      </div>
      <div className="right">
        <p>next</p>
        <span className="icon -right-nav"></span>
      </div>
    </header>

module.exports = Header
