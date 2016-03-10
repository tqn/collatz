Collatz = require '../'

describe 'collatz conjecture test', ->

  describe 'defaulting to 10', ->
    @slow 50
    @timeout 5000

    it 'can run async', ->
      c = new Collatz()
      return c.run()

    it 'can run sync', ->
      c = new Collatz()
      c.runSync()

  describe 'running until 1000', ->
    @slow 2000
    @timeout 5000

    it 'can run async', ->
      c = new Collatz 1000
      return c.run()

    it 'can run sync', ->
      c = new Collatz 1000
      c.runSync()
