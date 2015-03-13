jest.dontMock "../../components/list.coffee"
jest.dontMock "../../components/item.coffee"

React = require "react/addons"
TestUtils = React.addons.TestUtils
List = require "../../components/list.coffee"

describe "Item", ->

  it "renders",  ->
    items = [
      image_url: "test"
    ]
    subject = TestUtils.renderIntoDocument <List items={items}/>
    img = TestUtils.scryRenderedDOMComponentsWithTag(subject, "img")
    expect(img[0].getDOMNode().src).toContain(items[0].image_url)
