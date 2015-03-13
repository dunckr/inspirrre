jest.dontMock "../../components/modal.coffee"

React = require "react/addons"
TestUtils = React.addons.TestUtils
Modal = require "../../components/modal.coffee"

describe "Modal", ->

  describe ".render", ->

    it "renders hidden",  ->
      subject = TestUtils.renderIntoDocument <Modal />
      divs = TestUtils.scryRenderedDOMComponentsWithTag(subject, "div")
      expect(divs[0].getDOMNode().className).toBe("modal hidden")
