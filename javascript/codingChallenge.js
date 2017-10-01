class AgeOrdering {
  namify(arr) {
    return this.sortMaster(arr).map(person => {
      return person[0]
    })
  }

  sortMaster(arr) {
    return arr.sort( (a, b) => {
      return this.sortify(a, b)
    })
  }

  sortify(a, b) {
    if (a[1] < b[1]) return -1
    if (a[1] > b[1]) return 1;
    return 0
  }

  nameAndAgify(arr) {
    return this.sortMaster(arr).map(person => {
      return `${person[0]} (${person[1]})`
    })
  }
}

module.exports = AgeOrdering;
