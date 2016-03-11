math = require 'mathjs'

module.exports = class

  min: 2
  max: 10
  odd: math.compile '3n + 1'
  even: math.compile 'n/2'

  constructor: ->
    switch arguments.length
      when 1 then @max = arguments[0]
      when 2
        @min = arguments[0]
        @max = arguments[1]


  run: -> new Promise (resolve, reject) =>
    try resolve @runSync()
    catch e then reject e

  runSync: ->
    scope = n: a, even: @even.eval, odd: @odd.eval
    for a in [@min..@max]
      (->
        while @n isnt 1
          if math.bitAnd(@n, 1) is 0
            @n = @even @
          else
            @n = @odd @
      ).apply n: a, even: @even.eval, odd: @odd.eval
