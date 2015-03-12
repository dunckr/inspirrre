Api = require "../util/api"
Dispatcher = require "../dispatchers/dispatcher"
EventEmitter = require("events").EventEmitter

class Shots extends EventEmitter

  page: 1
  events:
    change: "CHANGE"

  constructor: ->
    @api = new Api()
    @initEvents()

  initEvents: ->
    Dispatcher.register (data) =>
      return unless data.page?
      if data.page is "next" then @page++ else @page--
      @api.request @page, (data) =>
        @store = data.shots
        @emitChange()

  emitChange: ->
    console.log "emitChange"
    @emit(@events.change)

  addChangeListener: (cb) ->
    console.log "change listener..."
    @on(@events.change, cb)

  removeChangeListener: (cb) ->
    @removeListener(@events.change, cb)

module.exports = Shots
