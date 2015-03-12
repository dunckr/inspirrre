Api = require "../util/api"
Dispatcher = require "../dispatchers/dispatcher"
EventEmitter = require("events").EventEmitter

class Shots extends EventEmitter

  page: 1
  events:
    change: "CHANGE"

  constructor: ->
    @store = []
    @api = new Api()
    @initEvents()
    @request(page: "next")

  initEvents: ->
    Dispatcher.register (data) => @request(data)

  request: (data) ->
    return unless data.page?
    if data.page is "next" then @page++ else @page--
    @api.request @page, (data) =>
      @store = data.shots
      @emitChange()

  emitChange: ->
    @emit(@events.change)

  addChangeListener: (cb) ->
    @on(@events.change, cb)

  removeChangeListener: (cb) ->
    @removeListener(@events.change, cb)

module.exports = Shots
