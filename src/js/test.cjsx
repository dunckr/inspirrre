React = require('react')

Hello = React.createClass
  render: ->
    <div>Hello, {@props.name}!</div>

React.renderComponent(<Hello name='World' />, document.getElementById('hello'))
