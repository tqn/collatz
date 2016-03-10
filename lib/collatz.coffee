math = require 'mathjs'

module.exports = class

  odd: math.compile '3n + 1'
  even: math.compile 'n/2'

  constructor: (@max = 10) ->

  run: -> new Promise (resolve, reject) =>
    try resolve @runSync()
    catch e then reject e

  runSync: ->
    min = 2
    scope = n: a, even: @even.eval, odd: @odd.eval
    for a in [2..@max]
      (->
        while @n isnt 1
          if math.mod @n, 2 is 0
            @n = @even @
          else
            @n = @odd @
      ).apply n: a, even: @even.eval, odd: @odd.eval
