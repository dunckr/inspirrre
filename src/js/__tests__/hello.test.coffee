jest.dontMock "../templates/hello.coffee"

React = require "react/addons"
TestUtils = React.addons.TestUtils

describe "adfasdf", ->

  it "adfasdf", ->
    Hello = require "../templates/hello"
    hello = TestUtils.renderIntoDocument <Hello />
    title = TestUtils.findRenderedDOMComponentWithTag(hello, "h1")
    expect(title.getDOMNode().textContent).toEqual("asdads")
