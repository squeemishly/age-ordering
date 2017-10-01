const assert = require('chai').assert
const AgeOrdering = require('./codingChallenge')

describe('AgeOrdering()', () => {
  before( () => {
    ao = new AgeOrdering
  })

  it('exists', () => {
    assert(ao)
  })
})
