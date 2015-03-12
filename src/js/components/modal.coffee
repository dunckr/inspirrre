React = require "react"
Dispatcher = require "../dispatchers/dispatcher"

Modal = React.createClass

  getInitialState: ->
    visible: false
    img: ""

  componentDidMount: ->
    #Dispatcher.register (data) =>
      #@setState
        #visible: true
        #url: data.item.image_url

  hidden: ->
    if @state.visible
      return ""
    else
      "hidden"

  render: ->
    <div className="modal #{@hidden()}">
      <div className="left">
        <p>prev</p>
        <span className="icon -close"></span>
      </div>
      <div className="modal-content">
        <h1>content</h1>
        <img src={@state.url} />
      </div>
    </div>

module.exports = Modal
