React = require "react"

Item = React.createClass

  render: ->
    <div className="item"
      onMouseOver={@mouseOver}
      onMouseLeave={@mouseLeave}
    >
      <img src={@props.item.image_url} />
    </div>

  mouseOver: ->
    # send event!

  mouseLeave: ->
    # send event!

module.exports = Item
