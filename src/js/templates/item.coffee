React = require "react"

Item = React.createClass
  render: ->
    itemStyle =
      borderBottom: '1px solid #ccc'
      paddingBottom: 15

    <div className="col-sm-3" style={itemStyle}>
      <h4>{this.props.item.title}</h4>
    </div>

module.exports = Item
