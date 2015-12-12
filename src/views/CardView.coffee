class window.CardView extends Backbone.View
  className: 'card'
  # tagName: 'img'
  # template: _.template '<%= rankName %> of <%= suitName %>'
  template: _.template '<div class="card2" style = "background-image: url(\'img/cards/<%=rankName%>-<%=suitName%>.png\'); background-size: contain;"></div>'
  # template: _.template '<img class="card" src="img/cards/<%= rankName %>-<%= suitName %>.png">'


  initialize: -> @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @model.attributes
    @$el.addClass 'covered' unless @model.get 'revealed'

