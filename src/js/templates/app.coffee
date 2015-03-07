React = require 'react'
Header = require "./header"
List = require "./list"
Footer = require "./footer"
Modal = require "./modal"

App = React.createClass
  render: ->
    <div className="app">
      <Header></Header>
      <List></List>
      <Footer></Footer>
      <Modal></Modal>
    </div>

module.exports = App
