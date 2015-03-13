jest.dontMock "../../components/item.coffee"

React = require "react/addons"
TestUtils = React.addons.TestUtils
Item = require "../../components/item.coffee"

describe "Item", ->

  it "renders",  ->
    item =
      image_url: "test"
    subject = TestUtils.renderIntoDocument <Item item={item}/>
    img = TestUtils.findRenderedDOMComponentWithTag(subject, "img")
    expect(img.getDOMNode().src).toContain(item.image_url)
