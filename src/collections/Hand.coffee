class window.Hand extends Backbone.Collection
  model: Card

  initialize: (array, @deck, @isDealer) ->

  hit: ->
    popped = @deck.pop()
    @add(popped)
    # console.log(@scores()[0])
    alert('You lost boy!') if @scores()[0] > 21
    @last()
  
  beenFlipped: false

  stand: ->
    @first().flip() and @beenFlipped = true if @beenFlipped is false
    @hit() if @beenFlipped is true
    @stand() if(@scores()[0] < 17 )
    @compare() if(@scores()[0] >= 17)
    # @hit and console.log(@scores()[0]) while @scores()[0] < 17

  hasAce: -> @reduce (memo, card) ->
    memo or card.get('value') is 1
  , 0

  minScore: -> @reduce (score, card) ->
    score + if card.get 'revealed' then card.get 'value' else 0
  , 0

  compare: ->
    console.log("trigger")
    @trigger 'compare'

  scores: ->
    # The scores are an array of potential scores.
    # Usually, that array contains one element. That is the only score.
    # when there is an ace, it offers you two scores - the original score, and score + 10.
    [@minScore(), @minScore() + 10 * @hasAce()]


