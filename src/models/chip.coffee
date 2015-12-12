class window.Chip extends Backbone.Model
  initialize: ->

  chipCount: localStorage.getItem("chips") || 100

  win: ->
    localStorage.setItem("chips", @chipCount + 10)
    @chipCount = @chipCount + 10

  loss: ->
    localStorage.setItem("chips", @chipCount - 5)
    @chipCount = @chipCount - 5
