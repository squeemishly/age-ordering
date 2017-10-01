const assert = require('chai').assert
const AgeOrdering = require('./codingChallenge')

describe('AgeOrdering()', () => {
  before( () => {
    ao = new AgeOrdering
    singleName = [["Boudi", 12]]
    doubleName = [["Boudi", 12], ["Menace", 33]]
    listy = [
              ['Frank', 33],
              ['Stacy', 15],
              ['Juan', 24],
              ['Dom', 32],
              ['Steve', 24],
              ['Jill', 24]
            ]
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

  it('can output a list of names in order by their age', () => {
    assert.deepEqual(["Stacy", "Juan", "Steve", "Jill", "Dom", "Frank"], ao.namify(listy))
  })
})
