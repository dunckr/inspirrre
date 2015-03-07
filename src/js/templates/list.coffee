React = require "react"
Item = require "./item"

List = React.createClass

  render: ->
    items = @props.items.map(@renderItem)
    <div>
      {items}
    </div>

  renderItem: (item) ->
    console.log item.image_url
    <Item
      src={item.image_url}
    ></Item>

module.exports = List
