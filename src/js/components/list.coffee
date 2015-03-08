React = require "react"
Item = require "./item"

List = React.createClass

  render: ->
    items = @props.items.map(@renderItem)
    <div>
      {items}
    </div>

  renderItem: (item) ->
    <Item
      item={item}
    ></Item>

module.exports = List
