func someFunction(firstParameterName: Int, secondParameterName: Int) {
}
someFunction(firstParameterName: 1, secondParameterName: 2)


func someFunction(argumentLabel parameterName: Int) {
}


func greet(person: String, from hometown: String) -> String {
  return "Hello \(person)!  Glad you could visit from \(hometown)."
}
print(greet(person: "Bill", from: "Cupertino"))


func someFunction(_ firstParameterName: Int, secondParameterName: Int) {
}
someFunction(1, secondParameterName: 2)


func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6)
someFunction(parameterWithoutDefault: 4)


func arithmeticMean(_ numbers: Double...) -> Double {
  var total: Double = 0
  for number in numbers {
    total += number
  }
  return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
arithmeticMean(3, 8.25, 18.75)


func swapTwoInts(_ a: inout Int, _ b: inout Int) {
  let temporaryA = a
  a = b
  b = temporaryA
}


var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
