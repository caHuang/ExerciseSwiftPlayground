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

let incrementBySeven = makeIncrementor(forIncrement: 7)
incrementBySeven()

incrementByTen()

//: [Next](@next)
