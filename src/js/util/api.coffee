jsonp = require "jsonp"

class Api

  number: 10

  url: (page) ->
    "http://api.dribbble.com/shots/popular?per_page=#{@number}5&page=#{page}"

  request: (page, cb) ->
    jsonp @url(page), {}, (err, data) ->
      cb(data)

module.exports = Api

