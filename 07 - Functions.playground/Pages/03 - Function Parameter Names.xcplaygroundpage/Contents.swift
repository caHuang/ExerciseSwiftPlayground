//: [Previous](@previous)

func someFunction(firstParameterName: Int, secondParameterName: Int) {
}
someFunction(1, secondParameterName: 2)


func someFunction(externalParameterName localParameterName: Int) {
}
someFunction(externalParameterName: 1)


func sayHello(to person: String, and anotherPerson: String) -> String {
  return "Hello \(person) and \(anotherPerson)!"
}
print(sayHello(to: "Bill", and: "Ted"))


func someFunction(firstParameterName: Int, _ secondParameterName: Int) {
}
someFunction(1, 2)


func someFunction(parameterWithDefault: Int = 12) {
}
someFunction(6)
someFunction()


func arithmeticMean(numbers: Double...) -> Double {
  var total: Double = 0
  for number in numbers {
    total += number
  }
  return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)


func swapTwoInts(inout a: Int, inout _ b: Int) {
  let temporaryA = a
  a = b
  b = temporaryA
}


var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")

//: [Next](@next)
