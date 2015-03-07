React = require 'react'
ContentToggle = require "./content"
Hello = require "./hello"

App = React.createClass
  render: ->
    <div className="App">
      <h1>Hello, {@props.name}!</h1>
      <Hello />
      <ContentToggle summary="Tacos">
        <p>Everybody should eat tacos.</p>
      </ContentToggle>
    </div>

module.exports = App
