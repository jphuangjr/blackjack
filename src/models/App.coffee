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
    @get('playerHand').on 'compare': => 
      console.log("got here")
      @compare()
     

  compare: ->
    playerScore = @get("playerHand").scores()[0]
    dealerScore = @get("dealerHand").scores()[0] 
    console.log(playerScore, dealerScore)
    alert("You win") if playerScore < 21 and playerScore > dealerScore and playerScore != dealerScore or dealerScore > 21
    alert("Dealer win") if dealerScore < 21 and dealerScore > playerScore and dealerScore != playerScore or playerScore > 21
