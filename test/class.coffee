Collatz = require '../'
expect = require('chai').expect

describe 'the Collatz class', ->

  it 'can be initialized with no parameters', ->
    c = new Collatz()
    expect(c.min is Collatz.prototype.min).to.be.true
    expect(c.max is Collatz.prototype.max).to.be.true

  it 'can be initialized with one parameters', ->
    argone = 100
    c = new Collatz argone
    expect(c.min is Collatz.prototype.min).to.be.true
    expect(c.max is argone).to.be.true

  it 'can be initialized with two parameters', ->
    argone = 5
    argtwo = 100
    c = new Collatz argone, argtwo
    expect(c.min is argone).to.be.true
    expect(c.max is argtwo).to.be.true
