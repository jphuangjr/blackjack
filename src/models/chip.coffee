class window.Chip extends Backbone.Model
  initialize: ->
    @set 'chipCount', 100

  win: ->
    localStorage.setItem("chips", @chipCount + 10)
    @chipCount = @chipCount + 10
    console.log("got in win")

  loss: ->
    localStorage.setItem("chips", @chipCount - 5)
    @chipCount = @chipCount - 5
