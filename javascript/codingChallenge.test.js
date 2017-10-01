const assert = require('chai').assert
const AgeOrdering = require('./codingChallenge')

describe('AgeOrdering()', () => {
  before( () => {
    ao = new AgeOrdering
    singleName = [["Boudi", 12]]
    doubleName = [["Boudi", 12], ["Menace", 33]]
    doubleNameSingleAge = [["Boudi", 12], ["Menace", 12]]
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

  it('can output a single name with its respective age', () => {
    assert.deepEqual(["Boudi (12)"], ao.nameAndAgify(singleName))
  })

  it('can output two names with their respective ages', () => {
    assert.deepEqual(["Boudi (12)", "Menace (33)"], ao.nameAndAgify(doubleName))
  })

  it('can output a list of names with their respective ages', () => {
    assert.deepEqual(["Stacy (15)", "Juan (24)", "Steve (24)", "Jill (24)", "Dom (32)", "Frank (33)"], ao.nameAndAgify(listy))
  })

  it('can return a hash of of people by age for a single person', () => {
    assert.deepEqual({"12": ["Boudi"]}, ao.hashify(singleName))
  })

  it('can return a hash of of people by age for two people with different ages', () => {
    assert.deepEqual({"12": ["Boudi"], "33": ["Menace"]}, ao.hashify(doubleName))
  })

  it('can return a hash of of people by age for two people with the same age', () => {
    assert.deepEqual({"12": ["Boudi", "Menace"]}, ao.hashify(doubleNameSingleAge))
  })

  it('can return a hash of of people by age for a list of people', () => {
    assert.deepEqual({"15": ["Stacy"], "24": ["Juan", "Steve", "Jill"], "32": ["Dom"], "33": ["Frank"]}, ao.hashify(listy))
  })
})
