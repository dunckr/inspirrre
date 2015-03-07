React = require "react"
Item = require "./item"

List = React.createClass

  render: ->
    item = <Item title="test"></Item>
    <div>
      {item}
      {item}
      {item}
      {item}
    </div>

  renderItem: ->

module.exports = List
