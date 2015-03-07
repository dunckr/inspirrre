React = require "react"

Item = React.createClass

  getInitialState: ->
    src: "https://d13yacurqjgara.cloudfront.net/users/31664/screenshots/1962156/cub-studio-birthday_teaser.gif"

  render: ->
    <div className="item"
      onMouseOver={@mouseOver}
      onMouseLeave={@mouseLeave}
    >
      <img src={@props.src} />
    </div>

  mouseOver: ->
    # send event!

  mouseLeave: ->
    # send event!

module.exports = Item
