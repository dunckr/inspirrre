jsonp = require "jsonp"

class Api

  number: 10

  constructor: (options) ->
    @service = options.service ? jsonp

  url: (page) ->
    "http://api.dribbble.com/shots/popular?per_page=#{@number}&page=#{page}"

  request: (page, cb) ->
    @service @url(page), {}, (err, data) ->
      cb(data)

module.exports = Api

