CssSnippetsView = require './css-snippets-view'

module.exports =
  cssSnippetsView: null

  activate: (state) ->
    @cssSnippetsView = new CssSnippetsView(state.cssSnippetsViewState)

  deactivate: ->
    @cssSnippetsView.destroy()

  serialize: ->
    cssSnippetsViewState: @cssSnippetsView.serialize()
