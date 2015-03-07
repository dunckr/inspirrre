React = require "react"

Footer = React.createClass

  render: ->
    <div className="footer" onMouseOver={@mouseOver}>
      <p>footer</p>
    </div>

  mouseOver: ->
    # send event!

module.exports = Footer
