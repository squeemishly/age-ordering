class AgeOrdering {
  namify(arr) {
    const sorted = arr.sort( (a, b) => {
      if (a[1] < b[1]) return -1
      if (a[1] > b[1]) return 1;
      return 0
    })
    return sorted.map(person => {
      return person[0]
    })
  }
}

module.exports = AgeOrdering;
