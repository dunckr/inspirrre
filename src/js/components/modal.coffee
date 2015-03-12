React = require "react"
Dispatcher = require "../dispatchers/dispatcher"

Modal = React.createClass

  getInitialState: ->
    visible: false
    img: ""

  componentDidMount: ->
    Dispatcher.register (data) =>
      return unless data.item?
      @setState
        visible: true
        img: data.item.image_url

  hidden: ->
    if @state.visible
      return ""
    else
      "hidden"

  render: ->
    <div className="modal #{@hidden()}">
      <div className="modal-header">
          <span className="icon -close" onClick={@close}></span>
      </div>
      <div className="modal-content">
        <img src={@state.img} />
      </div>
    </div>

  close: ->
    @setState
      visible: false

module.exports = Modal
