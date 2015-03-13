jest.dontMock "../../components/footer.coffee"

React = require "react/addons"
TestUtils = React.addons.TestUtils
Footer = require "../../components/footer.coffee"

describe "Footer", ->

  it "renders",  ->
    subject = TestUtils.renderIntoDocument <Footer />
    div = TestUtils.findRenderedDOMComponentWithTag(subject, "div")
    expect(div.getDOMNode().className).toBe("footer")

