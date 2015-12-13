class window.ChipView extends Backbone.View

  # template: _.template '<h2>100 Chips</h2>'

  # template: _.template '<h2>100 Chips</h2>'
  template: _.template '<h2><%= chipCount %></h2>'
  
  initialize:-> 
    @render()
    

  render: ->
    @$el.html @template @model.attributes


    # Edit this page. TODO: template