jest.dontMock "../../util/api.coffee"

describe "util/api", ->
  describeClass = require "../../util/api.coffee"
  service = (url, options, cb) ->
    cb()
  subject = new describeClass(service: service)
  request = "TEST"

  it "format the url endpoint", ->
    expect(subject.url(request)).toEqual(
      "http://api.dribbble.com/shots/popular?per_page=10&page=#{request}"
    )

  it "fetches jsonp", ->
    spy = jasmine.createSpy()
    subject.request(request, spy)
    expect(spy).toHaveBeenCalled()
