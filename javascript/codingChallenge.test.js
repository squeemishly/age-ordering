const assert = require('chai').assert
const AgeOrdering = require('./codingChallenge')

describe('AgeOrdering()', () => {
  before( () => {
    ao = new AgeOrdering
    singleName = [["Boudi", 12]]
    doubleName = [["Boudi", 12], ["Menace", 33]]
  })

  it('exists', () => {
    assert(ao)
  })

  it('can output a single name', () => {
    assert.deepEqual(["Boudi"], ao.namify(singleName))
  })

  it('can output a two names', () => {
    assert.deepEqual(["Boudi", "Menace"], ao.namify(doubleName))
  })
})
