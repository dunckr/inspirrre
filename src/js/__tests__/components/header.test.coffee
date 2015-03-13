jest.dontMock "../../components/header.coffee"

React = require "react/addons"
TestUtils = React.addons.TestUtils
Header = require "../../components/header.coffee"

describe "Header", ->

  it "renders",  ->
    subject = TestUtils.renderIntoDocument <Header />
    img = TestUtils.findRenderedDOMComponentWithTag(subject, "img")
    expect(img.getDOMNode().src).toContain("logo")
