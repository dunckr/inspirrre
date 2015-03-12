React = require "react"
Dispatcher = require "../dispatchers/dispatcher"

Item = React.createClass

  render: ->
    <div className="item"
      onClick={@click}
    >
      <img src={@props.item.image_url} />
    </div>

  click: ->
    #Dispatcher.dispatch
      #item: @props.item

module.exports = Item
