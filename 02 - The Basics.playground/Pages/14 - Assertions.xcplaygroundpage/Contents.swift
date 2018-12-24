//: [Previous](@previous)

let age = -3
assert(age >= 0, "A person's age can't be less than zero.")
assert(age >= 0)

if age > 10 {
  print("You can ride the roller-coaster or the ferris wheel.")
} else if age > 0 {
  print("You can ride the ferris wheel.")
} else {
  assertionFailure("A person's age can't be less than zero.")
}


let index = -1
// In the implementation of a subscript...
precondition(index > 0, "Index must be greater than zero.")

//: [Next](@next)
