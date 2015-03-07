#jest.dontMock '../AppCatalogItem.coffee'

#React = require('react/addons')
#TestUtils = React.addons.TestUtils
#CatalogItem = require('../AppCatalogItem.coffee')
#AppActions = require("#{SCRIPTS}/actions/AppActions.coffee")

#describe 'CatalogItem', ->
  #it 'render',  ->
    #fakeItem =
      #id: "FakeItem"
      #title: "FakeItem 1"
      #summary: 'This is an fake Item'
      #description: 'Lorem ipsum dolor sit amet consecteture adipisicing elit. Duciums, commod.'
      #img: ''
      #cost: 100

    #addToCart = TestUtils.renderIntoDocument <CatalogItem item={fakeItem}/>
    #title = TestUtils.findRenderedDOMComponentWithTag(addToCart, 'h4')
    #expect(title.getDOMNode().textContent).toEqual('FakeItem 1')

