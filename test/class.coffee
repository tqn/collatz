Collatz = require '../'
expect = require('chai').expect

describe 'the Collatz class', ->

  it 'can be initialized with no parameters', ->
    c = new Collatz()
    expect(c.min).to.equal Collatz.prototype.min
    expect(c.max).to.equal Collatz.prototype.max

  it 'can be initialized with one parameters', ->
    argone = 100
    c = new Collatz argone
    expect(c.min).to.equal Collatz.prototype.min
    expect(c.max).to.equal argone

  it 'can be initialized with two parameters', ->
    argone = 5
    argtwo = 100
    c = new Collatz argone, argtwo
    expect(c.min).to.equal argone
    expect(c.max).to.equal argtwo
