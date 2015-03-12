React = require "react"
Item = require "./item"

List = React.createClass

  render: ->
    console.log @props.items
    #items = @props.items.map(@renderItem)
    #<div>
      #{items}
    #</div>

  renderItem: (item) ->
    <Item
      item={item}
    ></Item>

module.exports = List
