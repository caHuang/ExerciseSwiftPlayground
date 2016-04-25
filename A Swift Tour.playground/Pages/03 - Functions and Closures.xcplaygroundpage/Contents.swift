//: [Previous](@previous)

//: Functions and Closures
func greet(name: String, day: String) -> String {
  return "Hello \(name), today is \(day)"
}
greet("Bob", day: "Tuesday")

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
  var min = scores[0]
  var max = scores[1]
  var sum = 0
  
  for score in scores {
    if score > max {
      max = score
    } else if score < min {
      min = score
    }
    sum += score
  }
  
  return (min, max, sum)
}

let statistics = calculateStatistics([5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

func sumOf(numbers: Int...) -> Int {
  var sum = 0
  for number in numbers {
    sum += number
  }
  return sum
}
sumOf()
sumOf(42, 597, 12)

func returnFifteen() -> Int {
 var y = 10
  func add() {
    y += 5
  }
  add()
  return y
}
returnFifteen()

func makeIncrementer() -> (Int -> Int) {
  func addOne(number: Int) -> Int {
    return 1 + number
  }
  return addOne
}
var increment = makeIncrementer()
increment(7)

func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
  for item in list {
    if condition(item) {
      return true
    }
  }
  return false
}

func lessThanTen(number: Int) -> Bool {
  return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(numbers, condition: lessThanTen)

numbers.map { (number: Int) -> Int in
  let result = 4 * number
  return result
}

let mappedNumbers = numbers.map({ number in
  3 * number
})
print(mappedNumbers)

let sortedNumbers = numbers.sort{ $0 > $1 }
print(sortedNumbers)

//: [Next](@next)
