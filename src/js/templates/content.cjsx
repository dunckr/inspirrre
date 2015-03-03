React = require "react"

ContentToggle = React.createClass

  getInitialState: ->
    showDetails: false

  handleClick: (e) ->
    @setState
      showDetails: not @state.showDetails

  render: ->
    details = @state.showDetails
    <div className="ContentToggle">
      <div onClick={@handleClick} className="ContentToggle__Summary">{@props.summary}</div>
      <div className="ContentToggle__Details">{details}</div>
    </div>

module.exports = ContentToggle
