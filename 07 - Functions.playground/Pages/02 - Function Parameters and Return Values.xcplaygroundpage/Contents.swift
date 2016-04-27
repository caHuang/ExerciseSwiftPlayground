//: [Previous](@previous)

func sayHelloWorld() -> String {
  return "hello, world"
}

print(sayHelloWorld())


func sayHello(personName: String) -> String {
  let greeting = "Hello, " + personName + "!"
  return greeting
}

func sayHelloAgain(personName: String) -> String {
  return "Hello again, " + personName + "!"
}

func sayHello(personName: String, alreadyGreeted: Bool) -> String {
  if alreadyGreeted {
   return sayHelloAgain(personName)
  } else {
   return sayHello(personName)
  }
}

print(sayHello("Tim", alreadyGreeted: true))


func sayGoodbye(personName: String) {
  print("Goodbye, \(personName)!")
}
sayGoodbye("Dave")


func printAndCount(stringToPrint: String) -> Int {
  print(stringToPrint)
  return stringToPrint.characters.count
}

func printWithoutCounting(stringToPrint: String) {
  printAndCount(stringToPrint)
}

printAndCount("hello, world")
printWithoutCounting("hello, world")


func minMax(array: [Int]) -> (min: Int, max: Int)? {
  if array.isEmpty {
    return nil
  }
  
  var currentMin = array[0]
  var currentMax = array[0]
  for value in array[1..<array.count] {
    if value < currentMin {
      currentMin = value
    } else if value > currentMax {
      currentMax = value
    }
  }
  return (currentMin, currentMax)
}

if let bounds = minMax([8, -6, 2, 109, 3, 71]) {
  print("min is \(bounds.min) and max is \(bounds.max)")
}


//: [Next](@next)
