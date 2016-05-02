//: [Previous](@previous)

func makeIncrementor(forIncrement amount: Int) -> () -> Int {
  var runningTotal = 0
  func incrementor() -> Int {
    runningTotal += amount
    return runningTotal
  }
  return incrementor
}

let incrementByTen = makeIncrementor(forIncrement: 10)
incrementByTen()
incrementByTen()
incrementByTen()
incrementByTen()

let alsoIncrementByTen = incrementByTen
alsoIncrementByTen()

//: [Next](@next)
