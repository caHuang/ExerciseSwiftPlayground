//: [Previous](@previous)

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backwards(s1: String, s2: String) -> Bool {
  return s1 > s2
}

var reversed = names.sort(backwards)

reversed = names.sort() { $0 > $1 }

reversed = names.sort { $0 > $1 }


let digitNames = [
  0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
  5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
]
let numbers = [16, 58, 510]

let strings = numbers.map {
  (number) -> String in
  var number = number
  var output = ""
  while number > 0 {
    output = digitNames[number % 10]! + output
    number /= 10
  }
  return output
}


//: [Next](@next)
