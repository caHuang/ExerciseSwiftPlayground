let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)


var serverResponseCode: Int? = 404
serverResponseCode = nil


var surveyAnswer: String?


if convertedNumber != nil {
  print("convertedNumber contains some integer value.")
}


if convertedNumber != nil {
  print("convertedNumber has an integer value of \(convertedNumber!).")
}


if let actualNumber = Int(possibleNumber) {
  print("\'\(possibleNumber)\' has an integer value of \(actualNumber)")
} else {
  print("\'\(possibleNumber)\' could not be converted to an integer")
}


if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
  print("\(firstNumber) < \(secondNumber)")
}

if let firstNumber = Int("4") {
  if let secondNumber = Int("42") {
    if firstNumber < secondNumber && secondNumber < 100 {
      print("\(firstNumber) < \(secondNumber) < 100")
    }
  }
}


let possibleString: String? = "An optional string."
let forcedString: String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString


if assumedString != nil {
  print(assumedString)
}


if let definiteString = assumedString {
  print(definiteString)
}
