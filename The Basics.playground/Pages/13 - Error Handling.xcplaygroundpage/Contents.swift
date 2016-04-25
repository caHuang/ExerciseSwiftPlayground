//: [Previous](@previous)

func canThrowAnError() throws {
  // this function may or may not throw an error
}

do {
  try canThrowAnError()
  // no error was thrown
} catch {
  // an error was thrown
}


func makeASandwich() throws {
  // ...
}

//do {
//  try makeASandwich()
//  eatASandwich()
//} catch Error.OutOfCleanDishes {
//  washDishes()
//} catch Error.MissingIngredients(let ingredients) {
//  buyGroceries(ingredients)
//}

//: [Next](@next)
