# TODO: Refactor this model to use an internal Game Model instead
# of containing the game logic directly.
class window.App extends Backbone.Model
  initialize: ->
    @set 'playerScorer', playerScorer = new Chip()
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
    playerScore = @get("playerHand").scoresMax()
    dealerScore = @get("dealerHand").scoresMax() 
    console.log(playerScore, dealerScore)
    @trigger "render"
    alert("You win") && @get("playerScorer").win() if playerScore < 21 and playerScore > dealerScore and playerScore != dealerScore or dealerScore > 21
    alert("Dealer win") if dealerScore < 21 and dealerScore > playerScore and dealerScore != playerScore or playerScore > 21 or dealerScore == playerScore
