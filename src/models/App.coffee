# TODO: Refactor this model to use an internal Game Model instead
# of containing the game logic directly.
class window.App extends Backbone.Model
  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()
    @get('dealerHand').on 'compare': => 
      console.log("got here")
      @compare()
     

  compare: ->
    console.log(@get("playerHand").scores()[0])
    console.log(@get("dealerHand").scores()[0])  
    