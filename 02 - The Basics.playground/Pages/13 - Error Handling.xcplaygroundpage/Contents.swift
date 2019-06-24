func canThrowAnError() throws {
  // this function may or may not throw an error
}


do {
  try canThrowAnError()
  // no error was thrown
} catch {
  // an error was thrown
}


enum SandwichError: Error {
  case outOfCleanDishes
  case missingIngredients(String)
}

func eatASandwich() {
  // ...
}

func washDishes() {
  // ...
}

func buyGroceries(_: String) {
  // ...
}

func makeASandwich() throws {
  // ...
}

do {
  try makeASandwich()
  eatASandwich()
} catch SandwichError.outOfCleanDishes {
  washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
  buyGroceries(ingredients)
}
