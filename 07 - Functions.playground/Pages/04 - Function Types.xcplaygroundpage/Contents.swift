func addTwoInts(_ a: Int, _ b: Int) -> Int {
  return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
  return a * b
}


func printHelloWorld() {
  print("hello, world")
}


var mathFunction: (Int, Int) -> Int = addTwoInts


print("Result: \(mathFunction(2, 3))")


mathFunction = multiplyTwoInts
print("Result: \(mathFunction(2, 3))")


let anotherMathFunction = addTwoInts

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
  print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)


func stepForward(_ input: Int) -> Int {
  return input + 1
}
func stepBackward(_ input: Int) -> Int {
  return input - 1
}


func chooseStepFunction(backward: Bool) -> (Int) -> Int {
  return backward ? stepBackward : stepForward
}


var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)


print("Counting to zero:")
while currentValue != 0 {
  print("\(currentValue)... ")
  currentValue = moveNearerToZero(currentValue)
}
print("zero!")
