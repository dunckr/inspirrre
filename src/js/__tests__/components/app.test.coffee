jest.dontMock "../../components/app.coffee"

React = require "react/addons"
TestUtils = React.addons.TestUtils
App = require "../../components/app.coffee"

describe "Item", ->

  it "renders",  ->
    Shots =
      addChangeListener: ->
    subject = TestUtils.renderIntoDocument <App shots={Shots}/>
    divs = TestUtils.scryRenderedDOMComponentsWithTag(subject, "div")
    expect(divs[0].getDOMNode().className).toContain("app")
