jest.dontMock "../../stores/shots.coffee"

describe "stores/shots", ->
  describeClass = require "../../stores/shots.coffee"
  subject = new describeClass()

  describe ".constructor", ->

    it "requests data", ->
      expect(subject.page).toEqual(2)

  describe ".request", ->

    it "does not request without a page", ->
      spyOn(subject, "api")
      subject.request({})
      expect(subject.api).not.toHaveBeenCalled()

  describe ".addChangeListener", ->

    it "listens to changes", ->
      spy = jasmine.createSpy()
      subject.addChangeListener(spy)
      subject.emitChange()
      expect(spy).toHaveBeenCalled()

  describe ".removeChangeListener", ->

    it "stops listening to changes", ->
      spy = jasmine.createSpy()
      subject.addChangeListener(spy)
      subject.removeChangeListener(spy)
      subject.emitChange()
      expect(spy).not.toHaveBeenCalled()
