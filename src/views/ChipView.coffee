class window.ChipView extends Backbone.View

  template: _.template '<h2>100 Chips</h2>'

  initialize:-> 
    @render()

  render: ->
    @$el.html @template


    # Edit this page. TODO: template